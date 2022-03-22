######################################################################
#<
#
# Function: p6df::modules::macosx::deps()
#
#>
######################################################################
p6df::modules::macosx::deps() {
  ModuleDeps=(
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
akamai: CLI toolkit for working with Akamai's APIs'
angular-cli: CLI tool for Angular
athenacli: CLI tool for AWS Athena service
autorestic: High level CLI utility for restic

azure-cli: Microsoft Azure CLI 2.0

bosh-cli: Cloud Foundry BOSH CLI v2

cloudflare-wrangler: CLI tool for Cloudflare Workers
cloudflared: Cloudflare Tunnel client (formerly Argo Tunnel)

drone-cli: Command-line client for the Drone continuous integration server

athenacli: CLI tool for AWS Athena service
aws-cfn-tools: Client for Amazon CloudFormation web service
aws-console: Command-line to use AWS CLI credentials to launch the AWS console in a browser
aws-elasticbeanstalk: Client for Amazon Elastic Beanstalk web service
aws-es-proxy: Small proxy between HTTP client and AWS Elasticsearch
aws-shell: Integrated shell for working with the AWS CLI
aws-sam-cli: AWS SAM CLI 🐿 is a tool for local development and testing of Serverless applications
aws-sam-cli-beta-cdk: AWS SAM CLI 🐿 is a tool for local development and testing of Serverless applications. This is a pre-release version of AWS SAM CLI
aws-sam-cli-nightly: AWS SAM CLI 🐿 is a tool for local development and testing of Serverless applications. This is a pre-release version of AWS SAM CLI
aws-sam-cli-rc: AWS SAM CLI 🐿 is a tool for local development and testing of Serverless applications
aws-simple-ec2-cli: AWS Simple EC2 CLI is a tool that simplifies the process of launching, connecting and terminating an EC2 instance
copilot-cli: Copilot CLI - build, release and operate your container apps on AWS
awsweeper: CLI tool for cleaning your AWS account
chamber: CLI for managing secrets through AWS SSM Parameter Store
copilot: CLI tool for Amazon ECS and AWS Fargate
fargatecli: CLI for AWS Fargate
gimme-aws-creds: CLI to retrieve AWS credentials from Okta
awless: The Mighty CLI for AWS
aws-vpn-client: AWS Client VPN
session-manager-plugin: Session Manager Plugin for the AWS CLI
elasticwolf: AWS ElasticWolf Client Console

p6df::modules::macosx::external::brew() {

  brew tap homebrew/cask
  brew tap homebrew/cask-versions

  ## Remote Desktop Compat
  brew install --cask xquartz
  brew install freerdp

  ## Amazon
  brew install --cask amazon-workspaces
  brew install --cask amazon-chime

  ## Google
  brew install --cask google-chrome

  ## Mac
  brew install --cask alfred
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
  brew install --cask gitter

  brew install --cask slack
  brew install --cask squidman
  #  brew install --cask vagrant
  #  brew install --cask virtualbox
  #  brew install --cask vmware-fusion
  brew install --cask wireshark
}

######################################################################
#<
#
# Function: p6df::modules::macosx::home::symlink()
#
#>
######################################################################
p6df::modules::macosx::home::symlink() {

  p6_file_symlink "$P6_DFZ_SRC_P6M7G8_DOTFILES_DIR/p6df-macosx/share/.cups" ".cups"

  p6_file_symlink "$P6_DFZ_SRC_P6M7G8_DOTFILES_DIR/p6df-macosx/share/.ssh" ".ssh"
  p6_file_symlink "$P6_DFZ_SRC_P6M7G8_DOTFILES_DIR/p6df-macosx/share/.hosts" ".ssh/.hosts"
}
