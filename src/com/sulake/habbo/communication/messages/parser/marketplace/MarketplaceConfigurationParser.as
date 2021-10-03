package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1397:Boolean;
      
      private var var_2152:int;
      
      private var var_1736:int;
      
      private var var_1737:int;
      
      private var var_2150:int;
      
      private var var_2154:int;
      
      private var var_2153:int;
      
      private var var_2151:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1397;
      }
      
      public function get commission() : int
      {
         return this.var_2152;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1736;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1737;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2154;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2150;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2153;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2151;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1397 = param1.readBoolean();
         this.var_2152 = param1.readInteger();
         this.var_1736 = param1.readInteger();
         this.var_1737 = param1.readInteger();
         this.var_2154 = param1.readInteger();
         this.var_2150 = param1.readInteger();
         this.var_2153 = param1.readInteger();
         this.var_2151 = param1.readInteger();
         return true;
      }
   }
}
