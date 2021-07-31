

BrLw <- function(numClass,odds,countoDo){
  
days=1:365
count=countoDo
repeatn=numClass
varstor=numeric()
  brownlow = 0
  for (i in 1:countoDo) {
    sam=sample(days,size=numClass,replace = T)
    y=duplicated(sam)
    if (sum(y)>0) brownlow=brownlow+1
    else brownlow = brownlow - odds
   }
  return(brownlow)
}


