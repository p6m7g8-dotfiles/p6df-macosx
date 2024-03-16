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

  brew tap homebrew/cask-versions
  brew tap homebrew/services

  ## Remote Desktop Compat
  brew install --cask xquartz
  brew install freerdp

  ## Amazon
  brew install --cask amazon-workspaces
  brew install --cask amazon-chime

  ## Google
  brew install --cask google-chrome

  ## Mac
  brew install --cask dash
  brew install --cask iterm2
  brew install --cask skitch

  # A/V
  brew install --cask vlc
  brew install --cask screenflow

  ## Other
  brew install --cask bartender
  brew install --cask dropbox
  brew install --cask brave-browser
  brew install --cask firefox
  brew install --cask gitx

  brew install --cask slack
  brew install --cask squidman
  #  brew install --cask vagrant
  #  brew install --cask virtualbox
  #  brew install --cask vmware-fusion
  brew install --cask wireshark

  p6_return_Void
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
  p6_file_symlink "$P6_DFZ_SRC_P6M7G8_DOTFILES_DIR/p6df-macosx/share/.hosts" ".ssh/.hosts"

  p6_return_void
}
