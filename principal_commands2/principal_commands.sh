

Main commands





-------------------------------------------------------------------------------------------------------------------------------------------------------
STEPS: 

GIT + GITHUB


INSTALL
	# sudo apt-get update && sudo apt-get upgrade -y
	# apt list --upgradable
    # sudo apt install git-all
    # sudo apt install git
    # sudo apt-get install git-core git-svn 


Checking the installation
    # git --version




Add key to github
    # sudo apt install openssh-client
    # ssh-keygen -t rsa -C pedro-akira@hotimail
    # cd ~
    # cd .ssh
    # ls -lath 
        id_rsa       -> key privave **not share
        id_rsa.pub   -> key public
    
    Add key to github 
        # setting -> SSH and GPG keys -> SSH keys -> New: name of computer and paste the **id_rsa.pub

    #ssh -T git@github.com

    **why add key to github? 
    to access the repos via ssh, if not put key you need access repos using https and all time need put user and password
    ref: https://www.youtube.com/watch?v=tjZEplICR5g






Configuration git
    show configurations
    # git config --list
    # git config --global user.name "PedroAkira"
    # git config --global user.email "pedro-akira@hotimail"
    # git config --list

    **why config name and email? because when you clone a repo and make commit command he will ask to put your name and email







Create new repo local and in github
    # mkdir repotest && cd repotest

    # echo "# repotest" >> README.md

    will create .git directory 
    # git init 

    # git status 
    # git add README.md
    # git commit -m "first commit"
    # git branch -M main


    Create repo in github with the same name in mkdir 

    # git remote add origin https://github.com/pedroAkiraDanno/repotest.git
    # git push -u origin main





Get an existing repository 
    # mkdir test && cd test

    Go to github, choose the repositori you want clone and get the link with  HTTPS(need user and password to push) or SSH(need key to push)
    # git clone https://github.com/pedroAkiraDanno/Oracle_Database2.git
    
    # git remote add origin https://github.com/pedroAkiraDanno/repotest.git
    # git branch -M main
    # git push -u origin main








-------------------------------------------------------------------------------------------------------------------------------------------------------
abstract: local GIT


See the version of git and if is install 
    # git --version


Show more commands options
    # git --help


Alias to one command
    # git config --global alias.s status
    # git config --global alias.l log
    Show all config 
    # git config --global -l
    Use alias 
    #  git s
    #  git l 


REALEASES 
v0.1.0
v0.2.0
v0.3.0





-------------------------------------------------------------------------------------------------------------------------------------------------------
















































































---END 
