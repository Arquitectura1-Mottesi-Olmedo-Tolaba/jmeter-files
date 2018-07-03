#!/bin/bash

sh populate-codes.sh
jmeter -n -t test.jmx -l test.csv -e -o test/