package com.sulake.habbo.widget.events
{
   public class RoomWidgetEmailUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_497:String = "rweuw_change_succesful";
      
      public static const const_511:String = "rweue_change_error";
       
      
      public function RoomWidgetEmailUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
   }
}
