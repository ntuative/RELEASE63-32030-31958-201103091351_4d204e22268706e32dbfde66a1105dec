package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_2063:Number = 0.0;
      
      private var var_2064:Number = 0.0;
      
      private var var_2701:Number = 0.0;
      
      private var var_2702:Number = 0.0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2063 = param1;
         this.var_2064 = param2;
         this.var_2701 = param3;
         this.var_2702 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2063;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2064;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2701;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2702;
      }
   }
}
