#!/bin/bash
theme_main_color="\[\e[38;5;15m\]"
theme_main_bgcolor="\[\e[48;5;162m\]"
theme_second_color="\[\e[0;37m\]"
theme_second_bgcolor="\[\e[48;5;238m\]"
theme_third_color="\[\e[38;5;208m\]"
theme_highlight="\[\e[38;5;162m\]\[\e[48;5;238m\]"
theme_ps1_suffix="\[\e[0;90m\]»\[\e[0;37m\]»\[\e[0;97m\]» \[\e[0m\]"

green="\[\e[38;5;112m\]"
SCM_GIT_SHOW_MINIMAL_INFO=false
SCM_THEME_PROMPT_DIRTY="${red} ✗"
SCM_THEME_PROMPT_CLEAN="${bold_green} ✓"
SCM_THEME_PROMPT_PREFIX="${green} ("
SCM_THEME_PROMPT_SUFFIX="${green})"

GIT_THEME_PROMPT_DIRTY="${red} ✗"
GIT_THEME_PROMPT_CLEAN="${bold_green} ✓"
GIT_THEME_PROMPT_PREFIX="${green} ("
GIT_THEME_PROMPT_SUFFIX="${green})"

function git_prompt_info {
    git_prompt_vars
    echo -e "${SCM_PREFIX}${SCM_BRANCH}${SCM_STATE}${SCM_SUFFIX}"
}

function prompt_command() {
    PS1="${theme_main_color}${theme_main_bgcolor} \u ${theme_second_color}${theme_second_bgcolor} \h[${theme_highlight}\j${theme_second_color}${theme_second_bgcolor}] \t ${normal}${theme_third_color} \w$(scm_prompt_info) ${theme_ps1_suffix}"
}

safe_append_prompt_command prompt_command
