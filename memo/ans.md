Q3
?create table tmp as select id, start_station_id, end_station_id from trip;

これでcity をとってこれる
select city from trip, station where start_station_id=station_id;
