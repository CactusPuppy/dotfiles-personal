
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Load shell dotfiles, and then some:
for file in ~/.{aliases,extra,bash_prompt,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

# Enable tab completion for `g` by marking it as an alias for `git`
if type _git &> /dev/null; then
	complete -o default -o nospace -F _git g;
fi;