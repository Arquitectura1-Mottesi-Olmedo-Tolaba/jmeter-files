#!/bin/bash

sh populate-codes.sh
jmeter -n -t test_min.jmx -l test-min.csv -e -o test-min/
