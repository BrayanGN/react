import { useState,useEffect  } from "react";

export function useFechCopia(url){
    const [dataCopia,setData] = useState(null)
    
    useEffect(()=>{
        fetch(url)
        .then((response) => response.json())
        .then((data) => setData(data))
    }, [url])
    return {dataCopia}
}