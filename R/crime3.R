#' crime3
#'
#' Data from wooldRidge package loads lazily. Type data(crime3) into the console.
#'
#' @docType data
#'
#' @usage data(crime3)
#'
#' @format A data.frame with 106 rows and 12 variables:
#' \describe{
#'  \item{district}{district number}
#'  \item{year}{72 or 78}
#'  \item{crime}{crimes per 1000 people}
#'  \item{clrprc1}{clear-up perc, prior year}
#'  \item{clrprc2}{clear-up perc, two-years prior}
#'  \item{d78}{=1 if year = 78}
#'  \item{avgclr}{(clrprc1 + clrprc2)/2}
#'  \item{lcrime}{log(crime)}
#'  \item{clcrime}{change in lcrime}
#'  \item{cavgclr}{change in avgclr}
#'  \item{cclrprc1}{change in clrprc1}
#'  \item{cclrprc2}{change in clrprc2}
#' }
#' @source \url{http://www.cengage.com/c/introductory-econometrics-a-modern-approach-6e-wooldridge}
"crime3"
 
 