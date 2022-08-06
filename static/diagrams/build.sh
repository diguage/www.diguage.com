#!/usr/bin/env bash

# get base dir
baseDir=$(cd $(dirname $BASH_SOURCE) && pwd)
echo "baseDir=${baseDir}"

params="-tsvg -SdefaultFontSize=20 -StitleFontSize=36 -SfooterFontSize=20 -SdefaultFontName='Source Han Serif SC' "
echo ${params}

echo "start to convert ${baseDir}/Hessian2Output-writeObject.diag"
seqdiag -Tsvg ${baseDir}/Hessian2Output-writeObject.diag
cp -f ${baseDir}/Hessian2Output-writeObject.svg ${baseDir}/../images/marshal/

echo "start to convert ${baseDir}/Hessian2Input-readObject.diag"
seqdiag -Tsvg ${baseDir}/Hessian2Input-readObject.diag
cp -f ${baseDir}/Hessian2Input-readObject.svg ${baseDir}/../images/marshal/

echo "start to convert ${baseDir}/hessian-AbstractSerializerFactory.puml"
plantuml ${params} ${baseDir}/hessian-AbstractSerializerFactory.puml
cp -f ${baseDir}/hessian-AbstractSerializerFactory.svg ${baseDir}/../images/marshal/

echo "start to convert ${baseDir}/hessian-AbstractHessianOutput.puml"
plantuml ${params} ${baseDir}/hessian-AbstractHessianOutput.puml
cp -f ${baseDir}/hessian-AbstractHessianOutput.svg ${baseDir}/../images/marshal/

echo "start to convert ${baseDir}/hessian-AbstractHessianInput.puml"
plantuml ${params} ${baseDir}/hessian-AbstractHessianInput.puml
cp -f ${baseDir}/hessian-AbstractHessianInput.svg ${baseDir}/../images/marshal/

echo "start to convert ${baseDir}/hessian-Serializer.puml"
plantuml ${params} ${baseDir}/hessian-Serializer.puml
cp -f ${baseDir}/hessian-Serializer.svg ${baseDir}/../images/marshal/

echo "start to convert ${baseDir}/hessian-Deserializer.puml"
plantuml ${params} ${baseDir}/hessian-Deserializer.puml
cp -f ${baseDir}/hessian-Deserializer.svg ${baseDir}/../images/marshal/

echo "start to convert ${baseDir}/hessian-architecture.puml"
plantuml ${params} ${baseDir}/hessian-architecture.puml
cp -f ${baseDir}/hessian-architecture.svg ${baseDir}/../images/marshal/

echo "start to convert ${baseDir}/hessian-bytecode.puml"
plantuml ${params} ${baseDir}/hessian-bytecode.puml
cp -f ${baseDir}/hessian-bytecode.svg ${baseDir}/../images/marshal/