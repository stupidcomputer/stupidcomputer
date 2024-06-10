#!/bin/sh

if [ "$1" = "-h" ]; then
	cat <<EOF
ssg.sh

-h: print help
-s: spin up an http server with python3 -m http.server
EOF
	exit
fi

if [ "$1" = "-s" ]; then
	python3 -m http.server -d output
	exit
fi

files=$(find -type f | grep -v "output/")
directories=$(find -type d)

IFS='
'

mkdir -p output

for i in $directories; do
	if [ ! "$i" = "./output" ]; then
		mkdir -p "output/$i"
	fi
done

# only commits with 'CHANGE' in them go into the changelog
git log --grep 'CHANGE' >> output/changelog.rst

set -x
for i in $files; do
	without_extension=${i%.*}
	case $i in
		*.rst)
			pandoc -s --template=./template.html -f rst -t html -o "output/$without_extension.html" "$without_extension.rst"
			;;
		"./ssg.sh") # don't copy this file
			;;
		"./shell.nix") # ditto
			;;
		"./template.html")
			;;
		*)
			cp "$i" "output/$i"
			;;
	esac
done
set +x