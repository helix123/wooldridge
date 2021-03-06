#' volat
#'
#' Data loads lazily. Type data(volat) into the console.
#'
#' @docType data
#'
#' @usage data(volat)
#'
#' @format A data.frame with 558 rows and 17 variables:
#' \itemize{
#'  \item date. 1947.01 to 1993.06
#'  \item sp500. S&P 500 index
#'  \item divyld. div. yield annualized rate
#'  \item i3. 3 mo. T-bill annualized rate
#'  \item ip. index of industrial production
#'  \item pcsp. pct chg, sp500, ann rate
#'  \item rsp500. return on sp500: pcsp + divyld
#'  \item pcip. pct chg, IP, ann rate
#'  \item ci3. i3 - i3[_n-1]
#'  \item ci3_1. ci3[_n-1]
#'  \item ci3_2. ci3[_n-2]
#'  \item pcip_1. pcip[_n-1]
#'  \item pcip_2. pcip[_n-2]
#'  \item pcip_3. pcip[_n-3]
#'  \item pcsp_1. pcip[_n-1]
#'  \item pcsp_2. pcip[_n-2]
#'  \item pcsp_3. pcip[_n-3]
#' }
#' @source \url{https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041}
#' @examples  str(volat)
"volat"
 
 
