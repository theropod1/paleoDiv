* This is a new release.


* rhub and winbuilder both return the following NOTE:

>  Possibly misspelled words in DESCRIPTION:
    Paleobiodiversity (2:35)
    Paleobiology (6:98)
    stratigraphy (6:315)
    subtaxa (6:208)
    
    
These words are not actually misspelled
* checks on R devel also seem to return:

> checking for non-standard things in the check directory ... NOTE
  Found the following files/directories:
    ''NULL''

> checking for detritus in the temp directory ... NOTE
  Found the following files/directories:
    'lastMiKTeXException'
    
I can find neither of these files in my local directory, nor do they show up when I run R CMD check locally – to be honest I have no idea where they come from.

* local R CMD check only returns the standard 1 NOTE:
> checking CRAN incoming feasibility ... [9s/14s] NOTE
Maintainer: ‘Darius Nau <dariusnau@gmx.at>’
