package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class OpenPetPackageResultMessageParser implements IMessageParser
   {
       
      
      private var var_364:int = 0;
      
      private var var_1743:int = 0;
      
      public function OpenPetPackageResultMessageParser()
      {
         super();
      }
      
      public function get objectId() : int
      {
         return this.var_364;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_1743;
      }
      
      public function flush() : Boolean
      {
         this.var_364 = 0;
         this.var_1743 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_364 = param1.readInteger();
         this.var_1743 = param1.readInteger();
         return true;
      }
   }
}
