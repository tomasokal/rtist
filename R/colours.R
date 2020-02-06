#' Complete list of palettes.
#'
#' Use \code{\link{rtist_palette}} to construct palettes of desired length.
#'
#' @export

rtist_palettes <- list(raphael = c("#FBE6C0", "#6B502C", "#BF2A1D", "#666581", "#E5A55E"),
                       hokusai = c("#7F9DA7", "#C1B8AA", "#DDD4C6", "#0C2348", "#454A4D"),
                       vermeer = c("#0A030A", "#4A5CA5", "#CDB87E", "#896134", "#70211B"),
                       degas = c("#7A654E", "#E9CBB7", "#AC713B", "#78818D", "#352E23"),
                       davinci = c("#000206", "#EFC775", "#2B2D18", "#5C7346", "#5A3A22"),
                       vangogh = c("#010406", "#1E5880", "#FCCF49", "#F6E38E", "#A0C99C"),
                       hopper = c("#772F19", "#EAE48D", "#629073", "#0F2732", "#1B2320"),
                       klimt = c("#7D6A3C", "#C7AB52", "#779153", "#8F7581", "#B6634E"),
                       rembrandt = c("#030504", "#F4DD9B", "#811D08", "#1E1507", "#252823"),
                       munch = c("#D03908", "#193236", "#7E724C", "#B8A463", "#DA7618"),
                       warhol = c("#F26386", "#F588AF", "#A4D984", "#FCBC52", "#FD814E"),
                       okeeffe = c("#0E122D", "#182044", "#51628E", "#91A1BA", "#AFD0C9"),
                       oldenburg = c("#95B1C9", "#263656", "#698946", "#F8D440", "#C82720"),
                       picasso = c("#4E7989", "#A9011B", "#E4A826", "#80944E", "#DCD6B2"),
                       pollock = c("#D89CA9", "#1962A0", "#F1ECD7", "#E8C051", "#1A1C23")
                       )

#' Artist and painting palette generator
#'
#' Pick an artist name and number of colours desired.
#'
#' @param n Number of colours desired. All palettes have 5 colours. Most colour schemes are derived from \href{http://www.skellermeyerdesigns.com/blog/10-color-palettes-based-on-famous-paintings}{10 Color Palettes Based on Famous Paintings}. If omitted, will use all colours.
#' @param artist Name of desired artist palette. Choices are:
#'   \code{raphael}, \code{hokusai}, \code{vermeer}, \code{degas}, \code{davinci},
#'   \code{vangogh}, \code{hopper}, \code{klimt}, \code{rembrandt}, \code{munch},
#'   \code{okeeffe}, \code{warhol}, \code{oldenburg}, \code{picasso}, \code{pollock}
#'   @importFrom graphics rgb rect par image text
#' @return A vector of colours.
#' @export
#' @keywords colours, colors, art
#' @examples
#' rtist_palette("warhol")
#' rtist_palette("pollock", 4)

rtist_palette <- function(artist, n) {

    plt <- rtist_palettes[[artist]]

    if (is.null(plt))

        stop("Unfortunately, that artist has not been added yet.")

    if (missing(n)) {

        n <- length(plt)

    }

    if (n > length(plt)) {

        stop("Unfortunately, the number of requested colours is greater than what is included. Please decrease to 5 or less to continue.")

    }

    out <- plt[1:n]

    structure(out, class = "palette", name = toupper(artist))

}

#' @export
#' @importFrom graphics rect par image text
#' @importFrom grDevices rgb

print.palette <- function(x, ...) {

    n <- length(x)

    old <- par(mar = c(0.5, 0.5, 0.5, 0.5))

    on.exit(par(old))

    image(1:n,
          1,
          as.matrix(1:n),
          col = x,
          ylab = "",
          xaxt = "n",
          yaxt = "n",
          bty = "n")

    rect(0, 0.9, n + 1, 1.1,
         col = rgb(1, 1, 1, 0.8),
         border = NA)

    text((n + 1) / 2,
         1,
         labels = attr(x, "name"),
         cex = 3,
         col = "#32373D",
         family = "mono")

}
