#!/bin/bash

curl -O http://repo.typesafe.com/typesafe/ivy-releases/org.scala-sbt/sbt-launch/0.13.5/sbt-launch.jar

cat > sbt << EOF
SBT_OPTS="-Xms512M -Xmx1536M -Xss1M -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256M"
java $SBT_OPTS -jar `dirname $0`/sbt-launch.jar "\$@"
EOF

chmod u+x sbt

