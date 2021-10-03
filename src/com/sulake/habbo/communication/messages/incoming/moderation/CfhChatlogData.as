package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1884:int;
      
      private var var_2666:int;
      
      private var var_1488:int;
      
      private var var_2412:int;
      
      private var var_115:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1884 = param1.readInteger();
         this.var_2666 = param1.readInteger();
         this.var_1488 = param1.readInteger();
         this.var_2412 = param1.readInteger();
         this.var_115 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1884);
      }
      
      public function get callId() : int
      {
         return this.var_1884;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2666;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1488;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2412;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_115;
      }
   }
}
