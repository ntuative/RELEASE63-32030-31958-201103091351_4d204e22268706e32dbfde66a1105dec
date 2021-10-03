package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2748:Number;
      
      private var var_1621:Number;
      
      private var var_995:Number;
      
      private var var_994:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2748 = param1;
         this.var_1621 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_995 = param1;
         this.var_994 = 0;
      }
      
      public function update() : void
      {
         this.var_995 += this.var_1621;
         this.var_994 += this.var_995;
         if(this.var_994 > 0)
         {
            this.var_994 = 0;
            this.var_995 = this.var_2748 * -1 * this.var_995;
         }
      }
      
      public function get location() : Number
      {
         return this.var_994;
      }
   }
}
