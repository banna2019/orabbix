#/bin/bash

source /home/oracle/.bash_profile


java -Duser.language=en -Duser.country=US -Dlog4j.configuration=./conf/log4j.properties -cp $(for i in lib/*.jar ; do echo -n $i: ; done).:./orabbix-1.2.3.jar com.smartmarmot.orabbix.bootstrap start ./conf/config.props &



