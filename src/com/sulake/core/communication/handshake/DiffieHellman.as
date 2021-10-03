package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_891:BigInteger;
      
      private var var_2509:BigInteger;
      
      private var var_1794:BigInteger;
      
      private var var_2510:BigInteger;
      
      private var var_1409:BigInteger;
      
      private var var_1793:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1409 = param1;
         this.var_1793 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1409.toString() + ",generator: " + this.var_1793.toString() + ",secret: " + param1);
         this.var_891 = new BigInteger();
         this.var_891.fromRadix(param1,param2);
         this.var_2509 = this.var_1793.modPow(this.var_891,this.var_1409);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1794 = new BigInteger();
         this.var_1794.fromRadix(param1,param2);
         this.var_2510 = this.var_1794.modPow(this.var_891,this.var_1409);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2509.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2510.toRadix(param1);
      }
   }
}
