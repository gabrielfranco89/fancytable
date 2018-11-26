
ornt = function(tab, ori){
  switch(ori,
         h = prop.table(tab, 1),
         v = prop.table(tab, 2),
         t = prop.table(tab))
}

## The fancy table | num (prop%)
fancytable <- function(tab, 
                       orientation = "h",
                       dec = 2){
  


    if(is.na(ncol(tab))){

        ## Set prop table
        tab.p = ornt(tab, ori = "t")
        J=1
        
        ## Create matrix output
        output = matrix(NA, ncol =J, nrow=nrow(tab))
        for(r in 1:nrow(tab)){
                output[r,1] <- paste(tab[r],
                                     " (",
                                     round(tab.p[r]*100,dec),
                                     "%)", 
                                     sep = "")
        }
        output = as.table(output)
        rownames(output) = rownames(tab)
        
    }else {
        
        ## Set prop table
        tab.p = ornt(tab, ori = orientation)
        I = nrow(tab)
        J = ncol(tab)
        
        ## Create matrix output
        output = matrix(NA, nrow = I, J)
        
        for(r in 1:I){
            for(c in 1:J){
                output[r,c] <- paste(tab[r,c],
                                     " (",
                                     round(tab.p[r,c]*100,dec),
                                     "%)", 
                                     sep = "")
            }
        }
        output = as.table(output)
        rownames(output) = rownames(tab)
        colnames(output) = colnames(tab)
    }
  
  return(output)
  
}
