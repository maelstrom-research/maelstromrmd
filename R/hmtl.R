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
                   toc = TRUE,
                   toc_depth = 2,
                   smart = TRUE,
                   self_contained = TRUE,
                   highlight = "tango",
                   mathjax = "default",
                   css = NULL,
                   includes = NULL,
                   keep_md = FALSE,
                   lib_dir = NULL,
                   md_extensions = NULL,
                   pandoc_args = NULL,
                   ...) {

    extra_dependencies <- list(rmarkdown::html_dependency_jquery(),
                               rmarkdown::html_dependency_jqueryui(),
                               html_dependency_navigation(),
                               html_dependency_bootstrap("bootstrap"),
                               html_dependency_magnific_popup(),
                               html_dependency_mr())

    extra_args <- list(...)
    if ("extra_dependencies" %in% names(extra_args)) {
        extra_dependencies <- append(extra_dependencies,
                                     extra_args[["extra_dependencies"]])
        extra_args[["extra_dependencies"]] <- NULL
        extra_args[["mathjax"]] <- NULL
    }

    html_document_args <- list(
        template = system.file("templates/MRHTML/MRHTML.html",
                               package = "maelstromrmd"),
        extra_dependencies = extra_dependencies,
        fig_width = fig_width,
        fig_height = fig_height,
        fig_caption = fig_caption,
        highlight = highlight,
        toc = toc,
        toc_depth = toc_depth
    )
    html_document_args <- append(html_document_args, extra_args)
    html_document_func <- rmarkdown::html_document

    do.call(html_document_func, html_document_args)

}

html_dependency_mr <- function() {
    htmltools::htmlDependency("maelstrom",
                              "0.0.990",
                              system.file("templates/MRHTML",
                                          package = "maelstromrmd"),
                              script = "mr.js",
                              stylesheet = "mr.css")
}
