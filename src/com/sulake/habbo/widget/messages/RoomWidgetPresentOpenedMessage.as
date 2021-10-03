package com.sulake.habbo.widget.messages
{
   public class RoomWidgetPresentOpenedMessage extends RoomWidgetMessage
   {
      
      public static const const_1504:String = "RWPOMD_PRESENT_OPENED";
       
      
      private var var_1499:String;
      
      private var var_1785:int;
      
      public function RoomWidgetPresentOpenedMessage(param1:String, param2:String, param3:int)
      {
         super(param1);
         this.var_1499 = param2;
         this.var_1785 = param3;
      }
      
      public function get itemType() : String
      {
         return this.var_1499;
      }
      
      public function get classId() : int
      {
         return this.var_1785;
      }
   }
}