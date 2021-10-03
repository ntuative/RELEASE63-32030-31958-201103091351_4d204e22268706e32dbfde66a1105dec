package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_228:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2753:int = 0;
      
      private var var_2751:int = 0;
      
      private var var_2752:int = 0;
      
      private var var_2754:Boolean = false;
      
      private var var_2300:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_228,param6,param7);
         this.var_2753 = param1;
         this.var_2751 = param2;
         this.var_2752 = param3;
         this.var_2754 = param4;
         this.var_2300 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2753;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2751;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2752;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2754;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2300;
      }
   }
}
