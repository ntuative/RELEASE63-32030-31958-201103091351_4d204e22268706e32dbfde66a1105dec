package com.sulake.habbo.communication.messages.parser.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class BadgeReceivedMessageParser implements IMessageParser
   {
       
      
      private var _userId:int;
      
      private var var_314:String;
      
      private var var_1896:String;
      
      public function BadgeReceivedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this._userId = -1;
         this.var_314 = "";
         this.var_1896 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._userId = param1.readInteger();
         this.var_314 = param1.readString();
         this.var_1896 = param1.readString();
         return true;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get badgeId() : String
      {
         return this.var_314;
      }
      
      public function get donorName() : String
      {
         return this.var_1896;
      }
   }
}
