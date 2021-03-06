% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/crime2.R
\docType{data}
\name{crime2}
\alias{crime2}
\title{crime2}
\format{A data.frame with 92 rows and 34 variables:
\itemize{
 \item pop. population
 \item crimes. total number index crimes
 \item unem. unemployment rate
 \item officers. number police officers
 \item pcinc. per capita income
 \item west. =1 if city in west
 \item nrtheast. =1 if city in NE
 \item south. =1 if city in south
 \item year. 82 or 87
 \item area. land area, square miles
 \item d87. =1 if year = 87
 \item popden. people per sq mile
 \item crmrte. crimes per 1000 people
 \item offarea. officers per sq mile
 \item lawexpc. law enforce. expend. pc, $
 \item polpc. police per 1000 people
 \item lpop. log(pop)
 \item loffic. log(officers)
 \item lpcinc. log(pcinc)
 \item llawexpc. log(lawexpc)
 \item lpopden. log(popden)
 \item lcrimes. log(crimes)
 \item larea. log(area)
 \item lcrmrte. log(crmrte)
 \item clcrimes. change in lcrimes
 \item clpop. change in lpop
 \item clcrmrte. change in lcrmrte
 \item lpolpc. log(polpc)
 \item clpolpc. change in lpolpc
 \item cllawexp. change in llawexp
 \item cunem. change in unem
 \item clpopden. change in lpopden
 \item lcrmrt_1. lcrmrte lagged
 \item ccrmrte. change in crmrte
}}
\source{
\url{https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041}
}
\usage{
data(crime2)
}
\description{
Data loads lazily. Type data(crime2) into the console.
}
\examples{
 str(crime2)
}
\keyword{datasets}
