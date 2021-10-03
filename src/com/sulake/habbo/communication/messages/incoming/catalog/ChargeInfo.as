package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2034:int;
      
      private var var_2033:int;
      
      private var var_1196:int;
      
      private var var_1195:int;
      
      private var var_1678:int;
      
      private var var_2035:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2034 = param1.readInteger();
         this.var_2033 = param1.readInteger();
         this.var_1196 = param1.readInteger();
         this.var_1195 = param1.readInteger();
         this.var_1678 = param1.readInteger();
         this.var_2035 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2034;
      }
      
      public function get charges() : int
      {
         return this.var_2033;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1196;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1195;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2035;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1678;
      }
   }
}
