* Resubmission following Re: CRAN Submission paleoDiv 0.1.0


* description no longer starts with "Functions for"
* TRUE and FALSE instead of T and F
* properly documented @return field for phylo.spindles (only returns a plot)
* used message() instead of print() to give text output that can be supressed if desired

* improvements to some functions (see news)


CHECKS:

>devtools::check_rhub()

* "possibly misspelled words" (as last time) are not actually misspelled


>* checking for non-standard things in the check directory ... NOTE
Found the following files/directories:
  ''NULL''

>* checking for detritus in the temp directory ... NOTE
Found the following files/directories:
  'lastMiKTeXException'

* As before, these files do not exist on my machine (nor do they on the winbuilder service). At any rate, it appears that they should not be causing any any problems.
  
>devtools::check_win_devel()
* using log directory 'd:/RCompile/CRANguest/R-devel/paleoDiv.Rcheck'
* using R Under development (unstable) (2024-03-03 r86036 ucrt)
* using platform: x86_64-w64-mingw32
* R was compiled by
    gcc.exe (GCC) 12.3.0
    GNU Fortran (GCC) 12.3.0
* running under: Windows Server 2022 x64 (build 20348)
* using session charset: UTF-8
* checking for file 'paleoDiv/DESCRIPTION' ... OK
* this is package 'paleoDiv' version '0.2.0'
* package encoding: UTF-8
* checking CRAN incoming feasibility ... NOTE
Maintainer: 'Darius Nau <dariusnau@gmx.at>'

New submission

Possibly misspelled words in DESCRIPTION:
  Paleobiodiversity (2:35)
  Paleobiology (6:111)
  stratigraphy (6:328)
  subtaxa (6:221)
* checking package namespace information ... OK
* checking package dependencies ... OK
* checking if this is a source package ... OK
* checking if there is a namespace ... OK
* checking for hidden files and directories ... OK
* checking for portable file names ... OK
* checking serialization versions ... OK
* checking whether package 'paleoDiv' can be installed ... OK
* checking installed package size ... OK
* checking package directory ... OK
* checking for future file timestamps ... OK
* checking 'build' directory ... OK
* checking DESCRIPTION meta-information ... OK
* checking top-level files ... OK
* checking for left-over files ... OK
* checking index information ... OK
* checking package subdirectories ... OK
* checking R files for non-ASCII characters ... OK
* checking R files for syntax errors ... OK
* checking whether the package can be loaded ... OK
* checking whether the package can be loaded with stated dependencies ... OK
* checking whether the package can be unloaded cleanly ... OK
* checking whether the namespace can be loaded with stated dependencies ... OK
* checking whether the namespace can be unloaded cleanly ... OK
* checking loading without being on the library search path ... OK
* checking use of S3 registration ... OK
* checking dependencies in R code ... OK
* checking S3 generic/method consistency ... OK
* checking replacement functions ... OK
* checking foreign function calls ... OK
* checking R code for possible problems ... OK
* checking Rd files ... OK
* checking Rd metadata ... OK
* checking Rd line widths ... OK
* checking Rd cross-references ... OK
* checking for missing documentation entries ... OK
* checking for code/documentation mismatches ... OK
* checking Rd \usage sections ... OK
* checking Rd contents ... OK
* checking for unstated dependencies in examples ... OK
* checking contents of 'data' directory ... OK
* checking data for non-ASCII characters ... OK
* checking LazyData ... OK
* checking data for ASCII and uncompressed saves ... OK
* checking installed files from 'inst/doc' ... OK
* checking files in 'vignettes' ... OK
* checking examples ... [16s] OK
* checking for unstated dependencies in 'tests' ... OK
* checking tests ... OK
  Running 'testthat.R'
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes ... OK
* checking re-building of vignette outputs ... OK
* checking PDF version of manual ... [13s] OK
* checking HTML version of manual ... OK
* DONE
Status: 1 NOTE


>local R CMD check --as-cran

output matches that on winbuilder
