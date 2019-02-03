#' Complete list of palettes
#'
#' Use \code{\link{rtist_palette}} to construct palettes of desired length.
#'
#' @export
rtist_palettes <- list(
    raphael = c("#FBE6C0", "#6B502C", "#BF2A1D", "#666581", "#E5A55E"),
    hokusai = c("#7F9DA7", "#C1B8AA", "#DDD4C6", "#0C2348", "#454A4D"),
    vermeer = c("#0A030A", "#4A5CA5", "#CDB87E", "#896134", "#70211B"),
    degas = c("#7A654E", "#E9CBB7", "#AC713B", "#78818D", "#352E23"),
    davinci = c("#000206", "#EFC775", "#2B2D18", "#5C7346", "#5A3A22"),
    vangogh = c("#010406", "#1E5880", "#FCCF49", "#F6E38E", "#A0C99C"),
    hopper = c("#772F19", "#EAE48D", "#629073", "#0F2732", "#1B2320"),
    klimt = c("#7D6A3C", "#C7AB52", "#779153", "#8F7581", "#B6634E"),
    rembrandt = c("#030504", "#F4DD9B", "#811D08", "#1E1507", "#252823"),
    munch = c("#D03908", "#193236", "#7E724C", "#B8A463", "#DA7618")
)

#' A generator for color palettes from famous artists
#'
#' These are some color palettes from famous works of art by well known artist.
#'
#' @param n Number of colors desired. All palettes now only have five colors.
#'   All color schemes are taken from this blog article:
#'   \href{http://www.skellermeyerdesigns.com/blog/10-color-palettes-based-on-famous-paintings}{10 Color Palettes Based on Famous Paintings}.
#'   If omitted, uses all colours.
#' @param artist Name of desired palette.
#' @param type Either "continuous" or "discrete". Use continuous if you want
#'   to automatically interpolate between colours.
#' @importFrom graphics rect par image text
#' @importFrom grDevices rgb
#' @return A vector of colours.
#' @export
#' @keywords colors
#' @examples
#' rtist_palette("vangogh")
#' rtist_palette("hokusai", 3)
#'
#' # If you need more colours than normally found in a palette, you
#' # can use a continuous palette to interpolate between existing
#' # colours
#' pal <- rtist_palette(21, artist = "raphael", type = "continuous")
rtist_palette <- function(artist, n, type = c("discrete", "continuous")) {
    type <- match.arg(type)

    pal <- rtist_palettes[[artist]]
    if (is.null(pal))
        stop("Palette not found.")

    if (missing(n)) {
        n <- length(pal)
    }

    if (type == "discrete" && n > length(pal)) {
        stop("Number of requested colors greater than what palette can offer")
    }

    out <- switch(type,
                  continuous = grDevices::colorRampPalette(pal)(n),
                  discrete = pal[1:n]
    )
    structure(out, class = "palette", artist = artist)
}

#' @export
#' @importFrom graphics rect par image text
#' @importFrom grDevices rgb
print.palette <- function(x, ...) {
    n <- length(x)
    old <- par(mar = c(0.5, 0.5, 0.5, 0.5))
    on.exit(par(old))

    image(1:n, 1, as.matrix(1:n), col = x,
          ylab = "", xaxt = "n", yaxt = "n", bty = "n")

    rect(0, 0.9, n + 1, 1.1, col = rgb(1, 1, 1, 0.8), border = NA)
    text((n + 1) / 2, 1, labels = attr(x, "artist"), cex = 1, family = "serif")
}
rtist_palette("hokusai", 5, type = "discrete")
