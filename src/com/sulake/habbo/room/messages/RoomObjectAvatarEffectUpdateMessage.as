package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarEffectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_171:int;
      
      private var var_2249:int;
      
      public function RoomObjectAvatarEffectUpdateMessage(param1:int = 0, param2:int = 0)
      {
         super();
         this.var_171 = param1;
         this.var_2249 = param2;
      }
      
      public function get effect() : int
      {
         return this.var_171;
      }
      
      public function get delayMilliSeconds() : int
      {
         return this.var_2249;
      }
   }
}
