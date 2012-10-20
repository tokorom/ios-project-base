#!/bin/sh

if [ $# -ne 1 ]; then
  echo "USAGE: change-name.sh YourProjectName"
  exit 1
fi

sed -i -e "s/ProjectBase/$1/g" ProjectBase.xcodeproj/project.pbxproj

mv ProjectBase $1
mv ProjectBase.xcodeproj $1.xcodeproj

exit 0
