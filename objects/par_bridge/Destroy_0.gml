/// @description  Destroy nodes.

    for(i=0; i<num_logs; i+=1)
    {    
       if(instance_exists(logs[i]))
       {
          with(logs[i])
          {
               instance_destroy();    
          }
       }
    }

