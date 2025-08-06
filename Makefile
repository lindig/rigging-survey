#
#
#

CLEAN += rigging.csv
CLEAN += rigging.db
CLEAN += export.csv
CLEAN += stats.csv

all: rigging.db export.csv

clean:
	rm -f $(CLEAN)

rigging.db: rigging.csv rigging.sql
	rm -f rigging.db
	sqlite3 rigging.db < rigging.sql

rigging.csv: survey.csv
	grep -v ',,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,' $< | ./rigging.awk > $@

export.csv: rigging.db export.sql
	sqlite3 rigging.db < export.sql
	


