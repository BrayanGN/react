import { localStorageGet } from "./localStore"

const maestro = localStorageGet("maestro")
const estudiante =localStorageGet("estudiante")
let Usuario = ''
let TipoUsuario = null
if (maestro === 0.1 || estudiante === 0.1) {
    if (maestro != 0.1) {
        Usuario = maestro
    } else if(estudiante != 0.1){
        Usuario = estudiante
    }else{
        Usuario = undefined
    }
    
}else if (maestro || estudiante) {
    if (maestro.registro>estudiante.registro) {
        Usuario = maestro
    } else if(maestro.registro<estudiante.registro){
        Usuario = estudiante
    }
}

console.log(Usuario)
export const datosUsuario = Usuario 

if (estudiante) {
    TipoUsuario = 'estudiante'
} else {
    if(maestro){
        TipoUsuario = 'maestro'
    }else{
        alert("Error")
    }
}

export const tipoUsuario = TipoUsuario