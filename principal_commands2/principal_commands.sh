

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




Uploads all local branch commits to GitHub
    # git pull






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

Branch & Branching Strategies (local and remote)   &   GitFlow


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












refes: 
Learn Git from Scratch - How to Create Branches and push to Github   -link:    https://www.youtube.com/watch?v=pDmYNK68IEc
Git Branches Tutorial                                                -link:    https://www.youtube.com/watch?v=e2IbNHi4uCI
branches-cheatsheet                                                  -link:    www.bit.ly/git-branches-cheatsheet

















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



Uploads all local branch commits to GitHub  (GitHub to local)
    # git pull



GIT LOG - Show commit logs
    # git log
    # git log --all --decorate --oneline --graph
    # git log --graph

    # git log --graph --pretty="%ad" --date=short
    # git log --oneline

REFE: https://git-scm.com/docs/git-log






-------------------------------------------------------------------------------------------------------------------------------------------------------
















































































---END 
