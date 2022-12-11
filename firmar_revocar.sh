PS3="Escoja la opcion que quiera realizar: "

select opcion in Revocar_certificado Generar_y_firmar_certificado Salir
do
    case $opcion in
        "Revocar_certificado")
            echo "Elija el nombre del certificado a revocar: "
            read var1
            ./easyrsa revoke $var1
            echo "Se va a generar una nueva CRL..."
            ./easyrsa gen-crl
            echo "Se ha generado una nueva CRL, no olvide distribuirla para que la revocación surja efecto.";;
        "Generar_y_firmar_certificado")
            echo "Elija nombre de certificado: "
            read var1
            ./easyrsa gen-req $var1 nopass
            echo "Elija para que quiere firmar el certificado (client, server)"
            read var2
            ./easyrsa sign-req $var2 $var1
            echo "Certificado creado y firmado!";;
        "Salir")
           echo "Saliendo..."
           break;;
        *)
           echo "No válido";;
    esac
done
