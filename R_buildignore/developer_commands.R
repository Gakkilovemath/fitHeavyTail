##
## User installation
##
# Local installation
install.packages(file.choose(), repos = NULL, type = "source")
# Installation from GitHub
devtools::install_github("dppalomar/fitHeavyTail")
# Installation from CRAN
install.packages("fitHeavyTail")
# Getting help
library(fitHeavyTail)
help(package = "fitHeavyTail")
package?fitHeavyTail
?fit_mvt
citation("fitHeavyTail")
vignette(package = "fitHeavyTail")


##
## Developer commands (https://r-pkgs.org/)
##
devtools::load_all()  #or Ctrl-Shift-L
devtools::document()  #to generate all documentation via roxygen
devtools::install()
library(fitHeavyTail)


# Code tests
devtools::test()
#covr::package_coverage()  #coverage of tests


# CRAN check and submission (https://r-pkgs.org/release.html)
#  checklist: https://kalimu.github.io/post/checklist-for-r-package-submission-to-cran/
devtools::check()  # run_dont_test = TRUE
rcmdcheck::rcmdcheck()  # build_args = "--run-donttest"
devtools::build()
#devtools::revdep(pkg = "fitHeavyTail")  # to check reverse dependencies
#devtools::check_win_release()  #to check under windows
#R CMD build .  # this is to generate tarball
#R CMD check fitHeavyTail_0.1.2.tar.gz --as-cran --run-donttest  # this is before submission to CRAN
#R CMD install fitHeavyTail_0.1.2.tar.gz
#submit the tarball directly via the webform: https://cran.r-project.org/submit.html
