package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_1233:String = "select_outfit";
       
      
      private var var_2362:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_1233);
         this.var_2362 = param1;
      }
      
      public function get outfitId() : int
      {
         return this.var_2362;
      }
   }
}
