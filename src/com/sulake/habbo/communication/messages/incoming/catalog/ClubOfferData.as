package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1587:String;
      
      private var var_1586:int;
      
      private var var_2169:Boolean;
      
      private var var_2168:Boolean;
      
      private var var_2172:int;
      
      private var var_2170:int;
      
      private var var_2167:int;
      
      private var var_2166:int;
      
      private var var_2165:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1587 = param1.readString();
         this.var_1586 = param1.readInteger();
         this.var_2169 = param1.readBoolean();
         this.var_2168 = param1.readBoolean();
         this.var_2172 = param1.readInteger();
         this.var_2170 = param1.readInteger();
         this.var_2167 = param1.readInteger();
         this.var_2166 = param1.readInteger();
         this.var_2165 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1587;
      }
      
      public function get price() : int
      {
         return this.var_1586;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2169;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2168;
      }
      
      public function get periods() : int
      {
         return this.var_2172;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2170;
      }
      
      public function get year() : int
      {
         return this.var_2167;
      }
      
      public function get month() : int
      {
         return this.var_2166;
      }
      
      public function get day() : int
      {
         return this.var_2165;
      }
   }
}
