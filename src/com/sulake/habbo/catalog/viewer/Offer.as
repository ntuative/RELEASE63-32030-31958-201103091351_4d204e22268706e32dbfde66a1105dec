package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1499:String = "pricing_model_unknown";
      
      public static const const_452:String = "pricing_model_single";
      
      public static const const_513:String = "pricing_model_multi";
      
      public static const const_529:String = "pricing_model_bundle";
      
      public static const const_1496:String = "price_type_none";
      
      public static const const_682:String = "price_type_credits";
      
      public static const const_1032:String = "price_type_activitypoints";
      
      public static const const_1203:String = "price_type_credits_and_activitypoints";
       
      
      private var var_778:String;
      
      private var var_1194:String;
      
      private var _offerId:int;
      
      private var var_1894:String;
      
      private var var_1196:int;
      
      private var var_1195:int;
      
      private var var_1678:int;
      
      private var var_398:ICatalogPage;
      
      private var var_777:IProductContainer;
      
      private var var_2671:int;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         this._offerId = param1.offerId;
         this.var_1894 = param1.localizationId;
         this.var_1196 = param1.priceInCredits;
         this.var_1195 = param1.priceInActivityPoints;
         this.var_1678 = param1.activityPointType;
         this.var_398 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         this.analyzePricingModel(_loc3_);
         this.analyzePriceType();
         this.createProductContainer(_loc3_);
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_398;
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
      
      public function get activityPointType() : int
      {
         return this.var_1678;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_777;
      }
      
      public function get pricingModel() : String
      {
         return this.var_778;
      }
      
      public function get method_3() : String
      {
         return this.var_1194;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2671;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2671 = param1;
      }
      
      public function dispose() : void
      {
         this._offerId = 0;
         this.var_1894 = "";
         this.var_1196 = 0;
         this.var_1195 = 0;
         this.var_1678 = 0;
         this.var_398 = null;
         if(this.var_777 != null)
         {
            this.var_777.dispose();
            this.var_777 = null;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_778)
         {
            case const_452:
               this.var_777 = new SingleProductContainer(this,param1);
               break;
            case const_513:
               this.var_777 = new MultiProductContainer(this,param1);
               break;
            case const_529:
               this.var_777 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_778);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_778 = const_452;
            }
            else
            {
               this.var_778 = const_513;
            }
         }
         else if(param1.length > 1)
         {
            this.var_778 = const_529;
         }
         else
         {
            this.var_778 = const_1499;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1196 > 0 && this.var_1195 > 0)
         {
            this.var_1194 = const_1203;
         }
         else if(this.var_1196 > 0)
         {
            this.var_1194 = const_682;
         }
         else if(this.var_1195 > 0)
         {
            this.var_1194 = const_1032;
         }
         else
         {
            this.var_1194 = const_1496;
         }
      }
   }
}
