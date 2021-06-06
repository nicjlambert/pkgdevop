# GitHub first, then RStudio” sequence

# install packages --------------------------------------------------------
#install.packages(c('devtools', 'tidyverse','fs'))

# load packages -----------------------------------------------------------
library(devtools) # Collection of package development tools.
library(tidyverse) # Data science workflow.
library(fs) # Cross-Platform File System Operations.


# Create package ----------------------------------------------------------

usethis::create_package('pkgdev')


# Use Git -----------------------------------------------------------------

# set user name and email
usethis::use_git_config(user.name = "nicjlambert", user.email = "lambni85@outlook.com")

use_git()


# functions ---------------------------------------------------------------

use_r('fbind')


# load functions ----------------------------------------------------------

load_all() # load_all() simulates the process of building, installing, and attaching the package

check() # roduces rather voluminous output, optimized for interactive consumption


# add license -------------------------------------------------------------

use_mit_license("Nicholas Lambert")


# document functions ------------------------------------------------------

document()


# install package to library ----------------------------------------------

install()

# use function from another package in your own package -------------------

use_package("forcats")


# add a second function to package ----------------------------------------

use_r("fcount")


# add a README ------------------------------------------------------------

use_readme_rmd()
