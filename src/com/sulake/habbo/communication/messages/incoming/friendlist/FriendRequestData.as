package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1203:int;
      
      private var var_2386:String;
      
      private var var_2385:int;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1203 = param1.readInteger();
         this.var_2386 = param1.readString();
         this.var_2385 = int(param1.readString());
      }
      
      public function get requestId() : int
      {
         return this.var_1203;
      }
      
      public function get requesterName() : String
      {
         return this.var_2386;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2385;
      }
   }
}
