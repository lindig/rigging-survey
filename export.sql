.load /Users/lindig/lib/sqlite/crypto


.mode csv
.header on
.once export.csv
select * from rigging;

.mode csv
.header on
.once sculling.csv
select
  Class,
  hex(crypto_md5(Class || Country)) as Crew,
  Country,
  Seat,
  Span,
  OarLength,
  OarInboard,
  OarOutboard
from rigging
where
  Class like "%x"
;

.mode csv
.header on
.once sweep.csv
select
  Class,
  hex(crypto_md5(Class || Country)) as Crew,
  Country,
  Seat,
  Spread,
  OarLength,
  OarInboard,
  OarOutboard
from rigging
where
  Class not like "%x"
;
