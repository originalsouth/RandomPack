using PackageCompiler

source = abspath(joinpath(@__DIR__, ".."))
target = abspath(joinpath(@__DIR__, "release"))
header_files = [abspath(joinpath(@__DIR__, "RandomPack.h"))]
precompile_files = [abspath(joinpath(@__DIR__, "precompile.jl"))]

rm(target; recursive = true, force = true)
PackageCompiler.create_library(source,
                               target;
                               lib_name="RandomPack",
                               incremental=false,
                               filter_stdlibs=false,
                               precompile_execution_file = precompile_files,
                               precompile_statements_file = precompile_files,
                               header_files = header_files,
                              )
