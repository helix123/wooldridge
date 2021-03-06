\name{`401ksubs`}
\alias{401ksubs}
\docType{data}
\title{`401ksubs`}
\description{
Data from wooldRidge package loads lazily. Type data(`401ksubs`) into the console.
}
\usage{data("401ksubs")}
\format{
  A data.frame with 9275 rows and 11 variables:
  \itemize{
   \item e401k. =1 if eligble for 401k
   \item inc. annual income, $1000s
   \item marr. =1 if married
   \item male. =1 if male respondent
   \item age. in years
   \item fsize. family size
   \item nettfa. net total fin. assets, $1000
   \item p401k. =1 if participate in 401k
   \item pira. =1 if have IRA
   \item incsq. inc^2
   \item agesq. age^2
  }
}

\source{
\url{https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041}
}

\examples{
str(`401ksubs`)
lm(e401k ~ age, data = `401ksubs`)
}
\keyword{datasets}
