import './App.css' 
import { useFech } from './useFetch';
import Cursos from '../componentes/Curso'
import Nav from '../componentes/Nav';
import Login from '../componentes/Login';


function App() {
  const {data} = useFech('http://localhost/api/cursos')
  return (
    <>
      <Nav/>
      
      <div className="contenedor-principal">
        
        <div className="contenedor-login">
          <Login/>
        </div>
        <br /><br /><br /><br />

        <h2>Cursos disponibles</h2>
        <div className='contenedor-cursos'>
          {data?.cursos.map((curso) => (
            <Cursos
              key={curso.cur_Id}
              nombreMaestro={curso.maestro.usu_Nombre}
              nombreCurso={curso.cur_Nom}
          />
        ))}
        </div>
        <div className="contenedor-prueba"></div>
      </div>
    </>
  );
}

export default App
