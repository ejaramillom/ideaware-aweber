# ideaware-aweber
API consume to send user info to Aweber

Para consumir la API puede ingresar a la ruta

http://ideaware-aweber.herokuapp.com/api/v1/users/1

Reemplazar 1 por ID de usuario

Crear utilizando los parametros de entrada

params.require(:user).permit(:email, :name, :phone, :sendinformationstatus)
