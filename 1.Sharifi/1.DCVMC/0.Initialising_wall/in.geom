#This script has the geometry and group definitions

####################################################
# geometry
####################################################

variable lBulk equal 3 #lattice units

variable lhalfx equal lx/2.0
variable lhalfy equal ly/2.0
variable lhalfz equal lz/2.0



#####################################################
#Bulk definitions
#####################################################

variable lB1 equal ${lBulk} 
variable lB2 equal ${Lz}-${lBulk}

region rTop   block INF INF INF INF 15 18 units lattice
region rBulkB block INF INF INF INF INF ${lB1} units lattice
region rBulkT block INF INF INF INF ${lB2} INF units lattice
region rBulk union 2 rBulkB rBulkT
region rColloid sphere ${lhalfx} ${lhalfy} ${lhalfz} ${RColloid} units box
region rCollcomp sphere ${lhalfx} ${lhalfy} ${lhalfz} ${RColloid} units box side out

#####################################################
#Reservoirs
#####################################################

region rRes1 block 3 6 0 ${Ly} 0 ${Lz} units lattice 
region rRes2 block 18 21 0 ${Ly} 0 ${Lz} units lattice
region rInter block 6 21 0 ${Ly} 0 ${Lz}  units lattice


#region rNo_bulk block INF INF INF INF ${lB1} ${lB2} units box

