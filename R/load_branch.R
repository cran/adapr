#' Loads a single R object from file
#' @param file contains R object
#' @return object for file that was read
#' @export
#' 
Load.branch <- function(file){
  
  # Loads obj from source_info
  # updates dependency.file
  
  if(!exists("source_info")){
    
    source_info <- list()
    
    stop("Load.branch (adapr) error: source_info not found")
    
  }
  
  file.info <- Get.file.info(source_info,data="",file0="",path.grep=file)
  
  obj <- load(file.info[["fullname"]],envir=parent.frame())
  
  # print(file.info[["fullname"]])
  
  df.update <- data.frame(target.file=file.info[["file"]],target.path=file.info[["path"]],target.description=file.info[["description"]],dependency="in",stringsAsFactors=FALSE)
  
  source_info$dependency$update(df.update)
  
  return(get(obj,envir=parent.frame()))
  
}