#' fair
#'
#' Data loads lazily. Type data(fair) into the console.
#'
#' @docType data
#'
#' @usage data(fair)
#'
#' @format A data.frame with 21 rows and 28 variables:
#' \itemize{
#'  \item year. 1916 to 1992, by 4
#'  \item V. prop. dem. vote
#'  \item I. =1 if demwh, -1 if repwh
#'  \item DPER. incumbent running
#'  \item DUR. duration
#'  \item g3. avg ann grwth rte, prev 3 qrts
#'  \item p15. avg ann inf rate, prev 15 qtrs
#'  \item n. quarters of good news
#'  \item g2. avg ann grwth rte, prev 2 qrts
#'  \item gYR. ann grwth rte, prev year
#'  \item p8. avg ann inf rate, prev 8 qtrs
#'  \item p2YR. inf rte over 2 yr period
#'  \item Ig2. I*g2
#'  \item Ip8. I*p8
#'  \item demwins. =1 if V > .5
#'  \item In. I*n
#'  \item d. =1 in 1920, 1944,1948
#'  \item Id. I*d
#'  \item Ig3. I*g3
#'  \item Ip151md. I*p15*(1-d)
#'  \item In1md. I*n*(1-d)
#' }
#' @source \url{https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041}
#' @examples  str(fair)
"fair"
 
 
