package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1439:Boolean;
      
      private var var_1882:Boolean;
      
      public function AvailabilityStatusMessageParser()
      {
         super();
      }
      
      public function get isOpen() : Boolean
      {
         return this.var_1439;
      }
      
      public function get onShutDown() : Boolean
      {
         return this.var_1882;
      }
      
      public function flush() : Boolean
      {
         this.var_1439 = false;
         this.var_1882 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1439 = param1.readInteger() > 0;
         this.var_1882 = param1.readInteger() > 0;
         return true;
      }
   }
}
