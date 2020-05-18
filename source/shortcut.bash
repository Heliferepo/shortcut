#!/bin/zsh
# Shell script to go easier through a machine
# Attention : this script must be called using "source" (or '.')

function find_path
{
    pathto=$(grep "^$1:" /home/$(whoami)/.bin/shortcut/ressources/ShortcutList)
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
    sed -i "/^$1:/d" /home/$(whoami)/.bin/shortcut/ressources/ShortcutList
}

if [[ $1 == "" ]]
then
    cat /home/$(whoami)/.bin/shortcut/ressources/ShortcutUsage
else
    while [[ $1 != "" ]]
    if [ ! "$PS1" ] ;
    then
        echo -e "\e[31mThe script is not sourced right now please you the command like that : . shortcut [argument]\e[0m"
        exit
    fi
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
		grep $2 /home/$(whoami)/.bin/shortcut/ressources/ShortcutList > /dev/null
		if [[ $? == 0 ]]
		then
		    remove_line $2
		fi
		echo "$2:"$(pwd) >> /home/$(whoami)/.bin/shortcut/ressources/ShortcutList
		shift
		;;

	    "-r" | "--remove")
		remove_line "$2"
		shift
		;;

	    "-l" | "--list")
		cat /home/$(whoami)/.bin/shortcut/ressources/ShortcutList
		;;

	    "-h" | "--help")
		cat /home/$(whoami)/.bin/shortcut/ressources/ShortcutUsage
		;;

	    *)
		echo -e "\e[31mInvalid option : -$1\e[0m"
		return 0
		;;

	esac
	shift

    done
fi
