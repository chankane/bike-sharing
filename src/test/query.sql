/*count(distinct(utrip.id, city))*/
select
  utrip.id,
  city,
  count(utip.id, city)
from
  utrip,
  usta
where
  usta.id = utrip.start_sta_id
or  usta.id = utrip.end_sta_id
group by
  utrip.id,
  city
;

select
  distinct utrip.id, city
from
  utrip,
  usta
where
  usta.id = utrip.start_sta_id
or  usta.id = utrip.end_sta_id
;

select
  city,
  count(city)
from
  (
    select distinct
      utrip.id,
      city
    from
      utrip,
      usta
    where
      usta.id = utrip.start_sta_id
    or  usta.id = utrip.end_sta_id
  ) as tmp0
group by
  city
;

select
  city,
  cast(cnt as float) / count(tmp0.city) as ratio
from
  (
    select
      city,
      count(city) as cnt,
    from
      (
        select distinct
          utrip.id,
          city
        from
          utrip,
          usta
        where
          usta.id = utrip.start_sta_id
        or  usta.id = utrip.end_sta_id
      ) as tmp0
    group by
      city
  ) as tmp1
order by
  ratio desc,
  city
;
