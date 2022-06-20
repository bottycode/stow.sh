#!/bin/sh

stow() {
	:
}

delete() {
	:
}

restow() {
	:
}

show_version() {
	echo "stow (show.sh) version 0.0.1"
}

show_help() {
	cat << "EOF"
stow (show.sh) version 2.3.1

SYNOPSIS:

    stow [OPTION ...] [-D|-S|-R] PACKAGE ... [-D|-S|-R] PACKAGE ...

OPTIONS:

    -d DIR, --dir=DIR     Set stow dir to DIR (default is current dir)
    -t DIR, --target=DIR  Set target to DIR (default is parent of stow dir)

    -S, --stow            Stow the package names that follow this option
    -D, --delete          Unstow the package names that follow this option
    -R, --restow          Restow (like stow -D followed by stow -S)

    --ignore=REGEX        Ignore files ending in this Perl regex
    --defer=REGEX         Don't stow files beginning with this Perl regex
                          if the file is already stowed to another package
    --override=REGEX      Force stowing files beginning with this Perl regex
                          if the file is already stowed to another package
    --adopt               (Use with care!)  Import existing files into stow package
                          from target.  Please read docs before using.
    -p, --compat          Use legacy algorithm for unstowing

    -n, --no, --simulate  Do not actually make any filesystem changes
    -v, --verbose[=N]     Increase verbosity (levels are from 0 to 5;
                            -v or --verbose adds 1; --verbose=N sets level)
    -V, --version         Show stow version number
    -h, --help            Show this help

Report bugs to: <https://github.com/bottycode/stow.sh/issues>
Stow home page: <https://github.com/bottycode/stow.sh>
EOF
}

main() {
	# Default values for arguments.
	arg_no="0"
	arg_dir="$(pwd)"
	arg_target="$(cd ..; pwd)"
	arg_verbose="0"
	arg_stow=""
	arg_delete=""
	arg_restow=""
	arg_adopt="0"
	arg_no_folding="0"
	arg_ignore=""
	arg_defer=""
	arg_override=""
	arg_dotfiles="0"
	arg_version="0"
	arg_help="0"

	# Parse arguments.

}

main "$@"