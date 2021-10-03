package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_860:String = "";
      
      public static const const_457:int = 0;
      
      public static const const_486:int = 255;
      
      public static const const_710:Boolean = false;
      
      public static const const_421:int = 0;
      
      public static const const_549:int = 0;
      
      public static const const_463:int = 0;
      
      public static const const_1191:int = 1;
      
      public static const const_1152:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2211:String = "";
      
      private var var_1619:int = 0;
      
      private var var_2127:int = 255;
      
      private var var_2621:Boolean = false;
      
      private var var_2623:int = 0;
      
      private var var_2622:int = 0;
      
      private var var_2624:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2211 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2211;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1619 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1619;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2127 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2127;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2621 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2621;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2623 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2623;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2622 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2622;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2624 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2624;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
