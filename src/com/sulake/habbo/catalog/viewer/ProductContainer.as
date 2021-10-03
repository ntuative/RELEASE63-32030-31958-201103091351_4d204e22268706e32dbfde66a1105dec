package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.room.IGetImageListener;
   import com.sulake.habbo.room.IRoomEngine;
   import flash.display.BitmapData;
   
   public class ProductContainer extends ProductGridItem implements IGetImageListener, IProductContainer, IGridItem
   {
       
      
      protected var var_90:Offer;
      
      private var var_1150:Array;
      
      private var var_813:int;
      
      public function ProductContainer(param1:Offer, param2:Array)
      {
         super();
         this.var_90 = param1;
         this.var_1150 = param2;
      }
      
      public function get iconCallbackId() : int
      {
         return this.var_813;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         this.var_813 = param1;
      }
      
      public function get products() : Array
      {
         return this.var_1150;
      }
      
      public function get firstProduct() : IProduct
      {
         return this.var_1150[0] as IProduct;
      }
      
      public function get offer() : Offer
      {
         return this.var_90;
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         super.dispose();
         for each(_loc1_ in this.var_1150)
         {
            _loc1_.dispose();
         }
         this.var_1150 = null;
         this.var_813 = 0;
      }
      
      public function initProductIcon(param1:IRoomEngine) : void
      {
      }
      
      public function imageReady(param1:int, param2:BitmapData) : void
      {
         setIconImage(param2);
      }
   }
}
