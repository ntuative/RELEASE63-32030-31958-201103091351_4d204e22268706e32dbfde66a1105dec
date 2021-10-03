package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_791:int = 1;
      
      public static const const_730:int = 2;
      
      public static const const_899:int = 3;
      
      public static const const_1133:int = 4;
      
      public static const const_740:int = 5;
      
      public static const const_1228:int = 6;
       
      
      private var _type:int;
      
      private var var_1154:int;
      
      private var var_2031:String;
      
      private var var_2263:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1154 = param2;
         this.var_2031 = param3;
         this.var_2263 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2031;
      }
      
      public function get time() : String
      {
         return this.var_2263;
      }
      
      public function get senderId() : int
      {
         return this.var_1154;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
