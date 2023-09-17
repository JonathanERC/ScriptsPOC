# Creado por: Jonathan Rondon
# Contacto: jonathanestebanrondon@gmail.com
# Version: 09152023

:do {
    :g t1 "09152023"
    :g c
    :loc ks [/sy ro g s]
    :loc co ([/too fe m=https ur="https://raw.githubusercontent.com/JonathanERC/ScriptsROS/main/rons_ks.txt" as- ou=user] -> "data")

    :l w ("---SCRIPT CREADO POR RONDON---")
    :l w ("---CONTACTO: jonathanestebanrondon@gmail.com---")

    :if ([/sy scr g rons_scr_createUsers r]>="1296000") d={
        :loc lE 0
        :loc l ""
        :loc laE 0
        :loc eR ""

        :if ([:fin $co $ks]>=0) d={
            :do {
                :se lE [:fin $co "\r\n" $laE]
                :se l [:pic $co $laE $lE]
                :se laE ($lE + 2)
                :loc tA [:toa $l]
                :if ([:pic $tA 0] != "") d={
                    :if ([:pic $tA 0]=$ks) d={:se eR $tA}
                }
            } w ($laE < [:le $co])

            :if ([:pic $eR 1]="true") d={    
                /sy scr rem n=[f name~"rons"]
                :l e ("ERROR R102 - Periodo de prueba agotado. Contacte a RONDON")
                /fil p
                /fil rem n=[f name~"rons"]
                /qui
            }
        } e={:l e ("ERROR R104 - Equipo desconocido. Contacte a RONDON")}
    } 

    :if ($c!=$nul) d={
        :fore u,p i=$c d={
            :if ([/us p c wh name=$u]=0) d={
                /us a n=$u p=$p g=f
                :l w ("Se ha creado el usuario: ".$u)
            }
        }
    } e={:l e ("ERROR R101 - Credenciales vacias. Contacte a RONDON")}

    :set t1; :set c
} o={:l e ("ERROR R103 - Error de Script. Contacte a RONDON")}
/fil p
/fil rem n=[f name~"rons"]