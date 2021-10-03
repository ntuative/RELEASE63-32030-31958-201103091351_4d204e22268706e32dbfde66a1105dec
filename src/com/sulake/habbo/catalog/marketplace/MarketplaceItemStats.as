package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2264:int;
      
      private var var_2268:int;
      
      private var var_2267:int;
      
      private var _dayOffsets:Array;
      
      private var var_1930:Array;
      
      private var var_1929:Array;
      
      private var var_2265:int;
      
      private var var_2266:int;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2264;
      }
      
      public function get offerCount() : int
      {
         return this.var_2268;
      }
      
      public function get historyLength() : int
      {
         return this.var_2267;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get method_2() : Array
      {
         return this.var_1930;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1929;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2265;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2266;
      }
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2264 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2268 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2267 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set method_2(param1:Array) : void
      {
         this.var_1930 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1929 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2265 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2266 = param1;
      }
   }
}
