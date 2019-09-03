select * from usta;
select * from utrip;
select * from usta, utrip where (usta.id=utrip.start_sta_id or usta.id=utrip.end_sta_id) group by city;
