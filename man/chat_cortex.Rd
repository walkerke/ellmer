% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/provider-cortex.R
\name{chat_cortex}
\alias{chat_cortex}
\title{Create a chatbot that speaks to the Snowflake Cortex Analyst}
\usage{
chat_cortex(
  account = snowflake_account(),
  credentials = NULL,
  model_spec = NULL,
  model_file = NULL,
  api_args = list(),
  echo = c("none", "text", "all")
)
}
\arguments{
\item{account}{A Snowflake \href{https://docs.snowflake.com/en/user-guide/admin-account-identifier}{account identifier},
e.g. \code{"testorg-test_account"}. Defaults to the value of the
\code{SNOWFLAKE_ACCOUNT} environment variable.}

\item{credentials}{A list of authentication headers to pass into
\code{\link[httr2:req_headers]{httr2::req_headers()}}, a function that returns them when called, or
\code{NULL}, the default, to use ambient credentials.}

\item{model_spec}{A semantic model specification, or \code{NULL} when
using \code{model_file} instead.}

\item{model_file}{Path to a semantic model file stored in a Snowflake Stage,
or \code{NULL} when using \code{model_spec} instead.}

\item{api_args}{Named list of arbitrary extra arguments appended to the body
of every chat API call.}

\item{echo}{One of the following options:
\itemize{
\item \code{none}: don't emit any output (default when running in a function).
\item \code{text}: echo text output as it streams in (default when running at
the console).
\item \code{all}: echo all input and output.
}

Note this only affects the \code{chat()} method.}
}
\description{
\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#deprecated}{\figure{lifecycle-deprecated.svg}{options: alt='[Deprecated]'}}}{\strong{[Deprecated]}}

\code{\link[=chat_cortex]{chat_cortex()}} was renamed to \code{\link[=chat_cortex_analyst]{chat_cortex_analyst()}} to distinguish it from
the more general-purpose Snowflake Cortex chat function, \code{\link[=chat_snowflake]{chat_snowflake()}}.
}
\keyword{internal}
