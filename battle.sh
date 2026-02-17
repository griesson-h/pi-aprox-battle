mkdir bin
gcc -o bin/main_c main.c
g++ -o bin/main_cpp main.cpp
hcc -o bin/main_hc main.hc
rustc -o bin/main_rs main.rs
zig build-exe main.zig
mv main bin/main_zig
cd main.go
go build .
mv pi-approx-battle ../bin/main_go
cd ..

# compare
mkdir results
/usr/bin/time -o results/c -f "%es" ./bin/main_c
/usr/bin/time -o results/cpp -f "%es" ./bin/main_cpp
/usr/bin/time -o results/hc -f "%es" ./bin/main_hc
/usr/bin/time -o results/rs -f "%es" ./bin/main_rs
/usr/bin/time -o results/zig -f "%es" ./bin/main_zig
/usr/bin/time -o results/py -f "%es" python main.py
/usr/bin/time -o results/js -f "%es" node main.js
/usr/bin/time -o results/ts -f "%es" node main.ts
/usr/bin/time -o results/java -f "%es" java main.java
cd main.cs
/usr/bin/time -o ../results/cs -f "%es" dotnet run
cd ..
cd results
echo $(cat c; printf "\nc\n"; cat cpp; printf "\ncpp\n"; cat hc; printf "\nhc\n"; cat rs; printf "\nrs\n"; cat zig; printf "\nzig\n"; cat py; printf "\npy\n"; cat js; printf "\njs\n"; cat ts; printf "\nts\n"; cat java; printf "\njava\n"; cat cs; printf "\ncs\n") > results.txt # i couldnt think of any normal way of doing this
cd ..
