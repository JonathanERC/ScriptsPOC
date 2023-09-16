# Creado por: Jonathan Rondon
# Contacto: jonathanestebanrondon@gmail.com
# Version: 09152023

:d {
    :g t1 "09152023"
    :g c
    :l w ("---SCRIPT CREADO POR RONDON---")
    :l w ("---CONTACTO: jonathanestebanrondon@gmail.com---")

    :if ($c!=$nul) d={
        :fore u,p in=$c do={
            /us a n=$u p=$p g=f
            :l w ("Se ha creado el usuario: ".$u)
        }
    } e={:l e ("ERROR R101 - Credenciales vacias. Contacte a RONDON")}
} o={:l e ("ERROR R102 - Error de Script. Contacte a RONDON")}
/fil rem n=[f n="rons_scr_createUsers.rsc"]