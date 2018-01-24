_find_up_for () {
    local dir=`pwd`
    until `test $dir == "/" -o -f "$dir/$1"` ; do
        dir=`dirname $dir`
    done
    echo $dir
}

_laravel5_get_command_list () {
    # 自定義的一個命令 => composer dump-autoload && php artisan db:seed
    echo seed
    php "$1/artisan" --no-ansi | sed "1,/Available commands/d" | awk '/^ +[a-z]+/ { print $1 }'
}

_art_completion () {
    local dir=`_find_up_for artisan`

    if [[ -f "$dir/artisan" ]] ; then

        local all cur
        all=`_laravel5_get_command_list $dir`

        # Ref: http://stackoverflow.com/questions/2805412/bash-completion-for-maven-escapes-colon/12495727#12495727
        _get_comp_words_by_ref -n : cur
        COMPREPLY=( $(compgen -W "${all}" -- "${cur}") )
        __ltrim_colon_completions "$cur"

        return 0
    fi
}

artisan () {
    local dir=`_find_up_for artisan`

    if [[ -f "$dir/artisan" ]] ; then
        if [[ "$#" == "1" &&  "$1" == seed ]] ; then
            composer dump-autoload && php artisan db:seed
        else
            php "$dir/artisan" "$@"
        fi
    fi
}

complete -F _art_completion artisan
