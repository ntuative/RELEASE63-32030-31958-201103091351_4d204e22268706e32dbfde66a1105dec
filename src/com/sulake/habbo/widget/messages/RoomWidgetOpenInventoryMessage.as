package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_857:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1153:String = "inventory_effects";
      
      public static const const_1224:String = "inventory_badges";
      
      public static const const_1459:String = "inventory_clothes";
      
      public static const const_1419:String = "inventory_furniture";
       
      
      private var var_2703:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_857);
         this.var_2703 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2703;
      }
   }
}
