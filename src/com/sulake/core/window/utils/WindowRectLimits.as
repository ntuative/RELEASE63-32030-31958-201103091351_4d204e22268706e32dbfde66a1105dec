package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   
   public class WindowRectLimits implements IRectLimiter
   {
       
      
      private var var_312:int = -2.147483648E9;
      
      private var var_311:int = 2.147483647E9;
      
      private var var_313:int = -2.147483648E9;
      
      private var var_310:int = 2.147483647E9;
      
      private var _target:IWindow;
      
      public function WindowRectLimits(param1:IWindow)
      {
         super();
         this._target = param1;
      }
      
      public function get minWidth() : int
      {
         return this.var_312;
      }
      
      public function get maxWidth() : int
      {
         return this.var_311;
      }
      
      public function get minHeight() : int
      {
         return this.var_313;
      }
      
      public function get maxHeight() : int
      {
         return this.var_310;
      }
      
      public function set minWidth(param1:int) : void
      {
         this.var_312 = param1;
         if(this.var_312 > int.MIN_VALUE && !this._target.disposed && this._target.width < this.var_312)
         {
            this._target.width = this.var_312;
         }
      }
      
      public function set maxWidth(param1:int) : void
      {
         this.var_311 = param1;
         if(this.var_311 < int.MAX_VALUE && !this._target.disposed && this._target.width > this.var_311)
         {
            this._target.width = this.var_311;
         }
      }
      
      public function set minHeight(param1:int) : void
      {
         this.var_313 = param1;
         if(this.var_313 > int.MIN_VALUE && !this._target.disposed && this._target.height < this.var_313)
         {
            this._target.height = this.var_313;
         }
      }
      
      public function set maxHeight(param1:int) : void
      {
         this.var_310 = param1;
         if(this.var_310 < int.MAX_VALUE && !this._target.disposed && this._target.height > this.var_310)
         {
            this._target.height = this.var_310;
         }
      }
      
      public function get isEmpty() : Boolean
      {
         return this.var_312 == int.MIN_VALUE && this.var_311 == int.MAX_VALUE && this.var_313 == int.MIN_VALUE && this.var_310 == int.MAX_VALUE;
      }
      
      public function setEmpty() : void
      {
         this.var_312 = int.MIN_VALUE;
         this.var_311 = int.MAX_VALUE;
         this.var_313 = int.MIN_VALUE;
         this.var_310 = int.MAX_VALUE;
      }
      
      public function limit() : void
      {
         if(!this.isEmpty && this._target)
         {
            if(this._target.width < this.var_312)
            {
               this._target.width = this.var_312;
            }
            else if(this._target.width > this.var_311)
            {
               this._target.width = this.var_311;
            }
            if(this._target.height < this.var_313)
            {
               this._target.height = this.var_313;
            }
            else if(this._target.height > this.var_310)
            {
               this._target.height = this.var_310;
            }
         }
      }
      
      public function assign(param1:int, param2:int, param3:int, param4:int) : void
      {
         this.var_312 = param1;
         this.var_311 = param2;
         this.var_313 = param3;
         this.var_310 = param4;
         this.limit();
      }
      
      public function clone(param1:IWindow) : WindowRectLimits
      {
         var _loc2_:WindowRectLimits = new WindowRectLimits(param1);
         _loc2_.var_312 = this.var_312;
         _loc2_.var_311 = this.var_311;
         _loc2_.var_313 = this.var_313;
         _loc2_.var_310 = this.var_310;
         return _loc2_;
      }
   }
}
