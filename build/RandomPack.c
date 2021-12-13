#include <stdio.h>

#include "RandomPack.h"
#include "julia_init.h"

const int I = 1<<18;

int main(int argc, char** argv)
{
    init_julia(argc, argv);
    const char *data[I];
    for(int i=0;i<I;i++) data[i] = random_pack("potato");
    for(int i=0;i<I;i++) puts(data[i]);
    for(int i=0;i<I;i++) if(random_pack_release(data[i])) puts("Error: object cannot be released");
    shutdown_julia(0);
}
