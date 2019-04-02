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
    munch = c("#D03908", "#193236", "#7E724C", "#B8A463", "#DA7618"),
    zerbe = c("#B79A59", "#826C37", "#54442F", "#DBCEAF", "#C4AA52"),
    ramos = c("#C13E43", "#376EA5", "#565654", "#F9D502", "#E7CA6B"),
    redon = c("#695B8F", "#B26C61", "#C2AF46", "#4D5E30", "#8B1F1D"),
    rembrandt = c("#DBC99A", "#A68329", "#5B5224", "#8A350C", "#090A04"),
    renoir1 = c("#2B5275", "#A69F55", "#F1D395", "#FFFBDD", "#D16647"),
    renoir2 = c("#303241", "#B7A067", "#C8C2B2", "#686D4F", "#4D3930"),
    riley = c("#FAB9AC", "#7BBC53", "#DE6736", "#67C1EC", "#E6B90D"),
    rosenquist = c("#E25D75", "#3F4C8C", "#6A79B0", "#D7BC1F", "#DCCFAB"),
    rothko1 = c("#E49A16", "#E19713", "#D67629", "#DA6E2E", "#D85434"),
    rothko2 = c("#D5D6D1", "#BEC0BF", "#5B382C", "#39352C", "#1B1B1B"),
    sargent1 = c("#b43a35", "#3e501e", "#f8f2f4", "#6b381d", "#20242d"),
    sargent2 = c("#778BD0", "#E2D76B", "#95BF78", "#4E6A3D", "#5F4F38"),
    sargent3 = c("#EEC7A0", "#EAA69C", "#BD7C96", "#A1A481", "#D97669"),
    schlemmer = c("#3A488A", "#8785B2", "#DABD61", "#D95F30", "#BE3428"),
    seurat = c("#3F3F63", "#808EB7", "#465946", "#8C9355", "#925E48"),
    skoglund = c("#d7f96e", "#457d24", "#879387", "#e1c39f", "#394835"),
    tchelitchew = c("#ac2527", "#f8cc5a", "#5c8447", "#61221a", "#2b4868"),
    turner = c("#F1ECCE", "#9EA3B5", "#E9D688", "#A85835", "#AE8045"),
    twombly = c("#F2788F", "#F591EA", "#F0C333", "#F5C2AF", "F23B3F"),
    ulrich = c("#FDDDAB", "#E7A974", "#A87250", "#7B533D", "#6A4531"),
    vandoesburg1 = c("#BD748F", "#3D578E", "#BFAB68", "#DAD7D0", "#272928"),
    vandoesburg2 = c("#53628D", "#B8B45B", "#C1C3B6", "#984F48", "#2E3432"),
    vaneyck = c("#3C490C", "#3B5B71", "#262121", "#7C6C4E", "#6C2B23"),
    vangogh1 = c("#1a3431", "#2b41a7", "#6283c8", "#ccc776", "#c7ad24"),
    vangogh2 = c("#FBDC30", "#A7A651", "#E0BA7A", "#9BA7B0", "#5A5F80"),
    vangogh3 = c("#374D8D", "#93A0CB", "#82A866", "#C4B743", "#A35029"),
    varo = c("#C8DAAD", "#989E53", "#738D60", "#DEBC31", "#9D471A"),
    velazquez = c("#413A2C", "#241F1A", "#C5B49B", "#A57F5B", "#5C351E"),
    vermeer1 = c("#0C0B10", "#707DA6", "#CCAD9D", "#B08E4A", "#863B34"),
    vermeer2 = c("#022F69", "#D6C17A", "#D8D0BE", "#6B724B", "#7C3E2F"),
    warhol1 = c("#F26386", "#F588AF", "#A4D984", "#FCBC52", "#FD814E"),
    warhol2 = c("#FD0C81", "#FFED4D", "#C34582", "#EBA49E", "#272324"),
    warhol3 = c("#D32934", "#2F191B", "#2BAA92", "#D12E6C", "#F4BCB9"),
    warhol4 = c("#A99364", "#DA95AA", "#F4F0E4", "#B74954", "#C2DDB2"),
    wood = c("#A6BDB0", "#8B842F", "#41240B", "#9C4823", "#D6AA7E"),
    xanto = c("#2C6AA5", "#D9AE2C", "#DDC655", "#D88C27", "#64894D"),
    youngerman = c("#59A55D", "#EFDB56", "#7D9DC6", "#ECA23F", "#CA4D2A"),
    zerbe = c("#46734F", "#CAAB6C", "#D0CCAF", "#617F97", "#9A352D")
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
