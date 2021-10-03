package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_183:int = 0;
       
      
      private var var_2293:int = 0;
      
      private var var_1456:Dictionary;
      
      private var var_1858:int = 0;
      
      private var var_1859:int = 0;
      
      private var var_2559:Boolean = false;
      
      private var var_2561:int = 0;
      
      private var var_2560:int = 0;
      
      public function Purse()
      {
         this.var_1456 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2293;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2293 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1858;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1858 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1859;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1859 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1858 > 0 || this.var_1859 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2559;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2559 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2561;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2561 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2560;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2560 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1456;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1456 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1456[param1];
      }
   }
}
