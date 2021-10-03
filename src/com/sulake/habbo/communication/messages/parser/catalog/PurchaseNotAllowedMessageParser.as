package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PurchaseNotAllowedMessageParser implements IMessageParser
   {
       
      
      private var var_1552:int = 0;
      
      public function PurchaseNotAllowedMessageParser()
      {
         super();
      }
      
      public function get errorCode() : int
      {
         return this.var_1552;
      }
      
      public function flush() : Boolean
      {
         this.var_1552 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1552 = param1.readInteger();
         return true;
      }
   }
}
