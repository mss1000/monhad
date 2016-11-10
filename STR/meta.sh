#! /bin/sh

M=META-INF/MANIFEST.MF
mkdir tmp
cd tmp
cp ../$1 .
JAR=$1

jar xf ${JAR}

sed -e '/Main-Class/d' ${M} >> ${M}.new 
mv ${M}.new  ${M}

jar cvfm ${JAR} ${M}

mv ${JAR} ..
cd ..
rm -r tmp
