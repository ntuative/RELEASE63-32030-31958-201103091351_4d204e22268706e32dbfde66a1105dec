package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_217:String = "ROE_MOUSE_CLICK";
      
      public static const const_1768:String = "ROE_MOUSE_ENTER";
      
      public static const const_424:String = "ROE_MOUSE_MOVE";
      
      public static const const_1739:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1889:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_431:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1960:String = "";
      
      private var var_2067:Boolean;
      
      private var var_2069:Boolean;
      
      private var var_2066:Boolean;
      
      private var var_2071:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1960 = param2;
         this.var_2067 = param5;
         this.var_2069 = param6;
         this.var_2066 = param7;
         this.var_2071 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1960;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2067;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2069;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2066;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2071;
      }
   }
}
