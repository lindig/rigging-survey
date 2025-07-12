#! /usr/bin/awk -f
#

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

