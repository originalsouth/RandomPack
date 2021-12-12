# RandomPack
Exploring the Julia PackageCompiler 

## Building
Assuming you are in the folder where `README.md` remains, you can build the library by running:
```
make -C build
```
If you are running into https://github.com/JuliaLang/PackageCompiler.jl/issues/469 run the makefile as such:
```
make JULIA=/path/to/julia-*/bin/julia -C build
```
Upon executing the makefile you probably want to get a coffee.

## Running
Because we are running with a locally generated library run the compiled program as such:
```
LD_LIBRARY_PATH=build/release/lib/ build/RandomPack
```
to observe a bunch of potatos.
