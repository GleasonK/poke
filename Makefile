install:
	./install.sh

clean:
	rm -rf ${HOME}/.poke
	rm `which poke`

test:
	echo 'Test'
