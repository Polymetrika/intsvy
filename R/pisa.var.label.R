pisa.var.label <-
function(folder=getwd(), name="Variable labels", output=getwd()) {
  
  files.all <- lapply(c("INT_ST", "INT_PA", "INT_SC"), function(x) list.files(folder, 
   full.names= TRUE, pattern=paste("^", x, ".*.sav$", sep=""), recursive=TRUE))

  if (sum(sapply(files.all, length))==0){
    stop(paste("cannot locate the original files in", folder))
  }
  
  list.name <- substr(files.all, nchar(files.all) - 14, nchar(files.all) - 10)
  names(files.all) <- list.name

  var.label <- lapply(files.all, function(x) description(spss.system.file(x[[1]])))
  
  # Participating countries
  
  country <- as.data.frame(adj.measlev(spss.system.file(files.all[[3]])[, c("CNT", "COUNTRY")]))
  
  # Participating countries in dataset (must be all)
  country.list <- pisa.country[pisa.country$ISO %in% unique(country$CNT) , ]
  rownames(country.list) <-NULL
  
  # setdiff(unique(country$CNT), pisa.country$ISO) must be zero
    
  var.label[[length(files.all)+1]] <- country.list
  names(var.label)[length(var.label)] <-"Participating countries"
    
  # Print labels in list and text file
  capture.output(var.label, file=file.path(output, paste(name, ".txt", sep="")))
  cat('The file "', paste(name, ".txt", sep=""), '" in directory "', output, '" contains the variable labels of the complete dataset', sep=' ', "\n")
  return(var.label)
}