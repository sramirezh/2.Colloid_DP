#This script has the geometry and group definitions


variable lhalfx equal lx/2.0
variable lhalfy equal ly/2.0
variable lhalfz equal lz/2.0


#####################################################
#Groups definitions
#####################################################
group gSolv type 1 
group gSolu type 2
group gCol type 3
group gSol union gSolu gSolv

variable nCol equal count(gCol)
