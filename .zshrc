#############################
#                           #
# Auto-gunerated by Plugins #
#                           #
#############################


# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ $TERM_PROGRAM != "WarpTerminal" ]]; then
    if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
      source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
    fi
    # To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
    [[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
fi

export PICO_SDK_PATH=/Users/aromia/Creation/Programming/GitHubRepo/pico/pico-sdk

if [ "$(arch)" = "arm64" ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
else
    eval "$(/usr/local/bin/brew shellenv)"
fi


###################
#                 #
# Auto-Completion #
#                 #
###################


if [[ $TERM_PROGRAM != "WarpTerminal" ]]; then
    autoload -Uz compinit
    for dump in ~/.zcompdump(N.mh+24); do
        compinit
    done
    compinit -C
    _comp_options+=(globdots) # With hidden files
    source $ZDOTDIR/plugins/completion.zsh
fi


###########
#         #
# History #
#         #
###########


setopt INC_APPEND_HISTORY
export SAVEHIST=1000000
export HISTSIZE=2000


###################
#                 #
# Plugin Settings #
#                 #
###################


if [[ $TERM_PROGRAM != "WarpTerminal" ]]; then
    source $ZDOTDIR/themes/powerlevel10k/powerlevel10k.zsh-theme
    source $ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
    source $ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
    # Vim keybinding
    bindkey -v
    export KEYTIMEOUT=1
fi


#######################
#                     #
# Aliases and Scripts #
#                     #
#######################


# Aliases for VScode
source $ZDOTDIR/usr/alias-files/vscode_aliases.zsh

# Aliases for Obsidian
source $ZDOTDIR/usr/alias-files/obsidian_aliases.zsh

# Aliases for cli tools
source $ZDOTDIR/usr/alias-files/cli_aliases.zsh

# Aliases for misc stuff
source $ZDOTDIR/usr/alias-files/misc_aliases.zsh

# Aliases for git
source $ZDOTDIR/usr/alias-files/git_aliases.zsh

# Importing scripts
source $ZDOTDIR/usr/scripts/python_package.zsh
source $ZDOTDIR/usr/scripts/pdfrange.zsh
source $ZDOTDIR/usr/scripts/pdfpng.zsh
source $ZDOTDIR/usr/scripts/cfile.zsh
source $ZDOTDIR/usr/scripts/githubraw.zsh
source $ZDOTDIR/usr/scripts/fsleep.zsh
source $ZDOTDIR/usr/scripts/gettime.zsh


#############################
#                           #
# Auto-generated by Plugins #
#                           #
#############################


eval "$(zoxide init zsh)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# pnpm
export PNPM_HOME="/Users/aromia/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# bun completions
[ -s "/Users/aromia/.bun/_bun" ] && source "/Users/aromia/.bun/_bun"
