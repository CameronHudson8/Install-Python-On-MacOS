#! /bin/bash

brew update
brew install python

cp ~/.bash_profile ~./bash_profile.pysave

tee -a ~/.bash_profile << END
# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
export PATH=$PATH:~/bin
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/usr/local/share/python
export PATH=$PATH:~/Library/Python/3.6/bin
alias python='python3'
alias pip='pip3'
alias idle='idle3'
END

source ~/.bash_profile