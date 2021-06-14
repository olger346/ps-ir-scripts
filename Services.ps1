 $estado = get-service | where-object {$_.Name -eq 'Appinfo'}
 if ($estado.Status -ne 'Running' ){
 write-host 'El servicio no se encuentra corriendo'
 
 }elseif ($estado.Status -eq 'Running'){
 Write-Host 'El servicio se encuentra activo en el equipo'
 
 }
