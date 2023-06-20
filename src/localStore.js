export function localStorageSet(llave,json){
    delete json.usu_Contraseña
    json.registro = new Date().getTime()
    localStorage.setItem(llave,JSON.stringify(json) )
}

export function localStorageGet(llave){
    const local = JSON.parse(localStorage.getItem(llave)) 
    const usuario = local??0.1
    console.log(usuario)
    return usuario
}