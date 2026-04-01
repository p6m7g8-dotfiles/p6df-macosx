# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::macosx::deps()
#
#>
######################################################################
p6df::modules::macosx::deps() {
  ModuleDeps=(
    p6m7g8-dotfiles/p6df-alfred
    p6m7g8-dotfiles/p6df-zoom
    p6m7g8-dotfiles/p6macosx
  )
}

######################################################################
#<
#
# Function: p6df::modules::macosx::external::brews()
#
#>
######################################################################
p6df::modules::macosx::external::brews() {

  ## Remote Desktop Compat
  p6df::core::homebrew::cli::brew::install --cask xquartz
  p6df::core::homebrew::cli::brew::install freerdp

  ## Amazon
  p6df::core::homebrew::cli::brew::install --cask amazon-workspaces
  p6df::core::homebrew::cli::brew::install --cask amazon-chime

  ## Browsers
  p6df::core::homebrew::cli::brew::install --cask google-chrome
  p6df::core::homebrew::cli::brew::install --cask brave-browser
  p6df::core::homebrew::cli::brew::install --cask firefox

  ## Mac
#  p6df::core::homebrew::cli::brew::install --cask dash
  p6df::core::homebrew::cli::brew::install --cask iterm2
  p6df::core::homebrew::cli::brew::install --cask shottr

  # A/V
#  p6df::core::homebrew::cli::brew::install --cask vlc
  p6df::core::homebrew::cli::brew::install --cask screenflow
  ## Other
#  p6df::core::homebrew::cli::brew::install --cask bartender
#  p6df::core::homebrew::cli::brew::install --cask dropbox
#  p6df::core::homebrew::cli::brew::install --cask gitx

#  p6df::core::homebrew::cli::brew::install --cask slack
#  p6df::core::homebrew::cli::brew::install --cask squidman
#  p6df::core::homebrew::cli::brew::install --cask vagrant
#  p6df::core::homebrew::cli::brew::install --cask virtualbox
#  p6df::core::homebrew::cli::brew::install --cask vmware-fusion
  p6df::core::homebrew::cli::brew::install --cask wireshark

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::macosx::langs()
#
#>
######################################################################
p6df::modules::macosx::langs() {

  uv pip install iterm2

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::macosx::path::init()
#
#  Environment:	 P6_DFZ_SRC_P6M7G8_DOTFILES_DIR
#>
######################################################################
p6df::modules::macosx::path::init() {

  local _module="$1"
  local _dir="$2"
  p6_path_if "$P6_DFZ_SRC_P6M7G8_DOTFILES_DIR/p6df-macosx/share/.iterm2"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::macosx::init(_module, dir)
#
#  Args:
#	_module -
#	dir -
#
#>
######################################################################
p6df::modules::macosx::init() {
  local _module="$1"
  local dir="$2"

  p6_file_load "$dir/share/.iterm2_shell_integration.zsh"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::macosx::home::symlinks()
#
#  Environment:	 HOME P6_DFZ_SRC_P6M7G8_DOTFILES_DIR
#>
######################################################################
p6df::modules::macosx::home::symlinks() {

  p6_file_symlink "$P6_DFZ_SRC_P6M7G8_DOTFILES_DIR/p6df-macosx/share/.cups" "$HOME/.cups"
  p6_file_symlink "$P6_DFZ_SRC_P6M7G8_DOTFILES_DIR/p6df-macosx/share/.ssh" "$HOME/.ssh"
  p6_file_symlink "$P6_DFZ_SRC_P6M7G8_DOTFILES_DIR/p6df-macosx/share/.iterm2" "$HOME/.iterm2"
  p6_file_symlink "$P6_DFZ_SRC_P6M7G8_DOTFILES_DIR/p6df-macosx/share/.iterm2_shell_integration.zsh" "$HOME/.iterm2_shell_integration.zsh"

  p6_return_void
}

######################################################################
#<
#
# Function: words macosx $MACOSX_DEPLOYMENT_TARGET = p6df::modules::macosx::profile::mod()
#
#  Returns:
#	words - macosx $MACOSX_DEPLOYMENT_TARGET
#
#  Environment:	 MACOSX_DEPLOYMENT_TARGET
#>
######################################################################
p6df::modules::macosx::profile::mod() {

  p6_return_words 'macosx' "$"
}

