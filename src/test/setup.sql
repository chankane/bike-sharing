create database test;


create table usta(
  id integer not null,
  city text,
  PRIMARY KEY (id)
);

create table utrip(
  id integer not null,
  start_sta_id integer,
  end_sta_id integer,
  PRIMARY KEY (id),
  FOREIGN KEY (start_sta_id) REFERENCES usta(id),
  FOREIGN KEY (end_sta_id) REFERENCES usta(id)
);


/* Insert into usta */
insert into usta values(
  1,
  'city1'
);

insert into usta values(
  2,
  'city2'
);

insert into usta values(
  3,
  'city3'
);

insert into usta values(
  4,
  'city1'
);

insert into usta values(
  5,
  'city2'
);

insert into usta values(
  6,
  'city3'
);


/* Insert into utrip */
insert into utrip values(
  1,
  1,
  4
);

insert into utrip values(
  2,
  3,
  6
);

insert into utrip values(
  3,
  4,
  4
);

insert into utrip values(
  4,
  1,
  2
);