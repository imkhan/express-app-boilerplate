args=("$@")

#clone the repo
git clone https://github.com/imkhan/express-app-boilerplate.git ${args[0]}

cd ${args[0]}

#Remove git repo
rm -rf .git

#install node module dependencies
npm install

#install bower dependencies
bower install


# Or define a function in your .bash_profile as follows:

##function express-app-boilerplate(){
##  args=("$@")

  #clone the repo
##  git clone https://github.com/imkhan/express-app-boilerplate.git ${args[0]}

##  cd ${args[0]}

  #Remove git repo
##  rm -rf .git

  #install node module dependencies
##  npm install

  #install bower dependencies
##  bower install

##}

#add an alias
##alias xpbp="express-app-boilerplate"
