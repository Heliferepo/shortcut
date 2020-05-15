#!/bin/zsh
# Shell script to go easier through a machine
# Attention : this script must be called using "source" (or '.')

function find_path
{
    pathto=$(grep "^$1:" /home/$(whoami)/.bin/shortcut/ShortcutList)
    if [[ $pathto == "" ]]
    then
	echo -e "\e[31mShortcut $1 doesn't exit\e[0m"
        return 1
    else
	pathto=(${pathto//:/ })
	pathto=${pathto[2]}
    fi
    return 0
}

function remove_line
{
    sed -i "/^$1:/d" /home/$(whoami)/.bin/shortcut/ShortcutList
}

if [[ $1 == "" ]]
then
    cat /home/$(whoami)/.bin/shortcut/ShortcutUsage
else
    while [[ $1 != "" ]]
    do
	case $1 in

	    "-g" | "--goto")
		pathto=""
                find_path "$2"
		if [[ $pathto != "" ]]
		then
		    cd "$pathto/$3"
                else
                    return 1
		fi
		shift
		;;

	    "-s" | "--set")
		grep $2 /home/$(whoami)/.bin/shortcut/ShortcutList > /dev/null
		if [[ $? == 0 ]]
		then
		    remove_line $2
		fi
		echo "$2:"$(pwd) >> /home/$(whoami)/.bin/shortcut/ShortcutList
		shift
		;;

	    "-r" | "--remove")
		remove_line "$2"
		shift
		;;

	    "-l" | "--list")
		cat /home/$(whoami)/.bin/shortcut/ShortcutList
		;;

	    "-h" | "--help")
		cat /home/$(whoami)/.bin/shortcut/ShortcutUsage
		;;

	    \?)
		echo -e "\e[31mInvalid option : -$1\e[0m"
		return 0
		;;

	esac
	shift

    done
fi
