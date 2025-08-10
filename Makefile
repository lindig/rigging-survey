#
#
#

CLEAN += rigging.csv
CLEAN += rigging.db
CLEAN += sweep.csv sculling.csv

PNG += x-oarlength.png x-gearing.png x-span.png x-inboard.png
PNG += oarlength.png gearing.png span.png inboard.png

all: rigging.db export.csv stats

README.html: page.theme README.md stats
	theme README.md

clean:
	rm -f $(CLEAN)

stats: export.csv
	./stats.r

rigging.db: rigging.csv rigging.sql
	rm -f rigging.db
	sqlite3 rigging.db < rigging.sql

rigging.csv: survey.csv
	grep -v ',,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,' $< | ./rigging.awk > $@

export.csv: rigging.db export.sql
	sqlite3 rigging.db < export.sql



