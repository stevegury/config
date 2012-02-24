#!/bin/sh
ls -A | grep -v .git | grep -v README | grep -v $(basename $0) | xargs -J % cp -r % ..
