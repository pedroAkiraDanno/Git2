

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

    
    #Add SSH Key to ssh-agent (privaty key)
        eval `ssh-agent`
        ssh-add ~/.ssh/id_rsa    
    
    Add key to github 
        # setting -> SSH and GPG keys -> SSH keys -> New: name of computer and paste the **id_rsa.pub

    #ssh -T git@github.com

    **why add key to github? 
    to access the repos via ssh, if not put key you need access repos using https and all time need put user and password
    ref: https://www.youtube.com/watch?v=tjZEplICR5g / https://www.youtube.com/watch?v=Vmt0V6a3ppE






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
STEPS2: 

GIT + GITHUB



Tag/REALEASES 
    Tag:
    Listing Your Tags
        # git tag
        # git tag -l
        # git tag --list
        # git tag -l "v1.8.5*"
        

    Creating Tags
        Git supports two types of tags: lightweight and annotated.
        A lightweight tag is very much like a branch that doesnt change— its just a pointer to a specific commit.
        Annotated tags, however, are stored as full objects in the Git database.

    Annotated Tags
        # git tag -a v0.1.0 -m "New version for v0.1.0"
        # git tag


    You can see the tag data along with the commit that was tagged by using the git show command:
        # git show v0.1.0

    Sharing Tags
        By default, the git push command doesnt transfer tags to remote servers. 
        git push origin <tagname>.
        # git push origin v0.1.0

    If you have a lot of tags that you want to push up at once, you can also use the --tags option to the git push command. This will transfer all of your tags to the remote server that are not already there.
        # git push origin --tags

    Checking out Tags
        If you want to view the versions of files a tag is pointing to, you can do a git checkout of that tag
        # git checkout v2.0.0
        Or undo this operation with:
        # git switch -


    Assents -> is source_code in zip to download about the tag you create

    Exemplo of tags to use version:
        v0.1.0
        v0.2.0
        v0.3.0

    refs:
        Semantic Versioning 2.0.0:              https://semver.org/
        How to Release Code With Github:        https://www.youtube.com/watch?v=Ob9llA_QhQY
        2.6 Git Basics - Tagging:               https://git-scm.com/book/en/v2/Git-Basics-Tagging



-------------------------------------------------------------------------------------------------------------------------------------------------------
STEPS 3: 

GIT + GITHUB

Conventional commits & Semantic Versioning



The commit message should be structured as follows:

<type>[optional scope]: <description>

[optional body]

[optional footer(s)]


<type>
[
  'build',
  'chore',
  'ci',
  'docs',
  'feat',
  'fix',
  'perf',
  'refactor',
  'revert',
  'style',
  'test',
  'BREAKING CHANGE'
];



Examples

Commit message with scope and ! to draw attention to breaking change
feat(api)!: send an email to the customer when a product is shipped




https://www.conventionalcommits.org/en/v1.0.0/#summary
https://semver.org/





-------------------------------------------------------------------------------------------------------------------------------------------------------
STEPS 4: 

GIT + GITHUB

Branch &   Branching Strategies (local and remote)     &     GitFlow    &     TRUNK BASED DEVELOPMENT


See which branch you current on 
    # git status 
    # git branch 

Full list all the branchs have or was created 
    # git branch --list 


Create branch 
    # git branch alpha


Switch to the branchs 
    # git checkout alpha


Create a create and immediantely switch to the breach that created like:(git branch beta & git checkout beta)
    # git checkout -b beta


Rename the branch (change the current branch) local 
    # git branch -m <new-name>
    change the specificny branch
    # git branch -m alpha new-name-to-alpha





    Create and push the brash to GitHub (local and remote)
        # git push --set-upstream origin alpha


    Publishing Branches
    "Uploading" a local branch for the first time
        # git push -u origin <local-branch>


    Pulling + Pushing Branches
    Synchronzing your local + remote Branches
        # git pull 
        # git push
        # git branch -v




FINALLLL



git flow init 


  touch index.html 

  git add . 

  git commit -m "add index.html"



git flow feature start css 

  **dont live brench without commit 

  touch style.css 

  git add . 

  git commit -m "add style.css "


#git flow feature publish css
git flow feature finish css 







git checkout develop

git flow release start 1.0


git flow release finish 1.0
  Project finish - comment to tags 








  git checkout main 

git flow hotfix start 1.1

    touch test.js

    git add . 

    git commit -m "alter file add style.css "

git flow hotfix finish 1.1
  will create the new tag


git checkout develop 



git push --all 






git flow feature start js 

touch script.js 

git add . 
git commit -m "add script.js "


git flow feature publish  js 



git flow feature finish  js 


git push --all 


https://www.youtube.com/watch?v=394mc6PV8t8




refes: 
    Learn Git from Scratch - How to Create Branches and push to Github   -link:    https://www.youtube.com/watch?v=pDmYNK68IEc
    Git Branches Tutorial                                                -link:    https://www.youtube.com/watch?v=e2IbNHi4uCI
    branches-cheatsheet                                                  -link:    www.bit.ly/git-branches-cheatsheet
    VERSIONAMENTO DE CÓDIGO                                              -link:    https://www.youtube.com/watch?v=qKgiyJl_x_A







-------------------------------------------------------------------------------------------------------------------------------------------------------
STEPS 5: 

GIT + GITHUB

Pull request 



STEPS
        fork the repository 
        git clone repo

        git push (to my repo that was fork)
    
        github will show PULL REQUEST booton
    




refes: 
    Como criar seu primeiro pull request no GitHub #hacktoberfest         -link:    https://www.youtube.com/watch?v=Du04jBWrv4A


-------------------------------------------------------------------------------------------------------------------------------------------------------
abstract/commands: local GIT


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



(GitHub to local)
    # git pull



GIT LOG - Show commit logs
    # git log
    # git log --all --decorate --oneline --graph
    # git log --graph

    # git log --graph --pretty="%ad" --date=short
    # git log --oneline

REFE: https://git-scm.com/docs/git-log






-------------------------------------------------------------------------------------------------------------------------------------------------------

















-------------------------------------------------------------------------------------------------------------------------------------------------------

AUTENTICATION GITHUB 






#STEPS Generate SSH Keys
    **TO USE WITH SSH OPTION GITHUB


    #Generate SSH Keys Locally
        ssh-keygen -t ed25519 -C "pedro-akira@hotmail.com"

    #status ssh and restart 
        ps ax | grep sshd
        service ssh restart
        sudo systemctl restart ssh


    #Add SSH Key to ssh-agent
        eval `ssh-agent`
        ssh-add ~/.ssh/kinsta_keys


    #Add SSH Key to GitHub Account
    #**Add public key .pub
    #Add key to github 
    # setting -> SSH and GPG keys -> SSH keys -> New: name of computer and paste the **id_rsa.pub
        cat ~/.ssh/kinsta_keys.pub

    
    #if show this  WARNING: UNPROTECTED PRIVATE KEY FILE! 
    sudo chmod 600 ~/.ssh/id_rsa
    sudo chmod 600 ~/.ssh/id_rsa.pub


    #Test SSH Connection With a Repo Push
    #First, we’ll need to clone the repository into our local machine. We can go to the repo page on GitHub and copy the SSH address it provides.

    git clone git@github.com:pedroAkiraDanno/commits_tests.git
    ./script4.sh










#STEPS GENERATE TOKEN 
    **TO USE WITH hhtp OPTION GITHUB

    #Settings -> Developer settings -> Personal access tokens
    #Generate new token -> and save the -> Make sure to copy your personal access token now. You wont be able to see it again!


    $ git clone https://github.com/username/repo.git
    Username: your_username
    Password: your_token




















#Key Points
    #SSH is a secure alternative to username/password authorization
    #SSH keys are generated in public / private pairs. Your public key can be shared with others. The private keys stays on your machine only.
    #You can authorize with GitHub through SSH by sharing your public key with GitHub.





#remote: Support for password authentication was removed on August 13, 2021.
#remote: Please see https://docs.github.com/en/get-started/getting-started-with-git/about-remote-repositories#cloning-with-https-urls for information on currently recommended modes of authentication.
#fatal: Authentication failed for 'https://github.com/pedroAkiraDanno/commits_tests.git/'





REFERENCES: 


    ABOUT GITHUB AUTENTICATION
        https://jdblischak.github.io/2014-09-18-chicago/novice/git/05-sshkeys.html
        https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
        https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/about-authentication-to-github#githubs-token-formats
        https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
        https://docs.github.com/en/authentication/connecting-to-github-with-ssh
        https://docs.github.com/pt/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token
        https://kinsta.com/blog/generate-ssh-key/
        https://stackoverflow.com/questions/25869207/getting-warning-unprotected-private-key-file-error-message-while-attempting
        https://www.cyberciti.biz/faq/how-do-i-restart-sshd-daemon-on-linux-or-unix/

    ABOUT TOKEN 
        https://docs.github.com/pt/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token
        https://github.com/settings/tokens
        https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token








-------------------------------------------------------------------------------------------------------------------------------------------------------























-------------------------------------------------------------------------------------------------------------------------------------------------------
STUDY NOTES VERY IMPORTANT 







Git Origin Master

        The term "git origin master" is used in the context of a remote repository. 
        It is used to deal with the remote repository. 
        The term origin comes from where repository original situated and master stands for the main branch. 
        Let's understand both of these terms in detail.

        origin = REMOTE 


        https://www.javatpoint.com/git-origin-master#:~:text=The%20term%20%22git%20origin%20master,stands%20for%20the%20main%20branch.




-------------------------------------------------------------------------------------------------------------------------------------------------------





















---END 
