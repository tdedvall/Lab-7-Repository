
1.  Print a table containing only species NOT in the Order
    Passeriformes. Include all columns.

``` r
# Bird orders data ------------------------------------------------------

#Load packages----

library(tidyverse)
```

    ## -- Attaching packages --------------------------------------- tidyverse 1.3.1 --

    ## v ggplot2 3.3.3     v purrr   0.3.4
    ## v tibble  3.1.1     v dplyr   1.0.5
    ## v tidyr   1.1.3     v stringr 1.4.0
    ## v readr   1.4.0     v forcats 0.5.1

    ## -- Conflicts ------------------------------------------ tidyverse_conflicts() --
    ## x dplyr::filter() masks stats::filter()
    ## x dplyr::lag()    masks stats::lag()

``` r
library(auk)                          # load the auk package
```

    ## auk 0.4.2 is designed for EBD files downloaded after 2019-08-15. 
    ## No EBD data directory set, see ?auk_set_ebd_path to set EBD_PATH 
    ## eBird taxonomy version:  2019

``` r
#Read data----

birds <- ebird_taxonomy %>%           # start with the ebird_taxonomy data
  as_tibble() %>%                     # tibbles print better in the console
  filter(category == "species")       # remove non-species taxa

birds
```

    ## # A tibble: 10,721 x 9
    ##    species_code scientific_name  common_name order family family_common category
    ##    <chr>        <chr>            <chr>       <chr> <chr>  <chr>         <chr>   
    ##  1 ostric2      Struthio camelus Common Ost~ Stru~ Strut~ Ostriches     species 
    ##  2 ostric3      Struthio molybd~ Somali Ost~ Stru~ Strut~ Ostriches     species 
    ##  3 grerhe1      Rhea americana   Greater Rh~ Rhei~ Rheid~ Rheas         species 
    ##  4 lesrhe2      Rhea pennata     Lesser Rhea Rhei~ Rheid~ Rheas         species 
    ##  5 tabtin1      Nothocercus jul~ Tawny-brea~ Tina~ Tinam~ Tinamous      species 
    ##  6 higtin1      Nothocercus bon~ Highland T~ Tina~ Tinam~ Tinamous      species 
    ##  7 hootin1      Nothocercus nig~ Hooded Tin~ Tina~ Tinam~ Tinamous      species 
    ##  8 grytin1      Tinamus tao      Gray Tinam~ Tina~ Tinam~ Tinamous      species 
    ##  9 soltin1      Tinamus solitar~ Solitary T~ Tina~ Tinam~ Tinamous      species 
    ## 10 blatin1      Tinamus osgoodi  Black Tina~ Tina~ Tinam~ Tinamous      species 
    ## # ... with 10,711 more rows, and 2 more variables: taxon_order <dbl>,
    ## #   report_as <chr>

``` r
#Table 1

nopassbirds <- filter(birds, order != "Passeriformes")
nopassbirds
```

    ## # A tibble: 4,335 x 9
    ##    species_code scientific_name  common_name order family family_common category
    ##    <chr>        <chr>            <chr>       <chr> <chr>  <chr>         <chr>   
    ##  1 ostric2      Struthio camelus Common Ost~ Stru~ Strut~ Ostriches     species 
    ##  2 ostric3      Struthio molybd~ Somali Ost~ Stru~ Strut~ Ostriches     species 
    ##  3 grerhe1      Rhea americana   Greater Rh~ Rhei~ Rheid~ Rheas         species 
    ##  4 lesrhe2      Rhea pennata     Lesser Rhea Rhei~ Rheid~ Rheas         species 
    ##  5 tabtin1      Nothocercus jul~ Tawny-brea~ Tina~ Tinam~ Tinamous      species 
    ##  6 higtin1      Nothocercus bon~ Highland T~ Tina~ Tinam~ Tinamous      species 
    ##  7 hootin1      Nothocercus nig~ Hooded Tin~ Tina~ Tinam~ Tinamous      species 
    ##  8 grytin1      Tinamus tao      Gray Tinam~ Tina~ Tinam~ Tinamous      species 
    ##  9 soltin1      Tinamus solitar~ Solitary T~ Tina~ Tinam~ Tinamous      species 
    ## 10 blatin1      Tinamus osgoodi  Black Tina~ Tina~ Tinam~ Tinamous      species 
    ## # ... with 4,325 more rows, and 2 more variables: taxon_order <dbl>,
    ## #   report_as <chr>

2.  Print a table containing only species in the Order Passeriformes.
    Include all columns.

``` r
#Table 2

passbirds <- filter(birds, order == "Passeriformes")
passbirds
```

    ## # A tibble: 6,386 x 9
    ##    species_code scientific_name  common_name order family family_common category
    ##    <chr>        <chr>            <chr>       <chr> <chr>  <chr>         <chr>   
    ##  1 stiwre1      Traversia lyalli Stephens I~ Pass~ Acant~ New Zealand ~ species 
    ##  2 riflem1      Acanthisitta ch~ Rifleman    Pass~ Acant~ New Zealand ~ species 
    ##  3 buswre1      Xenicus longipes Bush Wren   Pass~ Acant~ New Zealand ~ species 
    ##  4 soiwre1      Xenicus gilvive~ South Isla~ Pass~ Acant~ New Zealand ~ species 
    ##  5 afrbro1      Smithornis cape~ African Br~ Pass~ Calyp~ African and ~ species 
    ##  6 gyhbro1      Smithornis shar~ Gray-heade~ Pass~ Calyp~ African and ~ species 
    ##  7 rusbro1      Smithornis rufo~ Rufous-sid~ Pass~ Calyp~ African and ~ species 
    ##  8 grebro1      Calyptomena vir~ Green Broa~ Pass~ Calyp~ African and ~ species 
    ##  9 hosbro1      Calyptomena hos~ Hose's Bro~ Pass~ Calyp~ African and ~ species 
    ## 10 whibro1      Calyptomena whi~ Whitehead'~ Pass~ Calyp~ African and ~ species 
    ## # ... with 6,376 more rows, and 2 more variables: taxon_order <dbl>,
    ## #   report_as <chr>

3.  Print a table containing all species. Only the variables Species
    Code, Scientific Name, and Common Name should be in the final table.

``` r
#Table 3 

T3 <- select(birds, species_code, scientific_name, common_name)
T3
```

    ## # A tibble: 10,721 x 3
    ##    species_code scientific_name           common_name           
    ##    <chr>        <chr>                     <chr>                 
    ##  1 ostric2      Struthio camelus          Common Ostrich        
    ##  2 ostric3      Struthio molybdophanes    Somali Ostrich        
    ##  3 grerhe1      Rhea americana            Greater Rhea          
    ##  4 lesrhe2      Rhea pennata              Lesser Rhea           
    ##  5 tabtin1      Nothocercus julius        Tawny-breasted Tinamou
    ##  6 higtin1      Nothocercus bonapartei    Highland Tinamou      
    ##  7 hootin1      Nothocercus nigrocapillus Hooded Tinamou        
    ##  8 grytin1      Tinamus tao               Gray Tinamou          
    ##  9 soltin1      Tinamus solitarius        Solitary Tinamou      
    ## 10 blatin1      Tinamus osgoodi           Black Tinamou         
    ## # ... with 10,711 more rows

4.  Print a table with all species in the Order Passeriformes whose
    common name starts with the word “Common”. Species should be in
    reverse taxonomic order (taxon\_order variable). Only the variables
    Species Code, Scientific Name, and Common Name should be in the
    final table.

``` r
#Table 4

passbirds <- filter(birds, order == "Passeriformes")
passbirds
```

    ## # A tibble: 6,386 x 9
    ##    species_code scientific_name  common_name order family family_common category
    ##    <chr>        <chr>            <chr>       <chr> <chr>  <chr>         <chr>   
    ##  1 stiwre1      Traversia lyalli Stephens I~ Pass~ Acant~ New Zealand ~ species 
    ##  2 riflem1      Acanthisitta ch~ Rifleman    Pass~ Acant~ New Zealand ~ species 
    ##  3 buswre1      Xenicus longipes Bush Wren   Pass~ Acant~ New Zealand ~ species 
    ##  4 soiwre1      Xenicus gilvive~ South Isla~ Pass~ Acant~ New Zealand ~ species 
    ##  5 afrbro1      Smithornis cape~ African Br~ Pass~ Calyp~ African and ~ species 
    ##  6 gyhbro1      Smithornis shar~ Gray-heade~ Pass~ Calyp~ African and ~ species 
    ##  7 rusbro1      Smithornis rufo~ Rufous-sid~ Pass~ Calyp~ African and ~ species 
    ##  8 grebro1      Calyptomena vir~ Green Broa~ Pass~ Calyp~ African and ~ species 
    ##  9 hosbro1      Calyptomena hos~ Hose's Bro~ Pass~ Calyp~ African and ~ species 
    ## 10 whibro1      Calyptomena whi~ Whitehead'~ Pass~ Calyp~ African and ~ species 
    ## # ... with 6,376 more rows, and 2 more variables: taxon_order <dbl>,
    ## #   report_as <chr>

``` r
T4 <- select(passbirds, species_code, scientific_name, common_name)
filter(T4, str_detect(common_name, "Common"))
```

    ## # A tibble: 32 x 3
    ##    species_code scientific_name            common_name                
    ##    <chr>        <chr>                      <chr>                      
    ##  1 sunasi1      Neodrepanis coruscans      Common Sunbird-Asity       
    ##  2 scbant3      Willisornis poecilinotus   Common Scale-backed Antbird
    ##  3 commin1      Geositta cunicularia       Common Miner               
    ##  4 cotfly1      Todirostrum cinereum       Common Tody-Flycatcher     
    ##  5 cicada1      Edolisoma tenuirostre      Common Cicadabird          
    ##  6 comwoo1      Tephrodornis pondicerianus Common Woodshrike          
    ##  7 comnew1      Newtonia brunneicauda      Common Newtonia            
    ##  8 comior1      Aegithina tiphia           Common Iora                
    ##  9 cstdro1      Dicrurus ludwigii          Common Square-tailed Drongo
    ## 10 gremag1      Cissa chinensis            Common Green-Magpie        
    ## # ... with 22 more rows

5.  Print a table containing species with “Warbler” in the common name.
    Include all columns.

``` r
#Table 5

T5 <- filter(birds, str_detect(common_name, "Warbler"))
T5
```

    ## # A tibble: 334 x 9
    ##    species_code scientific_name  common_name order family family_common category
    ##    <chr>        <chr>            <chr>       <chr> <chr>  <chr>         <chr>   
    ##  1 rumwar1      Crateroscelis m~ Rusty Mous~ Pass~ Acant~ Thornbills a~ species 
    ##  2 bimwar1      Crateroscelis n~ Bicolored ~ Pass~ Acant~ Thornbills a~ species 
    ##  3 momwar1      Crateroscelis r~ Mountain M~ Pass~ Acant~ Thornbills a~ species 
    ##  4 spewar3      Pyrrholaemus sa~ Speckled W~ Pass~ Acant~ Thornbills a~ species 
    ##  5 mogwar1      Melocichla ment~ Moustached~ Pass~ Macro~ African Warb~ species 
    ##  6 viswar1      Cryptillas vict~ Victorin's~ Pass~ Macro~ African Warb~ species 
    ##  7 grawar1      Graueria vittata Grauer's W~ Pass~ Macro~ African Warb~ species 
    ##  8 mitbab1      Micromacronus l~ Leyte Plum~ Pass~ Cisti~ Cisticolas a~ species 
    ##  9 minmib1      Micromacronus s~ Mindanao P~ Pass~ Cisti~ Cisticolas a~ species 
    ## 10 rwgwar2      Drymocichla inc~ Red-winged~ Pass~ Cisti~ Cisticolas a~ species 
    ## # ... with 324 more rows, and 2 more variables: taxon_order <dbl>,
    ## #   report_as <chr>

6.  Print a table with two columns; family and n, the number of species
    in that family whose name contains “Warbler”

``` r
T6 <- count(birds, "Warbler")
T6
```

    ## # A tibble: 1 x 2
    ##   `"Warbler"`     n
    ##   <chr>       <int>
    ## 1 Warbler     10721

## Session Info

Here is my session information:

``` r
sessioninfo::session_info()
```

    ## - Session info ---------------------------------------------------------------
    ##  setting  value                       
    ##  version  R version 3.6.3 (2020-02-29)
    ##  os       Windows 10 x64              
    ##  system   x86_64, mingw32             
    ##  ui       RTerm                       
    ##  language (EN)                        
    ##  collate  English_United States.1252  
    ##  ctype    English_United States.1252  
    ##  tz       America/Chicago             
    ##  date     2021-05-04                  
    ## 
    ## - Packages -------------------------------------------------------------------
    ##  package     * version date       lib source        
    ##  assertthat    0.2.1   2019-03-21 [1] CRAN (R 3.6.3)
    ##  auk         * 0.4.3   2020-11-23 [1] CRAN (R 3.6.3)
    ##  backports     1.2.0   2020-11-02 [1] CRAN (R 3.6.3)
    ##  broom         0.7.6   2021-04-05 [1] CRAN (R 3.6.3)
    ##  cellranger    1.1.0   2016-07-27 [1] CRAN (R 3.6.3)
    ##  cli           2.4.0   2021-04-05 [1] CRAN (R 3.6.3)
    ##  colorspace    2.0-0   2020-11-11 [1] CRAN (R 3.6.3)
    ##  crayon        1.4.1   2021-02-08 [1] CRAN (R 3.6.3)
    ##  DBI           1.1.0   2019-12-15 [1] CRAN (R 3.6.3)
    ##  dbplyr        2.1.1   2021-04-06 [1] CRAN (R 3.6.3)
    ##  digest        0.6.27  2020-10-24 [1] CRAN (R 3.6.3)
    ##  dplyr       * 1.0.5   2021-03-05 [1] CRAN (R 3.6.3)
    ##  ellipsis      0.3.1   2020-05-15 [1] CRAN (R 3.6.3)
    ##  evaluate      0.14    2019-05-28 [1] CRAN (R 3.6.3)
    ##  fansi         0.4.1   2020-01-08 [1] CRAN (R 3.6.3)
    ##  forcats     * 0.5.1   2021-01-27 [1] CRAN (R 3.6.3)
    ##  fs            1.5.0   2020-07-31 [1] CRAN (R 3.6.3)
    ##  generics      0.1.0   2020-10-31 [1] CRAN (R 3.6.3)
    ##  ggplot2     * 3.3.3   2020-12-30 [1] CRAN (R 3.6.3)
    ##  glue          1.4.2   2020-08-27 [1] CRAN (R 3.6.3)
    ##  gtable        0.3.0   2019-03-25 [1] CRAN (R 3.6.3)
    ##  haven         2.3.1   2020-06-01 [1] CRAN (R 3.6.3)
    ##  hms           1.0.0   2021-01-13 [1] CRAN (R 3.6.3)
    ##  htmltools     0.5.0   2020-06-16 [1] CRAN (R 3.6.3)
    ##  httr          1.4.2   2020-07-20 [1] CRAN (R 3.6.3)
    ##  jsonlite      1.7.2   2020-12-09 [1] CRAN (R 3.6.3)
    ##  knitr         1.30    2020-09-22 [1] CRAN (R 3.6.3)
    ##  lifecycle     1.0.0   2021-02-15 [1] CRAN (R 3.6.3)
    ##  lubridate     1.7.10  2021-02-26 [1] CRAN (R 3.6.3)
    ##  magrittr      2.0.1   2020-11-17 [1] CRAN (R 3.6.3)
    ##  modelr        0.1.8   2020-05-19 [1] CRAN (R 3.6.3)
    ##  munsell       0.5.0   2018-06-12 [1] CRAN (R 3.6.3)
    ##  pillar        1.6.0   2021-04-13 [1] CRAN (R 3.6.3)
    ##  pkgconfig     2.0.3   2019-09-22 [1] CRAN (R 3.6.3)
    ##  purrr       * 0.3.4   2020-04-17 [1] CRAN (R 3.6.3)
    ##  R6            2.5.0   2020-10-28 [1] CRAN (R 3.6.3)
    ##  Rcpp          1.0.5   2020-07-06 [1] CRAN (R 3.6.3)
    ##  readr       * 1.4.0   2020-10-05 [1] CRAN (R 3.6.3)
    ##  readxl        1.3.1   2019-03-13 [1] CRAN (R 3.6.3)
    ##  reprex        2.0.0   2021-04-02 [1] CRAN (R 3.6.3)
    ##  rlang         0.4.10  2020-12-30 [1] CRAN (R 3.6.3)
    ##  rmarkdown     2.6     2020-12-14 [1] CRAN (R 3.6.3)
    ##  rstudioapi    0.13    2020-11-12 [1] CRAN (R 3.6.3)
    ##  rvest         1.0.0   2021-03-09 [1] CRAN (R 3.6.3)
    ##  scales        1.1.1   2020-05-11 [1] CRAN (R 3.6.3)
    ##  sessioninfo   1.1.1   2018-11-05 [1] CRAN (R 3.6.3)
    ##  stringi       1.5.3   2020-09-09 [1] CRAN (R 3.6.3)
    ##  stringr     * 1.4.0   2019-02-10 [1] CRAN (R 3.6.3)
    ##  tibble      * 3.1.1   2021-04-18 [1] CRAN (R 3.6.3)
    ##  tidyr       * 1.1.3   2021-03-03 [1] CRAN (R 3.6.3)
    ##  tidyselect    1.1.0   2020-05-11 [1] CRAN (R 3.6.3)
    ##  tidyverse   * 1.3.1   2021-04-15 [1] CRAN (R 3.6.3)
    ##  utf8          1.1.4   2018-05-24 [1] CRAN (R 3.6.3)
    ##  vctrs         0.3.6   2020-12-17 [1] CRAN (R 3.6.3)
    ##  withr         2.3.0   2020-09-22 [1] CRAN (R 3.6.3)
    ##  xfun          0.20    2021-01-06 [1] CRAN (R 3.6.3)
    ##  xml2          1.3.2   2020-04-23 [1] CRAN (R 3.6.3)
    ##  yaml          2.2.1   2020-02-01 [1] CRAN (R 3.6.3)
    ## 
    ## [1] C:/Users/Tyler/Documents/R/win-library/3.6
    ## [2] C:/Program Files/R/R-3.6.3/library
