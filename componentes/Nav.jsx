import "./css/Nav.css"
import { datosUsuario } from "../src/Usuario"

function Nav(){
    console.log(datosUsuario)
    return(
        <>
            <nav className="menu">
                <ul className="ul">
                    <li className="li"><a href="contenedor-login">Home</a></li>
                    <li className="li"><a href="contenedor-curso">Cursos</a></li>
                    <li className="li"><a href="#">Profesores</a></li>
                </ul>
                <h2 className="logo">
                    {(datosUsuario)?datosUsuario.usu_Nombre:"Logo"}
                </h2>

                
            </nav>
        </>
        
    )
}
export default Nav
