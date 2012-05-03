#!/bin/sh

./macosx-settings.sh

ls -A \
  | grep -v .git \
  | grep -v README \
  | grep -v macosx-settings.sh \
  | grep -v $(basename $0) \
  | xargs -J % cp -r % ..
