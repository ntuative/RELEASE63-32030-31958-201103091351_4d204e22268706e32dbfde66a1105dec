package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1397:Boolean = false;
      
      private var var_1586:int;
      
      private var var_1612:Array;
      
      private var var_697:Array;
      
      private var var_696:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1397 = _loc2_.isWrappingEnabled;
         this.var_1586 = _loc2_.wrappingPrice;
         this.var_1612 = _loc2_.stuffTypes;
         this.var_697 = _loc2_.boxTypes;
         this.var_696 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1397;
      }
      
      public function get price() : int
      {
         return this.var_1586;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1612;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_697;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_696;
      }
   }
}
