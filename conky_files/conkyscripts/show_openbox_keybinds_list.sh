#!/bin/bash -u

# script to collect all keybinds from openbox's rc.xml and print 
# them to a file with tabs and color (escape sequences) inserted
# script made by ohnonot and published under the wtfpl license: http://www.wtfpl.net/about/
# http://crunchbang.org/forums/viewtopic.php?id=29997
# modified by Brian Peregrine to print output directly to screen (for use in conky)

c=0  # the color modifier. can be between 0 and 5 - just try!
h=95 # maximum height of output
w=70 # desired width of output

hxselect 'keybind' <"$HOME/.config/openbox/rc.xml" | hxunent | hxpipe | grep -v -e '^-.n *$' |\
sed -e 's/urxvt.*-e//g' -e 's/^)keybind/end keybind/g' -e '/^).*/d' -e 's/^-//g' -e '/^(keybind/d' \
-e 's/Akey CDATA /\n/g' -e 's/A.*ame CDATA //g' -e '/^.action/d' -e 's/\\n *//g' -e '/^(command/d' \
-e 's/^(//g' -e '/^Execute/d' -e 's/^ *//g' -e '/^menu$/d' -e '/^to$/d' |\
perl -00 -ple 's/\s*\n\s*/ /g' |\
sed -e '/^$/d' -e 's/ end keybind$//g' -e 's/ end keybind$/\nend-keychain/g' \
> /tmp/keybindstmp

line=0
while read -r x _
do
	((line++))
	dots=''
	count=${#x}
		for (( i=13; i >= count ; i-- ))
		do
			dots+='.'
			# if you prefer blank space to dots:
			# dots+=' ' Unicode Character NO-BREAK SPACE U+00A0 generated with ctrl+shift+u(release u)+a0(enter)
		done
		sed -i "${line}s/${x}/[1m[3$((line%3 + c))m${x}/" /tmp/keybindstmp
		sed -i \
		"${line}s/${x}\ /${x}[22m[3$((line%3 + c))m${dots}[1m[3$((line%3 + c))m/" \
		/tmp/keybindstmp
		# produces a list with lines in 3 alternating colors.
done < '/tmp/keybindstmp'

cat /tmp/keybindstmp |\
cut -b 1-$(( w + 28 )) | \
perl -pe 'chomp if eof' \
> "$HOME/.config/openbox/keybindlist"
# cut text to desired width. 
# $w + 28: width has to add up including escape characters
# chomp if eof: cuts the last newline + thus saves 1 line output space
rm /tmp/keybindstmp

# now create a file with a geometry string
echo -n "${w}x" > "$HOME/.config/openbox/keybindlistgeom"
if (( line > h ))
then
	echo -n "$h" >> "$HOME/.config/openbox/keybindlistgeom"
else
	echo -n "$line" >> "$HOME/.config/openbox/keybindlistgeom"
fi

# now output the file to screen
cat $HOME/.config/openbox/keybindlistgeom
