gcc -c -fpic dnc_wrapper.cc
gcc -shared -o libdnc_wrapper.so dnc_wrapper.o