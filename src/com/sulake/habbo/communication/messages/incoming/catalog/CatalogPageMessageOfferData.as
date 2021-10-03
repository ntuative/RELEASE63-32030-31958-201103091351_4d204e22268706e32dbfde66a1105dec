package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1894:String;
      
      private var var_1196:int;
      
      private var var_1195:int;
      
      private var var_1678:int;
      
      private var var_1150:Array;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1894 = param1.readString();
         this.var_1196 = param1.readInteger();
         this.var_1195 = param1.readInteger();
         this.var_1678 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1150 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1150.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get localizationId() : String
      {
         return this.var_1894;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1196;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1195;
      }
      
      public function get products() : Array
      {
         return this.var_1150;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1678;
      }
   }
}
