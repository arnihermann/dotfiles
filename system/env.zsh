# Only set this if we haven't set $EDITOR up somewhere else previously.
if [[ "$EDITOR" == "" ]] ; then
  # Use sublime for my editor.
  # export EDITOR='subl'
  #export EDITOR='mvim -f --nomru -c "au VimLeave * !open -a iTerm"'
fi

if [[ "$GIT_EDITOR" == "" ]] ; then
  #export GIT_EDITOR='mvim -f --nomru -c "au VimLeave * !open -a iTerm"'
fi

# export DOCKER_HOST=tcp://localhost:4243
# eval $(opam config env)
