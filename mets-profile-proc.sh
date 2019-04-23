#!/bin/bash
echo "Generating markdown documentation tables and examples from METS profile"

mkdir -p specification/implementation/metadata/mets/amdsec
mkdir -p specification/implementation/metadata/mets/dmdsec
mkdir -p specification/implementation/metadata/mets/filesec
mkdir -p specification/implementation/metadata/mets/mets-root
mkdir -p specification/implementation/metadata/mets/metshdr
mkdir -p specification/implementation/metadata/mets/structmap
mkdir -p specification/appendices/examples
mkdir -p specification/appendices/requirements
mkdir -p specification/appendices/schema

cd utils/mets-profile-processor
mvn clean package
java -jar target/mets-profile-proc.jar ../../profile/E-ARK-SIP.xml