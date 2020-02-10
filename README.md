
# rtist

## Overview

"They'll sell you thousands of greens. Veronese green and emerald green and cadmium green and any sort of green you like; but that particular green, never." - *Pablo Picasso, (1966)*

Use the palettes of famous artists in your own visualizations. 

## Installation

Install the latest version from GitHub.

``` r
# Install remotes to download.
install.packages("remotes")

# And then install from github.
remotes::install_github("ewenme/ghibli")
```

## Palettes

`rtist` provides 15 palettes from famous artists and paintings. You can quickly view and see all palettes using `rtist_help`

``` r
# Load package
library(ghibli)

# Display possible palettes
rtist::rtist_help()
```

After finding a palette, go ahead and select that palette along with however many colors you want.

``` r
# Load package
library(ghibli)

# Choose Warhol
rtist::rtist_palette("warhol")

# Choose 4 colors from Picasso
rtist::rtist_palette("picasso", 4)
```

## Credits

This package was mostly built to teach me package development. It was largely inspired by [Ewen’s `ghibli`
package](https://github.com/ewenme/ghibli) and [Karthik Ram’s `wesanderson` 
package](https://github.com/karthik/wesanderson).

The palettes themselves come from [10 Color Palettes Based on Famous Paintings](http://www.skellermeyerdesigns.com/blog/10-color-palettes-based-on-famous-paintings) and [Color Lisa](http://colorlisa.com/). Check those out for other awesome palettes.

