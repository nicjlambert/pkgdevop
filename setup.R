# GitHub first, then RStudio” sequence

# Create package ----------------------------------------------------------

usethis::create_package("pkgdev")


# Use Git -----------------------------------------------------------------

# set user name and email
usethis::use_git_config(user.name = "nicjlambert", user.email = "lambni85@outlook.com")

use_git()


# functions ---------------------------------------------------------------

use_r("fbind")


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

use_readme_rmd() # don't forget to knit


# add tests ---------------------------------------------------------------

usethis::use_testthat()

use_test("fbind")

test()


# styler package ----------------------------------------------------------

styler::style_pkg() #restyles an entire R package.
styler::style_dir() #restyles all files in a directory.

