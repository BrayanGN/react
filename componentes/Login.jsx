import { datosUsuario } from '../src/Usuario';
import  {  useState } from 'react';
import { useFech } from '../src/useFetch';
import { useFechCopia } from '../src/useFetchCopia';
import { localStorageSet } from '../src/localStore';
import "./css/login.css"

function Login() {
  const [documento, setDocumento] = useState('')
  const [contrasena, setContrasena] = useState('')
  

  const {data} = useFech('http://localhost/api/estudiantes')
  const {dataCopia} = useFechCopia('http://localhost/api/maestros')
  

  const handleDocumentoChange = (event) => {
    setDocumento(event.target.value)
  }

  const handleContrasenaChange = (event) => {
    setContrasena(event.target.value)
  }
  const handleLogin = () => {
    const Estudiante = data?.estudiantes.find(estudiante =>( estudiante.est_usuari == documento && estudiante.usu_Contraseña == contrasena))
    console.log(datosUsuario)
    if (Estudiante) {
      Estudiante.cargo = "estudiante"
      const json = Estudiante
      localStorageSet("estudiante",json)
      const e = Estudiante.usu_Nombre
      location.reload()
      alert("Bienvenido "+e)
    }else{
      const Maestro = dataCopia?.maestros.find(maestro =>( maestro.usu_Identificacion == documento && maestro.usu_Contraseña == contrasena))
      if (Maestro) {
        Maestro.cargo = "maestro"
        const json = Maestro
        localStorageSet("maestro",json)
        const e = Maestro.usu_Nombre;
        
        location.reload()
        alert("Bienvenido " + e);
      }else{
        alert("Error contraseña o usuario incorrectos")
      }
      
    }
    
    if (documento && contrasena) {
      console.log('Inicio de sesión exitoso')
    } else {
      console.log('Falta el documento o la contraseña')
    }
  }

  return (
    <div className='container'>
      <h2>Login</h2>
      <div className='container-documento'>
        <label htmlFor="documento" className='label-documento'>Documento:</label>
        <input
          className='input-field'
          type="text"
          id="documento"
          value={documento}
          onChange={handleDocumentoChange}
        />
      </div>
      <div className='container-contrasena'>
        <label htmlFor="contrasena" className='label-contrasena'>Contraseña:</label>
        <input
          className='input-field'
          type="password"
          id="contrasena"
          value={contrasena}
          onChange={handleContrasenaChange}
        />
      </div>
      <button onClick={handleLogin} className='button-login'>Iniciar sesión</button>
    </div>
  );
}

export default Login;
