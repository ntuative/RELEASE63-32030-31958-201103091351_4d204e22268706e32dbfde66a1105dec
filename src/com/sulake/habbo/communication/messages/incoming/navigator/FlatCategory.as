package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1688:int;
      
      private var var_2459:String;
      
      private var var_385:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1688 = param1.readInteger();
         this.var_2459 = param1.readString();
         this.var_385 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_1688;
      }
      
      public function get nodeName() : String
      {
         return this.var_2459;
      }
      
      public function get visible() : Boolean
      {
         return this.var_385;
      }
   }
}
