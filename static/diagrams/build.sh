#!/usr/bin/env bash

# get base dir
baseDir=$(cd $(dirname $BASH_SOURCE) && pwd)
echo "baseDir=${baseDir}"

echo "start to convert ${baseDir}/Hessian2Output-writeObject.diag"
seqdiag -Tsvg ${baseDir}/Hessian2Output-writeObject.diag
cp -f ${baseDir}/Hessian2Output-writeObject.svg ${baseDir}/../images/marshal/

echo "start to convert ${baseDir}/Hessian2Input-readObject.diag"
seqdiag -Tsvg ${baseDir}/Hessian2Input-readObject.diag
cp -f ${baseDir}/Hessian2Input-readObject.svg ${baseDir}/../images/marshal/

echo "start to convert ${baseDir}/hessian-AbstractSerializerFactory.puml"
plantuml -tsvg ${baseDir}/hessian-AbstractSerializerFactory.puml
cp -f ${baseDir}/hessian-AbstractSerializerFactory.svg ${baseDir}/../images/marshal/

echo "start to convert ${baseDir}/hessian-AbstractHessianOutput.puml"
plantuml -tsvg ${baseDir}/hessian-AbstractHessianOutput.puml
cp -f ${baseDir}/hessian-AbstractHessianOutput.svg ${baseDir}/../images/marshal/

echo "start to convert ${baseDir}/hessian-AbstractHessianInput.puml"
plantuml -tsvg ${baseDir}/hessian-AbstractHessianInput.puml
cp -f ${baseDir}/hessian-AbstractHessianInput.svg ${baseDir}/../images/marshal/

echo "start to convert ${baseDir}/hessian-Serializer.puml"
plantuml -tsvg ${baseDir}/hessian-Serializer.puml
cp -f ${baseDir}/hessian-Serializer.svg ${baseDir}/../images/marshal/

echo "start to convert ${baseDir}/hessian-Deserializer.puml"
plantuml -tsvg ${baseDir}/hessian-Deserializer.puml
cp -f ${baseDir}/hessian-Deserializer.svg ${baseDir}/../images/marshal/

echo "start to convert ${baseDir}/hessian-architecture.puml"
plantuml -tsvg ${baseDir}/hessian-architecture.puml
cp -f ${baseDir}/hessian-architecture.svg ${baseDir}/../images/marshal/
