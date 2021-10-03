package com.sulake.room.messages
{
   import com.sulake.room.utils.IVector3d;
   
   public class RoomObjectUpdateMessage
   {
       
      
      protected var var_82:IVector3d;
      
      protected var var_255:IVector3d;
      
      public function RoomObjectUpdateMessage(param1:IVector3d, param2:IVector3d)
      {
         super();
         this.var_82 = param1;
         this.var_255 = param2;
      }
      
      public function get loc() : IVector3d
      {
         return this.var_82;
      }
      
      public function get dir() : IVector3d
      {
         return this.var_255;
      }
   }
}
