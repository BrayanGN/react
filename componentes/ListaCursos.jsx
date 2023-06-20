import Cursos from './Curso';

function ListaCursos (props){
    
    const cur = props.cursos
    console.log(cur)
  return (
    <div className="Contenedor-principal">
        {cur.map((curso) => (
          <Cursos
            key={curso.cur_Id}
            nombreMaestro={curso.maestro.usu_Nombre}
            nombreCurso={curso.cur_Nom}
          />
        ))}
    </div>
  );
};

export default ListaCursos;
