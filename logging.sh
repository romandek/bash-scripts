#/ EXAMPLE USE
#/ log error "This is an error"
#/ log warn "This is a warning"
#/ log info "This is a info"

log(){
	# Copyright (c) 2024 Roman Dek. All Rights Reserved.
	case "$1" in
		ERROR | error) echo 1
			shift
			printf "\033[31m[!] ERROR:::\033[0m %b\n" "$@"
			;;
		WARN | warn)
			shift
			printf "\033[33m[!] WARN:::\033[0m %b\n" "$@"
			;;
		INFO | info)
			shift
			printf "\033[34m[+] INFO:::\033[0m %b\n" "$@"
			;;
		*) echo default
			shift
			printf "\033[34m[+] INFO:::\033[0m %b\n" "$@"
			;;
	esac

}
