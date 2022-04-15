# SISXXX : Analysis Repository Template for Systems Immunology
This is meant to serve as a loose template for depositing and documenting analysis scripts.  
Following recommentations are only an example of how git repos can be organizes, *not* a requirement.

## Contents of README

All analysis repositories should have a README file, containing everything necessary to reproduce the analysis.  
This includes, but is not limited to :

- contents of the JIRA task associated with this repository, such as program, objectives, conclusions from the analysis
- Dependencies
- Data locations
- Analysis steps

## Example directory structure

One example of organizing the repository is as follows :

- All analysis scripts in the root of the repo
- Raw/Starting data in "data" folder
- Analysis outputs in "analysis" folder
- Final output/report in "results" folder

Two examples of data management are :

- Use the "data" directory and have scripts that fetch the data into this directory for reproducibility
- In cases of pre-existing data, e.g. in hpc wip, have analysis scripts point to the data location at the top of the script

## .gitignore

Use .gitignore to exclude files/directories you don't wish sync. (e.g. temporary files and data)  
In addition to commonly used R and python temporary files, "data", "analysis", and "results" directories are already included in the .gitignore.

## renv

https://rstudio.github.io/renv/articles/renv.html  
renv is a R library management tool that helps maintain packages and improves reproducibility. 
renv_init.R script is available to help use this easily.  
If you are not using renv, feel free to remove this script from your repo.  

# Example contents of the README

JIRA task number

## Background 

Background for this analysis.
Program for which this analysis is performed.

## Objectives

Desired outcomes of the analysis

## Methods

Analysis steps and tools used

## Conclusion

Conclusion based on the final product of the analysis

## Locations of Data

Location of the data - e.g. within hpc or the public source

## Dependencies

Necessary R/python packages, command line tools, and git repositories

