#!/bin/bash
set -e

(while true; do echo "service up" | nc -l 9811; done)&
