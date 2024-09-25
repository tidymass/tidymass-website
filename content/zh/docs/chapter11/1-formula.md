---
date: "2019-05-05T00:00:00+01:00"
title: "Formula function"
linktitle: Formula function
author: admin
type: book
weight: 1
commentable: true
---



## Introduction

In the realm of computational chemistry and bioinformatics, handling and analyzing chemical formulae is a frequent task. While R provides extensive capabilities for data manipulation and analysis, specific tools tailored to chemical formulae can simplify the process. In this post, we introduce three new functions: `is_valid_chemical_formula`, `parse_chemical_formula`, and `get_mass`. Let's dive into their usage and benefits.

> Please update your `masstools` package before use these functions.

## Checking the Validity of a Chemical Formula

The `is_valid_chemical_formula` function allows users to quickly verify if a given formula is valid based on known chemical elements.


``` r
library(masstools)
#> masstools 1.0.13 (2024-09-10 08:55:57.163523)
# Function definition here...
# Copy and paste the 'is_valid_chemical_formula' function here
is_valid_chemical_formula("H2O")      # TRUE
#> [1] TRUE
is_valid_chemical_formula("H2ZO4")    # FALSE
#> [1] FALSE
```

This function returns TRUE if all elements in the formula are recognized and FALSE otherwise.

## Parsing Chemical Formulae

With the `parse_chemical_formula` function, you can break down a chemical formula into its individual elements and their respective counts.


``` r
# Function definition here...
# Copy and paste the 'parse_chemical_formula' function here

parse_chemical_formula("H2O")       # Returns H:2 and O:1
#>   Element Count
#> 1       H     2
#> 2       O     1
parse_chemical_formula("C6H12O6")   # Returns C:6, H:12, and O:6
#>   Element Count
#> 1       C     6
#> 2       H    12
#> 3       O     6
```

The result is presented in a user-friendly data frame format.

## Calculating Mass of Chemical Formulae

The `get_mass` function computes the mass of a given formula based on either its exact mass or its average mass.


``` r
# Function definition here...
# Copy and paste the 'get_mass' function here

get_mass("H2O", which = "exact_mass")
#>      H2O 
#> 18.01056
get_mass("C6H12O6", which = "average_mass")
#> C6H12O6 
#> 180.156
```

You can specify the type of mass calculation by setting the which parameter to either "exact_mass" or "average_mass".

## Conclusion

These new functions simplify common tasks related to chemical formulae in R. Whether you're verifying the validity of a formula, parsing it, or computing its mass, these tools make the process efficient and user-friendly. We hope they'll be a valuable addition to your R toolkit, especially if you work frequently with chemical data!
