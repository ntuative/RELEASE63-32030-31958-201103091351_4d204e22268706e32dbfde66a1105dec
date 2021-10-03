package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1518:int = 0;
      
      private var var_1519:int = 0;
      
      private var var_1678:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1518;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1519;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1678;
      }
      
      public function flush() : Boolean
      {
         this.var_1518 = 0;
         this.var_1519 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1518 = param1.readInteger();
         this.var_1519 = param1.readInteger();
         this.var_1678 = param1.readInteger();
         return true;
      }
   }
}
