package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeImageMessage extends RoomWidgetMessage
   {
      
      public static const const_618:String = "RWGOI_MESSAGE_GET_BADGE_IMAGE";
       
      
      private var var_314:String = "";
      
      public function RoomWidgetGetBadgeImageMessage(param1:String)
      {
         super(const_618);
         this.var_314 = param1;
      }
      
      public function get badgeId() : String
      {
         return this.var_314;
      }
   }
}
