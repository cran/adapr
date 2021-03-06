% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Render.R
\name{renderRmd}
\alias{renderRmd}
\title{Renders and Rmarkdown file}
\usage{
renderRmd(Rmd.file, description = "Rmarkdown", ...)
}
\arguments{
\item{Rmd.file}{Filename of .Rmd file within the R Markdown directory (source_info$markdown.dir)}

\item{description}{of rendered file}

\item{...}{extra arguments for rmarkdown::render}
}
\value{
Rendered output file information
}
\description{
Renders and Rmarkdown file
}
\details{
Not for direct use. Uses rmarkdown library to access objects in the R script. Will track dependencies for objects used within Rmd file.
}
\examples{
\dontrun{
source_info <- create_source_file_dir("adaprHome","read_data.R")
renderRmd("read_data.Rmd")
} 
}
