# SAMPLE CODE SHOWING HOW TO ADD RMD TEMPLATES TO 
# AN R PACKAGE



# READ TEMPLATE TO R OBJECT (character vector)
tp <- readLines( "final-project-dashboard-template.rmd" )

# WRITE R OBJECT TO FILE
fileConn<-file( "output.rmd" )
writeLines( tp, fileConn )
close( fileConn )

# OPEN FILE
shell( "output.rmd" )

# SAVE AS R OBJECT FOR PACKAGE
save( tp, file="lab-xxx-xx.rdata" )

# WRITE R OBJECT TO FILE
dump( "tp" )
