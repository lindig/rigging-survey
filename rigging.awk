#! /usr/bin/awk -f
#
# The original data is not reapatign basic information for every seat in
# a boat. The script remembers it and emits it for those seats such that
# each row becomes self contained.

BEGIN {
  FS = ",";
  OFS = ","
  n = 9
}

{
  if (NR == 1) { 
    next
  }

  if ($3 == "") {
    for (i = 1; i <= n; i++) {
      $i = prev[i]
    }
    print $0
  } else {
    for (i = 1; i <= n; i++) {
      prev[i] = $i
    }
    print $0
  }
  next
}

