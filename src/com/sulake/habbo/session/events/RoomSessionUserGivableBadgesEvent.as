package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionUserGivableBadgesEvent extends RoomSessionEvent
   {
      
      public static const const_70:String = "RSUBE_GIVABLE_BADGES";
       
      
      private var var_270:Array;
      
      public function RoomSessionUserGivableBadgesEvent(param1:IRoomSession, param2:Array, param3:Boolean = false, param4:Boolean = false)
      {
         this.var_270 = [];
         super(const_70,param1,param3,param4);
         this.var_270 = param2;
      }
      
      public function get badges() : Array
      {
         return this.var_270;
      }
   }
}
