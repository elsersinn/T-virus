T-Virus Casualties Simulator
========================================================
author: Developing Data products
date: 
transition: rotate 
font-import: http://fonts.googleapis.com/css?family=Risque
font-family: 'Risque'

Introduction
========================================================

This is the pitch Rpresentation for the Developing Data Products Course Project.

This Shiny app will run a caualty prediction of a simulated virus based on several user defined parameters.

Then the results will be displayed in a GoogleGlobe object.



Virus Parameters
========================================================
When bioengineering the virus, you can customize:

- Air propagation: The rate at the virus is spread through air.
- Water propagation: The rate at the virus is spread through Water.
- Animal propagation: The rate at the virus is spread in animal population.
- Antibiotics resistance: The resistance to medical treatments.

Virus Risk simulation
========================================================
Lets run an example of the Risk simulation:


```r
#Air propagation
air <- 2
#Water propagation
wat <- 3
#Animal propagation
an <- 2
#Antibiotics resistance
res <-5
#Risk calculation
risk <- (air+wat+an+res)/3    
risk
```

```
[1] 4
```

Shiny App
========================================================
URL of the app:

https://elsersinn.shinyapps.io/globe/

You will need a webGL compatible browser, like Chrome,Firefox 4 or Webkit Nightly (Mac)

