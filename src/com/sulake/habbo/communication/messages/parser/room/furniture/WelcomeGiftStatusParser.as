package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class WelcomeGiftStatusParser implements IMessageParser
   {
       
      
      private var var_1128:String;
      
      private var var_1396:Boolean;
      
      private var var_2757:Boolean;
      
      private var _furniId:int;
      
      public function WelcomeGiftStatusParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1128 = param1.readString();
         this.var_1396 = param1.readBoolean();
         this.var_2757 = param1.readBoolean();
         this._furniId = param1.readInteger();
         return true;
      }
      
      public function get email() : String
      {
         return this.var_1128;
      }
      
      public function get isVerified() : Boolean
      {
         return this.var_1396;
      }
      
      public function get allowChange() : Boolean
      {
         return this.var_2757;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
   }
}
