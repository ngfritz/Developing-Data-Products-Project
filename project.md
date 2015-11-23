A Shinyapp to help scientists' work
========================================================
Developing Data Products - Course Project

author: GNemeth

date: 22.11.2015.

Motivation
========================================================

Preparation of solutions in chemistry, biochemistry, biology, etc. is a regular process. However, especially for beginners, it takes time to rearrange the equations and calculate the required amount of solvents for a given concentration. This app provides a handy tool for this problem.



Overview of the app I.
========================================================
Input values
The app needs 3 numeric input values and a selection:
- the mass of the material what the user wants to solubilise in gramms.
- the molecular weight of the material in daltons (~g/mol).
- the numeric part of the concentration what the user needs.

The order of magnitude can be choosen from a list (mol/milimol/micromol/nanomol). This text category is translated to a numerical value in the server.R
    
The app returns the enterd values in the following format:
x g; y daltons; z mole (M)/milimole (uM)/...


Overview of the app II.
========================================================
Finally the app prints the required amount of solvent in liters from the input values and using the following dataframe:

```r
name<-c("mol (M)", "milimol (mM)", "micromol (uM)", "nanomol (nM)") 
#list of categories
multiplier<-as.numeric()
multiplier<-c(1, 0.001, 0.000001, 0.000000001)
#list of numbers which corresponds to the categories
conc<-cbind(name, multiplier)
conc<-as.data.frame(conc)
conc$multiplier<-as.numeric(as.character(conc$multiplier))
#the two lists are merged to a df for the calculation
```

Summary
====
This Shinyapp can prevent calculation mistakes and save time for solvent preparations.

The app is available on the following link:
 https://gnemeth.shinyapps.io/Project
