package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1568:Boolean;
      
      private var var_2114:int;
      
      private var var_396:Boolean;
      
      private var var_1035:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function get guestRoom() : Boolean
      {
         return this.var_1568;
      }
      
      public function get guestRoomId() : int
      {
         return this.var_2114;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return this.var_1035;
      }
      
      public function get owner() : Boolean
      {
         return this.var_396;
      }
      
      public function flush() : Boolean
      {
         if(this.var_1035 != null)
         {
            this.var_1035.dispose();
            this.var_1035 = null;
         }
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1568 = param1.readBoolean();
         if(this.var_1568)
         {
            this.var_2114 = param1.readInteger();
            this.var_396 = param1.readBoolean();
         }
         else
         {
            this.var_1035 = new PublicRoomShortData(param1);
         }
         return true;
      }
   }
}
