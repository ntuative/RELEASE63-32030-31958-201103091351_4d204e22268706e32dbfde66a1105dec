package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2458:int;
      
      private var var_2456:int;
      
      private var var_2457:int;
      
      private var var_2455:String;
      
      private var var_1763:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2458 = param1.readInteger();
         this.var_2456 = param1.readInteger();
         this.var_2457 = param1.readInteger();
         this.var_2455 = param1.readString();
         this.var_1763 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2458;
      }
      
      public function get minute() : int
      {
         return this.var_2456;
      }
      
      public function get chatterId() : int
      {
         return this.var_2457;
      }
      
      public function get chatterName() : String
      {
         return this.var_2455;
      }
      
      public function get msg() : String
      {
         return this.var_1763;
      }
   }
}
