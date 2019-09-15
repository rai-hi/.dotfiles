#! /bin/zsh
chgrp -R admin /usr/local/*
chmod -R g+w /usr/local/*
rm ~/Dropbox/Config/zsh/.zcompdump*;
autoload -U compinit && compinit;
autoload -U bashcompinit && bashcompinit;
