PS3="Escoja la opcion que quiera realizar: "

select opcion in Iniciar_PKI Configurar_Vars Construir_SUB-CA Salir
do
    case $opcion in
        "Iniciar_PKI")
            echo "Iniciando PKI"
            ./easyrsa init-pki;;
        "Configurar_Vars")
           echo "Configurar país (Código 2 letras): "
           read var1
           echo "set_var EASYRSA_REQ_COUNTRY    '$var1'" >> vars
           echo "Configurar provincia: "
           read var2
           echo "set_var EASYRSA_REQ_PROVINCE    '$var2'" >> vars
           echo "Configurar ciudad: "
           read var3
           echo "set_var EASYRSA_REQ_CITY    '$var3'" >> vars
           echo "Configurar organización: "
           read var4
           echo "set_var EASYRSA_REQ_ORG    '$var4'" >> vars
           echo "Configurar correo: "
           read var5
           echo "set_var EASYRSA_REQ_EMAIL    '$var5'" >> vars
           echo "Configurar Unidad Organizativa: "
           read var6
           echo "set_var EASYRSA_REQ_OU    '$var6'" >> vars
           echo "set_var EASYRSA_ALGO   'ec'" >> vars
           echo "set_var EASYRSA_DIGEST         'sha512'" >> vars;;
        "Construir_SUB_CA")
           echo "Construyendo la CA Intermedia"
           ./easyrsa build-ca nopass subca;;
        "Salir")
           echo "Saliendo..."
           break;;
        *)
           echo "No válido";;
    esac
done
