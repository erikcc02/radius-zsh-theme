# radius.zsh-theme

# Use with a dark background and 256-color terminal!
# basead in 'fino' zsh theme

ZSH_THEME_GIT_PROMPT_ADDED="${FG[040]} ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="${FG[154]} ✹"
ZSH_THEME_GIT_PROMPT_DELETED="${FG[202]} x"
ZSH_THEME_GIT_PROMPT_RENAMED="${FG[163]} ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="${FG[255]} ═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="${FG[202]} ✱"
ZSH_THEME_GIT_PROMPT_STASHED="${FG[202]} ⚑"
ZSH_THEME_GIT_PROMPT_PREFIX=" ${FG[242]}on%{$reset_color%} ${FG[255]}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="${FG[040]} ✔"
ZSH_THEME_GIT_PROMPT_DIRTY=""

function prompt_char {
  echo "$"
}

function host_name {
  if [[ -z "${DESK_NAME}" ]]; then
    echo "$HOST"
  else
    echo "☶ ${DESK_NAME}"
  fi
}

local git_info='$(git_prompt_info)'
local git_status='$(git_prompt_status)'
local prompt_char='$(prompt_char)'

PROMPT="${FG[242]}╭─${FG[147]}%n ${FG[242]}at ${FG[033]}$(host_name) ${FG[242]}in %B${FG[154]}%~%b${git_info}${git_status}%{$reset_color%}
${FG[242]}╰─${prompt_char}${FG[250]} "