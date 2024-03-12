* This patch fixes errors resulting from an unavailability of paleobiodb.org, as requested

# Added two occurrence and one collections dataset to package data use in examples
The issue in the previous version was caused by examples that each relied on example datasets that had to first be downloaded, hence returning an error on subsequent functions that require a dataset as input.

Now these are included in the package data (in archosauria.rda) and are thus always available for running examples and building vignettes, even without access to the online resource.

Of course if the resource is unavailable, pdb() itself will never be able to find a dataset. However as per the CRAN policy, pdb() itself does not return an error or warning, but only outputs a message (and returns the status instead of the dataset) if the resource cannot be found (this represents no change from the previous version).

# added two additional options to pdb() to switch between dev.paleobiodb.org and paleobiodb.org 
Sometimes (e.g. during the unavailability today) only one of both is unavailable, in which case the other can be used

# made message output of pdb() in cases of unavailability of resource more informative
Message output now gives pointers to the possible cause of the issue if there is a timeout or gateway error.

# devtools::check_win_devel() output:
* using log directory 'd:/RCompile/CRANguest/R-devel/paleoDiv.Rcheck'
* using R Under development (unstable) (2024-03-06 r86056 ucrt)
* using platform: x86_64-w64-mingw32
* R was compiled by
    gcc.exe (GCC) 12.3.0
    GNU Fortran (GCC) 12.3.0
* running under: Windows Server 2022 x64 (build 20348)
* using session charset: UTF-8
* checking for file 'paleoDiv/DESCRIPTION' ... OK
* this is package 'paleoDiv' version '0.2.2'
* package encoding: UTF-8
* checking CRAN incoming feasibility ... NOTE
Maintainer: 'Darius Nau <dariusnau@gmx.at>'

Days since last update: 0
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
* checking examples ... OK
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
