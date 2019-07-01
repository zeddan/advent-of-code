#!/usr/bin/env sh

DAY=day_"$1"

cp -r day_x "$DAY"
mv "$DAY"/day_x.rb "$DAY"/"$DAY".rb
sed -i '' "s/day_x/$DAY/" "$DAY"/puzzle.rb
cp spec/day_x_spec.rb spec/"$DAY"_spec.rb
sed -i '' "s/day_x/$DAY/g; s/day\ x/day\ $1/g" spec/"$DAY"_spec.rb
