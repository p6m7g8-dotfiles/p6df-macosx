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
    p6m7g8-dotfiles/p6macosx
  )
}

######################################################################
#<
#
# Function: p6df::modules::macosx::external::brew()
#
#>
######################################################################
p6df::modules::macosx::external::brew() {

  ## Remote Desktop Compat
  p6df::modules::homebrew::cli::brew::install --cask xquartz
  p6df::modules::homebrew::cli::brew::install freerdp

  ## Amazon
  p6df::modules::homebrew::cli::brew::install --cask amazon-workspaces
  p6df::modules::homebrew::cli::brew::install --cask amazon-chime

  ## Browsers
  p6df::modules::homebrew::cli::brew::install --cask google-chrome
  p6df::modules::homebrew::cli::brew::install --cask brave-browser
  p6df::modules::homebrew::cli::brew::install --cask firefox

  ## Mac
  p6df::modules::homebrew::cli::brew::install --cask dash
  p6df::modules::homebrew::cli::brew::install --cask iterm2
  p6df::modules::homebrew::cli::brew::install --cask shottr

  # A/V
  p6df::modules::homebrew::cli::brew::install --cask vlc
  p6df::modules::homebrew::cli::brew::install --cask screenflow
  p6df::modules::homebrew::cli::brew::install --cask zoom

  ## Other
  p6df::modules::homebrew::cli::brew::install --cask bartender
  p6df::modules::homebrew::cli::brew::install --cask dropbox
  p6df::modules::homebrew::cli::brew::install --cask gitx

  p6df::modules::homebrew::cli::brew::install --cask slack
  p6df::modules::homebrew::cli::brew::install --cask squidman
  #  p6df::modules::homebrew::cli::brew::install --cask vagrant
  #  p6df::modules::homebrew::cli::brew::install --cask virtualbox
  #  p6df::modules::homebrew::cli::brew::install --cask vmware-fusion
  p6df::modules::homebrew::cli::brew::install --cask wireshark

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

  pip install iterm2

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
  p6_path_if "$dir/share/.iterm2"
  
  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::macosx::home::symlink()
#
#  Environment:	 P6_DFZ_SRC_P6M7G8_DOTFILES_DIR
#>
######################################################################
p6df::modules::macosx::home::symlink() {

  p6_file_symlink "$P6_DFZ_SRC_P6M7G8_DOTFILES_DIR/p6df-macosx/share/.cups" ".cups"
  p6_file_symlink "$P6_DFZ_SRC_P6M7G8_DOTFILES_DIR/p6df-macosx/share/.ssh" ".ssh"

  p6_return_void
}
