with tickets as (
    select number, geom 
    from ticket_analysis.tickets
    where creation between '5/1/2020 12:00:00 AM' and '5/1/2020 11:59:59 PM'
    and st_isvalid(geom) = true),
    
parcelcheck as (
    select t.number as number, t.geom as geom, 
    case 
        when st_equals(st_collectionextract(st_makevalid(st_snaptogrid(t.geom, .0000001)), 3), st_collectionextract(st_makevalid(st_snaptogrid(st_union(p.geom), .0000001)), 3)) 
        then 'POLYGON - Exact Parcel'
        when st_equals(st_snaptogrid(t.geom, .0000001), st_snaptogrid(st_convexhull(st_union(p.geom)), .0000001)) 
        then 'POLYGON - Joined Parcel'
        else 'POLYGON - Not Converted' 
    END as marksource 
    from tickets t, gcnovers.parcels p
    where st_dimension(t.geom) = 2
    and st_intersects(p.geom, t.geom)
    and st_within(st_collectionextract(st_makevalid(st_snaptogrid(p.geom, .000001)), 3), st_collectionextract(st_makevalid(st_snaptogrid(t.geom,.000001)), 3))
    group by t.number, t.geom),


noparcel as (select number, geom as geom, 'POLYGON - No Parcel'::text as marksource 
             from tickets where 
             st_dimension(geom) = 2
             and
             number not in (select number from parcelcheck)),

addresstickets as (select t.number, t.geom as geom, 'ADDRESS POINT'::text as marksource
             from tickets t, gcverbase00016.addresses a
             where st_dimension(t.geom) = 0
             and 
             st_dwithin(t.geom, a.geom, .00005)),

pointtickets as (select number, geom as geom, 'OTHER POINT'::text as marksource
             from tickets
             where st_dimension(geom) = 0
             and number not in (select number from addresstickets)),

convertedlines as(
    select t.number as number, t.geom as geom, 
    case when count(s.geom) > 1 then 'LINE - street' else 'LINE - exactstreet' end as marksource
    from tickets t, gcverbase00016.streets s
    where 
    st_dimension(t.geom) = 1
    and 
    st_intersects(s.geom, t.geom)
    and 
    st_within(st_snaptogrid(s.geom, .0000001), st_snaptogrid(t.geom, .0000001))
    group by t.number, t.geom),

drawnlines as (
    select number, geom as geom, 'LINE - DRAWN'::text as marksource
    from tickets
    where st_dimension(geom) = 1
    and 
    number not in (select number from convertedlines) ),

alltickets as (select number, st_area((st_collectionextract(st_makevalid(geom), 3))::geography, true) as size, marksource from parcelcheck
              union all
              select number, st_area((st_collectionextract(st_makevalid(geom), 3))::geography, true) as size, marksource from noparcel
              union all
              select number, 0 as size, marksource from addresstickets
              union all
              select number, 0 as size, marksource from pointtickets
              union all
              select number, st_length(geom::geography, true) as size, marksource from convertedlines
              union all
              select number, st_length(geom::geography, true) as size, marksource from drawnlines)

select number, marksource, size from alltickets 
order by marksource, size desc