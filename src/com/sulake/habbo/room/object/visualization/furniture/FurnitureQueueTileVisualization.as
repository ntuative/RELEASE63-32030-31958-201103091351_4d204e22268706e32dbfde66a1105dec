package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const ANIMATION_ID_ROLL:int = 3;
      
      private static const const_1344:int = 2;
      
      private static const const_1345:int = 1;
      
      private static const ANIMATION_DURATION:int = 15;
       
      
      private var var_290:Array;
      
      private var var_1134:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_290 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1344)
         {
            this.var_290 = new Array();
            this.var_290.push(const_1345);
            this.var_1134 = ANIMATION_DURATION;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(this.var_1134 > 0)
         {
            --this.var_1134;
         }
         if(this.var_1134 == 0)
         {
            if(this.var_290.length > 0)
            {
               super.setAnimation(this.var_290.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
