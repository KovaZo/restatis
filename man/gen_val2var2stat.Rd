% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gen_var2-val2.R
\name{gen_val2var2stat}
\alias{gen_val2var2stat}
\title{gen_val2var2stat: Get Values From a Variable From a Statistic}
\usage{
gen_val2var2stat(
  code = NULL,
  detailed = FALSE,
  sortcriterion = c("code", "content"),
  error.ignore = FALSE,
  ...
)
}
\arguments{
\item{code}{a string with a maximum length of 15 characters. Code from a Genesis-Object. Only one code per iteration. "*"-Notations are possibly to be used as a placeholder.}

\item{detailed}{a logical. Indicator if function should return the detailed output of the iteration including all object-related information or only a shortened output including only code and object title. This parameter only affects the details of the variables-related output. The default is FALSE.}

\item{sortcriterion}{a string. Indicator if the output should be sorted by 'code' or 'content'. This is an parameter of the Genesis API call itself. The default is "code".}

\item{error.ignore}{a logical. Indicator if the function should stop if an error occurs or no object for the request is found or if it should produce a token as response.}

\item{...}{Additional parameter of the Genesis API call. These parameters are only affecting the Genesis API call itself for the variables, no further processing or the values-related objects.}
}
\value{
A list with all recalled elements from Genesis. Based on the detailed-parameter it contains more or less information, but always includes the code of the object, the title, and the type of the object. This is done to facilitate further processing of the data. Attributes are added to the dataframe describing the search configuration for the returned output.
}
\description{
Get values from variables from a statistic. Values for continuous variables cannot be extracted, so the function returns a warning message.
}
\examples{
\dontrun{
# Find the values of variables in a specific statistic with
# the code "21111" and a detailed description of the variables
object <- gen_val2var2stat(code = "21111", detailed = TRUE)
}

}
