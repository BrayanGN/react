import { FaStar, FaRegStar } from 'react-icons/fa';

function Start(score){
    return(
        <div>
            {
                [... new Array(5)].map((star,index)=>{
                    return index < score.calificacion ? <FaStar></FaStar> : <FaRegStar></FaRegStar>})
            }
            
        </div>
    )
}
export default Start