package SimpleMath;

import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.CallbackContext;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 * This class echoes a string called from JavaScript.
 */
public class MyMath extends CordovaPlugin {

    @Override
    public boolean execute(String action, JSONArray args, CallbackContext callbackContext) throws JSONException {
        if (action.equals("Plus")) {
            int A  = args.getInt(0);
            int B  =  args.getInt(1); 
            this.plus(A,B, callbackContext);
            return true;//注意一定要返回 true
        }else if(action.equals("Minus"))
        {
        	int A  = args.getInt(0);         
        	int B  =  args.getInt(1);        
        	this.minus(A,B, callbackContext);
        	return true;  //注意一定要返回 true 
        }
        return false;
    }

    private void plus(int A, int B,CallbackContext callbackContext) {
        
    	int ret = A + B;
    	
    	if (ret < 100) {
            callbackContext.success(ret);
        } else {
            callbackContext.error("A + B must be smaller than 100");
        }
    }
    
    private void minus(int A, int B,CallbackContext callbackContext) {       
                                                                            
        	int ret = A - B;                                                            	                                                                            	if (ret > 0) {                                                                   callbackContext.success(ret);                                               } else {                                                                            callbackContext.error("A must be bigger than B");                    }                                                                           }                                                                       }                                                                           