#!/bin/bash

sh populate-codes.sh
jmeter -n -t arq_soft.jmx -l arq_soft.csv -e -o arq_soft/