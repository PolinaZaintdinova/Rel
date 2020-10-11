f <- function()
{
 setwd ("//vdiprofile/up$/st553-15/Documents")
  
  e1 <- new.env(parent = basenv())
  e2 <- new.env(parent = basenv())
  e3 <- new.env(parent = basenv())
  e4 <- new.env(parent = basenv())
  e5 <- new.env(parent = basenv())
  
  r1 <- read.table("file1.txt", header = FALSE)
  assign("x", r(read.table("file1.txt", header = FALSE)), 
         envir = e1
  )
  r2 <- read.table("file2.txt", header = FALSE)
  assign("x", r(read.table("file2.txt", header = FALSE)), 
         envir = e2
  )    
  r3 <- read.table("file3.txt", header = FALSE)
  assign("x", r(read.table("file3.txt", header = FALSE)), 
         envir = e3 
  )
  r4 <- read.table("file4.txt", header = FALSE)
  assign("x", r(read.table("file4.txt", header = FALSE)), 
         envir = e4 
  )
  r5 <- read.table("file5.txt", header = FALSE)
  assign("x", r(read.table("file5.txt", header = FALSE)), 
         envir = e5 
  )


boxplot(r(0,10000000))
for (v in r(get ("x" , envir = e1),
     get ("x" , envir = e2),
     get ("x" , envir = e3),
     get ("x" , envir = e4),
     get ("x" , envir = e5))) boxplot(v, 0,1, add = T)
  df <- data.frame(
  get ("x" , envir = e1),
get ("x" , envir = e2),
get ("x" , envir = e3),
get ("x" , envir = e4),
get ("x" , envir = e5)
)
df
}



  
