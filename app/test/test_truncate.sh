#!/bin/bash 
 echo "/................................................./"    
 echo "/      ****API TEST******                        /"
 echo "/.............................................../ "



function Truncate_tbl(){
  curl  -X GET  -H  'x-api-key: lnx1337' http://localhost:3000/db
}

function Create(){
	 echo 'Creando Usuario'
	 for((usr=1;usr<=100;usr++))
	  do
       curl -X POST   -H  'x-api-key: lnx1337'  -F nombre="Usuario$usr" -F apellido="Apellido$usr" -F email="email$usr@mail.com" -F password="password$usr" http://localhost:3000/users/add
      done  
}

function Update(){
   echo "Actualizando Usuario"
   curl  -X PUT  -H  'x-api-key: lnx1337'  -F nombre="UsuarioModificado$usr" -F email="emailModificado$usr@mail.com" http://localhost:3000/users/edit/$usr
}

function ReadUsers(){
    echo "Listando Usuarios"
    curl  -X GET  -H  'x-api-key: lnx1337' http://localhost:3000/users/list
}

function Delete(){
    echo "Borrando Usuario"
    for((usr=1;usr<=100;usr++))
	  do
       curl -X DELETE   -H  'x-api-key: lnx1337'   http://localhost:3000/users/$usr
      done 
}

Truncate_tbl
#Create
#ReadUsers
#Update
#ReadUsers
#Delete


