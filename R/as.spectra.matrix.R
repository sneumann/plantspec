#' Function to convert data to an object of class \code{spectra.matrix}.
#' 
#' Convert data to an object of class \code{spectra.matrix} from an object of
#' class \code{spectra.list}.
#' 
#' 
#' @param x Object of class \code{spectra.list}.
#' @param ...  Additional args.
#' @return Returns an object of class \code{spectra.matrix}.
#' @author Daniel M Griffith
#' @keywords manipulation
#' @examples
#' 
#' \dontrun{
#' data(shootout)
#' scans <- as.spectra.list(shootout_scans)
#' scans <- as.spectra.matrix(scans)
#' }
#' 
#' @export as.spectra.matrix
#' @export 

as.spectra.matrix <- function(x, ...){
  
  if(is.matrix(x)|is.data.frame(x)){
    
    newmat <- as.matrix(x)

    colnames(newmat) <- colnames(x)
    row.names(newmat) <- row.names(x)
    
    attr(newmat, "wave_unit") <- NA
    attr(newmat, "measurement_unit") <- NA
    
    class(newmat) <- "spectra.matrix"
    return(as.matrix(newmat))
    
  }else{
  
    #if(class(x)=="spectrum"){x <- list(x)}
    ele1 <- x[[1]]
    cnames <- ele1$wave_value
    
    newmat <- lapply(X=x,FUN=function(x){x$measurement})
    newmat <- t(data.frame(newmat))
    
    colnames(newmat) <- cnames
    class(newmat) <- "spectra.matrix"
    
    attr(newmat, "wave_unit") <- attr(ele1, "wave_unit")
    attr(newmat, "measurement_unit") <- attr(ele1, "measurement_unit")
    
    if("subset_string" %in% names(attributes(x))){
      
      attr(newlist,"subset_string") <- attr(x,"subset_string")
      
    }
    
    return(as.matrix(newmat))
    
  }
  
}
