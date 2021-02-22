all:
	g++ genlicense.cpp -lcryptopp -o genlicense
	g++ genmasterpair.cpp -lcryptopp -o genmasterpair
	g++ gensecondarypair.cpp -lcryptopp -o gensecondarypair
	g++ verifylicense.cpp -lcryptopp -o verifylicense
	g++ genxmllicense.cpp -lcryptopp -o genxmllicense
	g++ -I/usr/include/libxml2 verifyxmllicense.cpp -lcryptopp -lxml2 -o verifyxmllicense

.PHONY clean:
clean:
	rm -f genlicense genmasterpair gensecondarypair verifylicense genxmllicense verifyxmllicense