for file in ~/.{path,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Add tab completion for many Bash commands
if which brew &> /dev/null && [ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]; then
	# Ensure existing Homebrew v1 completions continue to work
	export BASH_COMPLETION_COMPAT_DIR="$(brew --prefix)/etc/bash_completion.d";
	source "$(brew --prefix)/etc/profile.d/bash_completion.sh";
elif [ -f /etc/bash_completion ]; then
	source /etc/bash_completion;
fi;



# alias ll="ls -al"
# alias k="/usr/local/bin/kubectl"
# alias kns='kubectl config set-context --current --namespace'
source <(kubectl completion bash)
alias v="velero"
alias cc="clean-containers.sh"
alias ri="clean-images.sh"
# alias pi="ssh 'pi@192.168.1.42'"
# alias wiki="open http://192.168.1.42/mediawiki"
# make -f ~/hc/Makefile k8s_dev

export KUBECONFIG="/Users/a294952/.aws/kubeconfig"

# alias tips='vi /Users/a294952/misc/tips'
alias netnotes='vi /Users/a294952/networking'
alias ktips='vi /Users/a294952/misc/ktips'
# alias ah-eks='source /Users/a294952/.virtualenv/ah_eks/bin/activate'
# alias infadmin="export AWS_PROFILE=aetna-digital-aws-inf_admin && env | grep AWS"
# alias labadmin="export AWS_PROFILE=aetna-digital-aws-lab_admin && env | grep AWS"
# alias npradmin="export AWS_PROFILE=aetna-digital-aws-npr_admin && env | grep AWS"
# alias prdadmin="export AWS_PROFILE=aetna-digital-aws-prd_admin && env | grep AWS"
# alias stressadmin="export AWS_PROFILE=aetna-digital-aws-stress_admin && env | grep AWS"
# alias uatadmin="export AWS_PROFILE=aetna-digital-aws-uat_admin && env | grep AWS"
# alias set_dev="export AWS_PROFILE=dev && env | grep AWS"
# alias set_lab="export AWS_PROFILE=lab && env | grep AWS"
# alias set_qa="export AWS_PROFILE=qa && env | grep AWS"

export PATH=$HOME/bin:/Users/a294952/hc:$PATH
# export KUBECONFIG=~/.aws/kubeconfig
export VAULT_ADDR=https://vault.hci.aetna.com
export AWS_SDK_LOAD_CONFIG=1
export TERM=xterm-256color

#minikube environment variables
#export MINIKUBE_IN_STYLE=false
