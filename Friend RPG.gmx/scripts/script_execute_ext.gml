///script_execute_ext(script_reference, parameter_array)

var script = argument0;
var arr = argument1;
var argAmt;

if (is_array(arr))
{
    argAmt = array_length_1d(arr);
}
else
{
    argAmt = 0;
}

if script_exists(script)
{
    switch (argAmt)
    {
        case 0: 
            return script_execute(script); 
            break;
        case 1:  
            return script_execute(script,arr[0]); 
            break;
        case 2:  
            return script_execute(script,arr[0],arr[1]); 
            break;
        case 3:  
            return script_execute(script,arr[0],arr[1],arr[2]); 
            break;
        case 4:  
            return script_execute(script,arr[0],arr[1],arr[2],arr[3]); 
            break;
        case 5:  
            return script_execute(script,arr[0],arr[1],arr[2],arr[3],arr[4]); 
            break;
        case 6:  
            return script_execute(script,arr[0],arr[1],arr[2],arr[3],arr[4],arr[5]); 
            break;
        case 7:  
            return script_execute(script,arr[0],arr[1],arr[2],arr[3],arr[4],arr[5],arr[6]); 
            break;
        case 8:  
            return script_execute(script,arr[0],arr[1],arr[2],arr[3],arr[4],arr[5],arr[6],arr[7]); 
            break;
        case 9:  
            return script_execute(script,arr[0],arr[1],arr[2],arr[3],arr[4],arr[5],arr[6],arr[7],arr[8]); 
            break;
        case 10:  
            return script_execute(script,arr[0],arr[1],arr[2],arr[3],arr[4],arr[5],arr[6],arr[7],arr[8],arr[9]); 
            break;
        case 11:  
            return script_execute(script,arr[0],arr[1],arr[2],arr[3],arr[4],arr[5],arr[6],arr[7],arr[8],arr[9],arr[10]); 
            break;
        case 12:  
            return script_execute(script,arr[0],arr[1],arr[2],arr[3],arr[4],arr[5],arr[6],arr[7],arr[8],arr[9],arr[10],arr[11]); 
            break;
        case 13:  
            return script_execute(script,arr[0],arr[1],arr[2],arr[3],arr[4],arr[5],arr[6],arr[7],arr[8],arr[9],arr[10],arr[11],arr[12]); 
            break;
        case 14:  
            return script_execute(script,arr[0],arr[1],arr[2],arr[3],arr[4],arr[5],arr[6],arr[7],arr[8],arr[9],arr[10],arr[11],arr[12],arr[13]); 
            break;
        case 15: 
            return script_execute(script,arr[0],arr[1],arr[2],arr[3],arr[4],arr[5],arr[6],arr[7],arr[8],arr[9],arr[10],arr[11],arr[12],arr[13],arr[14]); 
            break;
            
        default: 
            show_debug_message("Invalid parameter length in script_execute_ext: " + string(argAmt));
            break;
    }
}
