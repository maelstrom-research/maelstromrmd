#' Maelstrom HTML template for Opal Rmarkdown report
#'
#' A template for creating HTML reports with Maelstrom look and feel.
#'
#' @inheritParams rmarkdown::html_document
#' @param ... Other arguments to be passed to \code{\link{html_document}} .
#' @examples library(maelstromrmd)
#' @export
MRHTML <- function(number_sections = TRUE,
                   fig_width = 7,
                   fig_height = 5,
                   fig_retina = if(!fig_caption) 2,
                   fig_caption = FALSE,
                   dev = 'png',
                   toc = FALSE,
                   toc_depth = 3,
                   smart = TRUE,
                   self_contained = TRUE,
                   highlight = "default",
                   mathjax = "default",
                   css = NULL,
                   includes = NULL,
                   keep_md = FALSE,
                   lib_dir = NULL,
                   md_extensions = NULL,
                   pandoc_args = NULL,
                   extra_dependencies = NULL,
                   ...) {

    dep <- list(htmltools::htmlDependency("maelstrom", "0.0.900",
                                          system.file("rmarkdown", "templates",
                                                      "MRHTML",
                                                      "resources",
                                                      package = "maelstromrmd"),
                                          stylesheet = "maelstromrmd.css"))

    rmarkdown::html_document(
                   number_sections = number_sections,
                   fig_width = fig_width,
                   fig_height = fig_height,
                   fig_retina = fig_retina,
                   fig_caption = fig_caption,
                   dev = dev,
                   toc = toc,
                   toc_depth = toc_depth,
                   smart = smart,
                   self_contained = self_contained,
                   highlight = highlight,
                   theme = NULL,
                   mathjax = mathjax,
                   pandoc_args = pandoc_args,
                   extra_dependencies = dep
               )
}
