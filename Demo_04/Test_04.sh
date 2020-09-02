#! /bin/bash

#逻辑非
a=55
test  ! "${a}" -ge 0
echo ${?}
echo

#逻辑与
b=65
c=35
test ${a} -ge ${c} -a ${c} -le ${b}
echo ${?} 
echo 

test ${a} -lt ${b} -a ${b} -lt ${c}
echo ${?} 
echo


#逻辑非
test ${a} -ge ${c} -o ${c} -le ${b}
echo ${?} 
echo 

test ${a} -lt ${b} -o ${b} -lt ${c}
echo ${?} 
echo


