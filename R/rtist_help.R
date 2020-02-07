#' Name and painting for all rtist palettes
#'
#' Use function to get a print of all palettes with painting and artist name.
#'
#' @return A printed list of rtist palettes with name of their associated painting and artist.
#' @export
#'
#' @examples rtist_help()

rtist_help <- function() {

    rtist_list <- data.frame(rtist = c("raphael", "hokusai", "vermeer", "degas", "davinci", "vangogh", "hopper", "klimt", "rembrandt", "munch", "warhol", "okeefe", "oldenburg", "picasso", "pollock"),
                             Painting = c("Saint Catherine of Alexandria", "Great Wave off Kanagawa", "Girl with a Pearl Earring", "L Etoile", "Mona Lisa", "Starry Night", "Nighthawks", "The Kiss", "The Nightwatch", "The Scream", "Flower, 1964", "Abstraction Blue", "Red Tights with Fragment 9", "The Dream", "Number 1"),
                             Artist = c("Raphael", "Hokusai", "Johannes Vermeer", "Edgar Degas", "Leonardo Da Vinci", "Vincent Van Gogh", "Edward Hopper", "Gustav Klimt", "Rembrandt", "Edward Munch", "Andy Warhol", "Georgia O'Keefe", "Claes Oldenburg", "Pablo Picasso", "Jackson Pollock")
    )

    return(print(rtist_list))

}


