#!/bin/sh

echo "Beginning install..."

CWD=`pwd`
POKE_DIR="$HOME/.poke"
TMPL_DIR="$CWD/tmpl"

# Check if a command exists
cmd_exists(){
	command -v "$1" >/dev/null ;
}

# Create ~/.poke directory
if [ ! -d "$POKE_DIR" ]; then
	echo "Creating directory $POKE_DIR"
	mkdir $POKE_DIR
fi

# Move templated
echo "Copying templates."
cp -rf $TMPL_DIR $POKE_DIR

# Install to bin directory
BIN_DIR="$HOME/bin"
if [ -d "$BIN_DIR" ]; then
	cp "$CWD/poke" $BIN_DIR
else
	BIN_DIR="/usr/bin/"
	sudo cp "$CWD/poke" $BIN_DIR
fi
echo "Installed poke to $BIN_DIR"

if cmd_exists poke ; then
	echo "Successfully installed poke"
else
	echo "Error installing poke. Need to add $BIN_DIR to PATH."
fi

