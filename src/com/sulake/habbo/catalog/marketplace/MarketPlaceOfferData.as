package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData implements IMarketPlaceOfferData
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2432:int;
      
      private var var_2020:String;
      
      private var var_1586:int;
      
      private var var_2264:int;
      
      private var var_2490:int;
      
      private var var_388:int;
      
      private var var_2433:int = -1;
      
      private var var_1773:int;
      
      private var var_45:BitmapData;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2432 = param3;
         this.var_2020 = param4;
         this.var_1586 = param5;
         this.var_388 = param6;
         this.var_2264 = param7;
         this.var_1773 = param8;
      }
      
      public function dispose() : void
      {
         if(this.var_45)
         {
            this.var_45.dispose();
            this.var_45 = null;
         }
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2432;
      }
      
      public function get stuffData() : String
      {
         return this.var_2020;
      }
      
      public function get price() : int
      {
         return this.var_1586;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2264;
      }
      
      public function get image() : BitmapData
      {
         return this.var_45;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(this.var_45 != null)
         {
            this.var_45.dispose();
         }
         this.var_45 = param1;
      }
      
      public function set imageCallback(param1:int) : void
      {
         this.var_2490 = param1;
      }
      
      public function get imageCallback() : int
      {
         return this.var_2490;
      }
      
      public function get status() : int
      {
         return this.var_388;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2433;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         this.var_2433 = param1;
      }
      
      public function set price(param1:int) : void
      {
         this.var_1586 = param1;
      }
      
      public function set offerId(param1:int) : void
      {
         this._offerId = param1;
      }
      
      public function get offerCount() : int
      {
         return this.var_1773;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_1773 = param1;
      }
   }
}
