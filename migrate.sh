#!/bin/bash

for i in `ls /migrate/sql`
do 
  echo "CURRENT DB: $i"
  db=db_$i;
  migrate.linux-amd64 -source file:///migrate/sql/$i -database "${!db}" --verbose up
done

