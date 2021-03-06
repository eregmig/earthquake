% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/themes.R
\name{theme_timeline}
\alias{theme_timeline}
\title{Theme for eq_timeline figures}
\usage{
theme_timeline(base_size = 11, base_family = "")
}
\arguments{
\item{base_size}{Default \code{11}, base size of text}

\item{base_family}{Default \code{sans}, text family}
}
\value{
Nothing
}
\description{
Convert figure theme to a white background, without Y axis and legend at the bottom figure
}
\examples{
\dontrun{
library(dplyr); library(ggplot2)
data \%>\% eq_clean_data() \%>\%
   dplyr::filter(data, COUNTRY \%in\% c("GREECE", "ITALY")) \%>\%
   ggplot(aes(x = DATE, y = COUNTRY, color = TOTAL_DEATHS, size = EQ_PRIMARY,
   magnitude = EQ_PRIMARY, label = LOCATION_NAME)) +
   geom_timeline(xmin = "2000-01-01", xmax = "2010-01-01") +
   theme_timeline()
}
}
