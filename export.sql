.mode csv
.header on
.once export.csv
select * from rigging;

.mode csv
.header on
.once stats.csv
select
  Class,
  Span,
  Spread,
  OarLength,
  OarInboard,
  OarOutboard
from rigging
where
  Span is not null or Spread is not null
;
