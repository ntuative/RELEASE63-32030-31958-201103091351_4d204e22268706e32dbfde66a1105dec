package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2432:int;
      
      private var var_2020:String;
      
      private var var_1586:int;
      
      private var var_388:int;
      
      private var var_2433:int = -1;
      
      private var var_2264:int;
      
      private var var_1773:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2432 = param3;
         this.var_2020 = param4;
         this.var_1586 = param5;
         this.var_388 = param6;
         this.var_2433 = param7;
         this.var_2264 = param8;
         this.var_1773 = param9;
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
      
      public function get status() : int
      {
         return this.var_388;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2433;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2264;
      }
      
      public function get offerCount() : int
      {
         return this.var_1773;
      }
   }
}
