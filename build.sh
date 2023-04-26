make clean all
SIMPLE_BENCHMARKS="benchmark-branch benchmark-core benchmark-thrash benchmark-thrash2 lcg-test"
for bm in $SIMPLE_BENCHMARKS
do
    cp ./$bm ./build/
    cp ./run-on-linux.sh ./build/
done