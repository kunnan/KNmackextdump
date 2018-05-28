CC=clang
CFLAGS=-fobjc-arc -fobjc-link-runtime -framework Foundation src/libcapstone.a

build/mackextdump:
	mkdir -p build;
	# rm -rf build/mackextdump
	$(CC) $(CFLAGS) src/*.m -o $@

.PHONY:install
install:build/mackextdump
	mkdir -p ~/bin
	cp build/mackextdump ~/bin/mackextdump

.PHONY:uninstall
uninstall:
	rm ~/bin/mackextdump

.PHONY:clean
clean:
	rm -rf build