# fancytable

This function transform your uggly table object into a table with its respective percentages.

## Example


<!-- README.md is generated from README.Rmd. Please edit that file -->
``` r
## Get Iris example
df <- iris
df$BigPetal <- ifelse(df$Petal.Width > 1.3,
                      "Width > 1.3",
                      "Width <= 1.3")

## Create a simple table 
tab <- with(df, table(Species, BigPetal))

## Check how table is outputed
print(tab)
#>             BigPetal
#> Species      Width <= 1.3 Width > 1.3
#>   setosa               50           0
#>   versicolor           28          22
#>   virginica             0          50
```

The `fancytable` function will return a table with percentages together with its repectively frequency, either in horizontal orientation or vertical orientation.

``` r
## fancytable with horizontal orientation
tab.h <- fancytable(tab,
                    orientation="h",
                    dec=2)

## fancytable with vertical orientation and 4 decimals
tab.v <- fancytable(tab,
                    orientation="v",
                    dec=4)

## Check outputs
print(tab.h)
#>            Width <= 1.3 Width > 1.3
#> setosa     50 (100%)    0 (0%)     
#> versicolor 28 (56%)     22 (44%)   
#> virginica  0 (0%)       50 (100%)
print(tab.v)
#>            Width <= 1.3  Width > 1.3  
#> setosa     50 (64.1026%) 0 (0%)       
#> versicolor 28 (35.8974%) 22 (30.5556%)
#> virginica  0 (0%)        50 (69.4444%)
```
