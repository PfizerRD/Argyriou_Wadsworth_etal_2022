# Run this whole script two times for first installation - to install and initiate renv, and then to install libraries and save lockfile
# Run this script once if renv has already been configured in the git repo - it will skip the first two steps and just restore the renv using the renv.lock file

if (! file.exists("renv")){
  # install renv
  install.packages("renv")
  
  # initailize
  renv::settings$use.cache(FALSE) # installing directly into renv/library instead of using cache; make sure that arenv/library is added to .gitignore
  renv::settings$snapshot.type("all")
  renv::init(bare = T) # starting fresh
}

# First start with bare minimum, libraries you always use. 
# As you install other packages throughout your analysis, just use `renv::snapshot()` to update the lockfile.
# Since the lockfile contains all the necessary information, you don't have to worry about documenting library dependencies
if (! file.exists("renv.lock")){
  # installing dependencies
  renv::install("rmarkdown")
  renv::install("tidyverse")
  renv::install("bioc::Biobase")
  
  # save current environment
  renv::snapshot()
}

# As long as you have initialized renv and made a renv.lock file, only this command is executed to restore the renv, installing any missing libraries
renv::restore()
