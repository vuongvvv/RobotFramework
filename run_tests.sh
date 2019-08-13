#!/usr/bin/env bash
set -e

echo -e "Executing robot tests"
robot --variable env:production --loglevel TRACE -i regression --outputdir testreports /robot/web/testcases/go_bear