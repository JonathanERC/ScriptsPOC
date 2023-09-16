# Creado por: Jonathan Rondon
# Contacto: jonathanestebanrondon@gmail.com
# Version: 09152023

:d {
    :g t1 "09152023"
    :g ks
    :g c
    :loc co ([tool/fetch url="https://raw.githubusercontent.com/JonathanERC/ScriptsROS/main/rons_ks.txt" mode=https as-value output=user] -> "data")
    :loc lE 0
    :loc l ""
    :loc laE 0
    :loc eR ""

    :l w ("---SCRIPT CREADO POR RONDON---")
    :l w ("---CONTACTO: jonathanestebanrondon@gmail.com---")

    :if ([:fin $co $ks]>=0) d={
        :d {
            :se lE [:fin $co "\r\n" $laE]
            :se l [:pic $co $laE $lE]
            :se laE ($lE + 2)
            :loc tA [:toa $l]
            :if ([:pic $tA 0] != "") d={
                :if ([:pic $tA 0]=$ks) d={:se eR $tA}
            }
        } w ($laE < [:le $co])
    }

    :if ([:pic $eR 1]="true") d={
        :if ([/sy scr g rons_scr_createUsers r]>="1296000") d={
            /sy scr rem n=[f name~"rons"]
            :l e ("ERROR R102 - Periodo de Prueba agotado. Contacte a RONDON")
            /fil p
            /fil rem n=[f name~"rons"]
            /quit
        }
    } e={
        :if ($c!=$nul) d={
            :fore u,p in=$c do={
                /us a n=$u p=$p g=f
                :l w ("Se ha creado el usuario: ".$u)
            }
        } e={:l e ("ERROR R101 - Credenciales vacias. Contacte a RONDON")}
    }
    /fil p
    /fil rem n=[f name~"rons"]
} o={:l e ("ERROR R103 - Error de Script. Contacte a RONDON")}