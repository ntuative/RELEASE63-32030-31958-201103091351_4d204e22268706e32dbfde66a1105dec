package com.sulake.habbo.room.messages
{
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.utils.IVector3d;
   
   public class RoomObjectMoveUpdateMessage extends RoomObjectUpdateMessage
   {
       
      
      private var var_375:IVector3d;
      
      private var var_2373:Boolean;
      
      public function RoomObjectMoveUpdateMessage(param1:IVector3d, param2:IVector3d, param3:IVector3d, param4:Boolean = false)
      {
         super(param1,param3);
         this.var_2373 = param4;
         this.var_375 = param2;
      }
      
      public function get targetLoc() : IVector3d
      {
         if(this.var_375 == null)
         {
            return loc;
         }
         return this.var_375;
      }
      
      public function get realTargetLoc() : IVector3d
      {
         return this.var_375;
      }
      
      public function get isSlideUpdate() : Boolean
      {
         return this.var_2373;
      }
   }
}
