% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/io.R
\name{process_ids}
\alias{process_ids}
\title{Return a subset of requested GCTX row/colum ids
out of the universe of all ids}
\usage{
process_ids(ids, all_ids, type = "rid")
}
\arguments{
\item{ids}{vector of requested ids. If \code{NULL}, no
subsetting is performed}

\item{all_ids}{vector of universe of ids}

\item{type}{flag indicating the type of ids being processed}
}
\value{
a list with the following elements
 \code{ids}: a character vector of the processed ids
 \code{idx}: an integer list of their corresponding indices in \code{all_ids}
}
\description{
Return a subset of requested GCTX row/colum ids
out of the universe of all ids
}
\details{
This is a low-level helper function
  which most users will not need to access directly
}
\examples{
gct_file <- system.file("extdata", "modzs_n25x50.gctx", package="cmapR")
ids <- read_gctx_ids(gct_file)
processed_ids <- cmapR:::process_ids(ids[1:10], ids)
str(processed_ids)

}
\seealso{
Other GCTX parsing functions: 
\code{\link{append_dim}()},
\code{\link{fix_datatypes}()},
\code{\link{parse_gctx}()},
\code{\link{read_gctx_ids}()},
\code{\link{read_gctx_meta}()},
\code{\link{write_gctx_meta}()},
\code{\link{write_gctx}()},
\code{\link{write_gct}()}
}
\concept{GCTX parsing functions}
\keyword{internal}
