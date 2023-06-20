
import vite from './vite.svg'
import Start from './Start'
import './css/Curso.css'
import { margin,estrella,contenedorCurso,elementos,elemento,elemento1,fotoDes } from './css/estilos'

function Cursos(props){
    return(
        <div className='contenedor-curso' style={contenedorCurso}>
            <img src={vite} alt="imagen del curso" style={fotoDes} />
            <div style={elementos}>
                <p style={elemento1}>{props.nombreCurso}</p>
                <p style={elemento}>{props.nombreMaestro}</p>
                <div className='con-cali' style={estrella}>
                    <p style={margin}>2,0</p><Start  calificacion={2}/><p style={margin}>(90)</p>
                </div>
                <div className='inscripcion-curso'>

                </div>
            </div>
        </div>
    )
}
export default Cursos