# radius.zsh-theme

# Use with a dark background and 256-color terminal!
# basead in 'fino' zsh theme

function virtualenv_prompt_info {
  [[ -n ${VIRTUAL_ENV} ]] || return
  echo "${ZSH_THEME_VIRTUALENV_PREFIX:=[}${VIRTUAL_ENV:t}${ZSH_THEME_VIRTUALENV_SUFFIX:=]}"
}

function prompt_char {
  echo "$"
}

function host_name {
  if [[ -z "${DESK_NAME}" ]]; then
    echo "$HOST"
  else
    echo "⚟ ${DESK_NAME}"
  fi
}

local git_info='$(git_prompt_info)'
local virtualenv_info='$(virtualenv_prompt_info)'
local prompt_char='$(prompt_char)'

PROMPT="╭─${FG[165]}%n ${FG[242]}at ${FG[033]}$(host_name) ${FG[242]}in %B${FG[226]}%~%b${git_info}${virtualenv_info}
╰─${prompt_char}%{$reset_color%} "

ZSH_THEME_GIT_PROMPT_PREFIX=" ${FG[242]}on%{$reset_color%} ${FG[255]}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="${FG[202]} ☡"
ZSH_THEME_GIT_PROMPT_CLEAN="${FG[040]} ✔"

export VIRTUAL_ENV_DISABLE_PROMPT=1
ZSH_THEME_VIRTUALENV_PREFIX=" ${FG[242]}using${FG[243]} «"
ZSH_THEME_VIRTUALENV_SUFFIX="»%{$reset_color%}"