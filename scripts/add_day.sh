#!/usr/bin/env sh

# usage: scripts/add_day.sh YEAR DAY

YEAR="$1"
DAY=day_"$2"
FOLDER="$YEAR/$DAY"

# copy folder
cp -r scripts/day_x "$FOLDER"

# rename
mv "$FOLDER/day_x.rb" "$FOLDER/$DAY.rb"

# replace "day_x" in puzzle
sed -i '' "s/day_x/$DAY/" "$FOLDER/puzzle.rb"

# copy spec folder
cp -r scripts/spec "$FOLDER/spec"

# rename spec file
mv "$FOLDER/spec/day_x_spec.rb" "$FOLDER/spec/${DAY}_spec.rb"

# replace "day_x" and "day x" in spec file
sed -i '' "s/day_x/$DAY/g; s/day\ x/day\ $2/g" "$FOLDER/spec/${DAY}_spec.rb"
