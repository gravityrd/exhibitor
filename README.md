## DESCRIPTION
Exhibitor is a supervisor system for ZooKeeper.

## QUICK HOW TO

* Use `./gradlew` to bootstrap gradle (2.2.1).
* Get JDK8  http://www.webupd8.org/2014/03/how-to-install-oracle-java-8-in-debian.html
* Then `./gradlew jar` to get `exhibitor-standalone/build/libs/exhibitor-standalone-1.5.3-SNAPSHOT.jar`.
* `mkdir -p /usr/local/exhibitor /usr/local/exhibitor/config_data`
* `mv exhibitor-standalone/build/libs/exhibitor-standalone-1.5.3-SNAPSHOT.jar /usr/local/exhibitor/exhibitor.jar`
* `mv scripts/run.sh /usr/local/exhibitor/run.sh`
For Debian (pre-systemd):
* `mv scripts/exhibitor.initscript /etc/init.d/exhibitor`
* `update-rc.d exhibitor defaults`

* Check the scripts, edit if needed.
* `/etc/init.d/exhibitor start`
* Go to `http://$(hostname -f):5252/exhibitor/v1/ui/index.html` 

## DETAILS

Please see the doc at https://github.com/Netflix/exhibitor/wiki

## BUILDING

Exhibitor is built via Gradle (http://www.gradle.org). To build from the command line:
    ./gradlew build

## ARTIFACTS

Exhibitor binaries are published to Maven Central. Please see the docs for details.

## MAILING LIST

There is an Exhibitor mailing list. Join here: http://groups.google.com/group/exhibitor-users

## AUTHOR

Jordan Zimmerman (jzimmerman@netflix.com)

## LICENSE

Copyright 2012 Netflix, Inc.

Licensed under the Apache License, Version 2.0 (the “License”); you may not use this file except in
compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the License is
distributed on an “AS IS” BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
implied. See the License for the specific language governing permissions and limitations under the
License.
