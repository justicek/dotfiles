#!/bin/bash

awk -F, '{if($20 == "1") $20="Y"}' OFS=, $1