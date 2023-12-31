% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geom_terminator_label.R
\name{geom_terminator_label}
\alias{geom_terminator_label}
\title{A 'ggplot2' geom to add text labels to transcription terminators}
\usage{
geom_terminator_label(
  mapping = NULL,
  data = NULL,
  stat = "identity",
  position = "identity",
  na.rm = FALSE,
  show.legend = FALSE,
  inherit.aes = FALSE,
  terminator_height = unit(4, "mm"),
  label_height = unit(3, "mm"),
  ...
)
}
\arguments{
\item{mapping, data, stat, position, na.rm, show.legend, inherit.aes, ...}{As
standard for ggplot2. inherit.aes is set to FALSE by default, as terminators
are not likely to share any plot aesthetics other than y.}

\item{terminator_height}{\code{grid::unit()} object giving the height of the terminator
being labelled, and hence the distance of the label above or below the
molecule line. Can be set as a negative value for terminators drawn below the
line. Defaults to 4 mm, to align labels with the default height of
\code{geom_terminator()}.}

\item{label_height}{\code{grid::unit()} object giving the height of the label
text. Defaults to 3 mm.}
}
\description{
\code{geom_terminator_label()} adds text labels to terminators drawn with
\code{geom_terminator()}.
}
\details{
Standard 'ggplot2' aesthetics for text are supported (see Aesthetics).
}
\section{Aesthetics}{

\itemize{
\item x (required; position of the terminator)
\item y (required; molecule)
\item label (required; the label text)
\item colour
\item size
\item alpha
\item family
\item fontface
\item angle
}
}

\examples{

ggplot2::ggplot(example_genes, ggplot2::aes(xmin = start, xmax = end,
                                            y = molecule, fill = gene)) +
  geom_gene_arrow() +
  geom_terminator(data = example_terminators, 
                  ggplot2::aes(x = position, y = molecule)) +
  geom_terminator_label(data = example_terminators,
                     ggplot2::aes(x = position, y = molecule, label = name)) +
  ggplot2::facet_wrap(~ molecule, scales = "free")

}
\seealso{
\code{\link[=geom_terminator]{geom_terminator()}}
}
