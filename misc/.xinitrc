# SSH agent
pgrep -x ssh-agent > /dev/null || ssh-agent -a $SSH_AUTH_SOCK 
