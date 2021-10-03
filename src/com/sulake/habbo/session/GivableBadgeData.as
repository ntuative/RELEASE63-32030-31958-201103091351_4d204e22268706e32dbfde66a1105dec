package com.sulake.habbo.session
{
   public class GivableBadgeData
   {
       
      
      private var var_314:int;
      
      private var var_2494:String;
      
      public function GivableBadgeData(param1:int, param2:String)
      {
         super();
         this.var_314 = param1;
         this.var_2494 = param2;
      }
      
      public function get badgeId() : int
      {
         return this.var_314;
      }
      
      public function get achievementTypeName() : String
      {
         return this.var_2494;
      }
   }
}
