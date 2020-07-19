#!/bin/sh

# show that these compile separately and link together
cc -c callyolo.c
cc -c yolo.c -o libyolo.a

cc -o hello libyolo.a callyolo.o

./hello

# do rust things, see build.rs for how we provided linked library to rustc

cargo run
