!#/bin/bash
pushd src/edu/stanford/facs
mkdir  classes
mv transform/TestTransforms.java .
javac -d classes  transform/*.java -source 1.7 -target 1.7
mv TestTransforms.java transform
java -version
cd classes
jar cf ../../../../../transform.jar edu
cd ..
rm -r classes
popd
