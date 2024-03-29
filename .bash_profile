
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

# Add `~/bin` to the `$PATH`
export PATH="$PATH:$HOME/bin";

# Load shell dotfiles, and then some:
for file in ~/.{aliases,functions,exports,bash_prompt,binds,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

# Enable tab completion for `g` by marking it as an alias for `git`
test -f ~/git-completion.bash && source $_ && __git_complete g __git_main

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
