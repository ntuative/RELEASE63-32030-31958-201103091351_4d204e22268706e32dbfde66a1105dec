package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_82:String = "i";
      
      public static const const_93:String = "s";
      
      public static const const_239:String = "e";
       
      
      private var var_1788:String;
      
      private var var_2225:int;
      
      private var var_1407:String;
      
      private var var_1406:int;
      
      private var var_1789:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1788 = param1.readString();
         this.var_2225 = param1.readInteger();
         this.var_1407 = param1.readString();
         this.var_1406 = param1.readInteger();
         this.var_1789 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1788;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2225;
      }
      
      public function get extraParam() : String
      {
         return this.var_1407;
      }
      
      public function get productCount() : int
      {
         return this.var_1406;
      }
      
      public function get expiration() : int
      {
         return this.var_1789;
      }
   }
}
