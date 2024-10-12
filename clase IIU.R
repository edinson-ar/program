
# DCA ---------------------------------------------------------------------


# Paquete necesario para crear el diseño
if(!require(agricolae)) install.packages("agricolae", dependencies=TRUE)
library(agricolae)

# Definir los tratamientos
tratamientos <- c(0, 50, 100)

# Definir el número de repeticiones
replicaciones <- 5

# Crear el diseño DCA
dca <- design.crd(tratamientos, replicaciones, serie=1)

# Mostrar el diseño generado
dca$book

# Si quieres guardar el diseño en un archivo CSV
write.csv(dca$book, "diseño_DCA.csv", row.names=FALSE)

# DCBA --------------------------------------------------------------------

library(agricolae)
trt<-c(3,2) # factorial 3x2
outdesign <-design.ab(trt, r=3, serie=2)
book<-outdesign$book
