variable 	lBulk equal 6 #box units

variable 	lhalfx equal lx/2.0
variable 	lhalfy equal ly/2.0
variable 	lhalfz equal lz/2.0

# Group definitions
group           gMon type 3
group           gSolv type 1
group           gSolu type 2
group           gSol union gSolu gSolv


#####################################################
#Bulk definitions
#####################################################

variable 	lB1 equal ${lBulk} 
variable 	lB2 equal lz-${lBulk}

variable 	bulk_volume equal 2.0*${lBulk}*lx*ly

region 		rBulkB block INF INF INF INF INF ${lB1} units box
region 		rBulkT block INF INF INF INF ${lB2} INF units box
region 		rBulk union 2 rBulkB rBulkT

region 		rnoBulk block INF INF INF INF ${lB1} ${lB2} units box 
