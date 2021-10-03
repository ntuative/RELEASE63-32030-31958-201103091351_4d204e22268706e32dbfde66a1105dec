package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1110:Boolean;
      
      private var var_1111:Boolean;
      
      private var var_1359:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1110;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1111;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1359;
      }
      
      public function flush() : Boolean
      {
         this.var_1110 = false;
         this.var_1111 = false;
         this.var_1359 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1110 = param1.readBoolean();
         this.var_1111 = param1.readBoolean();
         this.var_1359 = param1.readBoolean();
         return true;
      }
   }
}
