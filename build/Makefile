CC=gcc
JULIA=julia

RandomPack: RandomPack.c RandomPack.h release
	$(CC) -L./release/lib -I./release/include -lRandomPack -O3 RandomPack.c -o RandomPack

release:
	$(JULIA) build.jl

clean:
	-rm -rf release
	-rm -rf RandomPack
