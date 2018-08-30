--todo copy streets to schema
--todo fix setup to split to primary and secondary
--todo import jefferson parcels
--todo create fake meter data
--todo copy ticket data to established schema

create schema gc_workshop;

create table gc_workshop.fake_power (
gid serial primary key,
location character varying(50),
geom geometry(multilinestring, 4326)); 

insert into gc_workshop.fake_power (location, geom)
select case when left(fullname, 1) = 'A' then 'Aerial' else 'Underground' end as location, st_multi(st_transform(st_offsetcurve(st_linemerge(the_geom), .00009), 4326)) as geom from tiger_data.al_edges 
where countyfp = (select (lpad(co_code::text, 3, '0'))::varchar from tiger_data.county_all_lookup where state = 'AL' and name = 'Jefferson')
and (mtfcc = 'S1200' or left(fullname, 1) in ('U', 'A', 'I'))
group by left(fullname, 1), the_geom;

create table gc_workshop.fpco01_200 (
gid serial primary key,
geom geometry(multipolygon, 4326));

insert into gc_workshop.fpco01_200 (geom)
select st_multi(st_subdivide((st_dump(st_union((st_buffer(geom::geography, 200))::geometry))).geom)) as geom from gc_workshop.fake_power

--create indexes here

select count(*), date_part('month', creation) as ticketmonth from gc_workshop.ticket t
join gc_workshop.fpco01_200 f on st_intersects(t.workareabuffer, f.geom)
group by date_part('month', creation)

with monthlycount as (
select date_part('month', creation), count(distinct t.number) as monthcount from gc_workshop.ticket t
join gc_workshop.fpco01_200 f on st_intersects(t.workareabuffer, f.geom)
group by date_part('month', creation))

select avg(monthcount) from monthlycount

select st_union((st_buffer(geom::geography, 200))::geometry) as geom, fullname from gc_workshop.jeffco_streets where fullname = 'LAKESHORE DR'
group by fullname

select st_npoints((st_dump(st_union((st_buffer(geom::geography, 60.96))::geometry))).geom) as geom from gc_workshop.fake_power
order by st_npoints((st_dump(st_union((st_buffer(geom::geography, 60.96))::geometry))).geom) desc limit 1

select count(distinct number) , date_part('month', creation) as tktmonth
from gc_workshop.ticket t
join gc_workshop.fpco01_200 f on st_intersects(t.workareabuffer, f.geom)
group by date_part('month', creation)

create index fpco01_200_geohash_idx 
on gc_workshop.fpco01_200
(st_geohash(geom))
cluster gc_workshop.fpco01_200 using fpco01_200_geohash_idx 

create index ticket_geohash_idx 
on gc_workshop.ticket
(st_geohash(workareabuffer));
cluster gc_workshop.ticket using ticket_geohash_idx;