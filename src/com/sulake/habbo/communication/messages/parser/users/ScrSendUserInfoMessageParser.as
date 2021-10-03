package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1915:int = 1;
      
      public static const const_1663:int = 2;
       
      
      private var var_826:String;
      
      private var var_2558:int;
      
      private var var_2553:int;
      
      private var var_2557:int;
      
      private var var_2555:int;
      
      private var var_2552:Boolean;
      
      private var var_2559:Boolean;
      
      private var var_2561:int;
      
      private var var_2560:int;
      
      private var var_2554:Boolean;
      
      private var var_2551:int;
      
      private var var_2556:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_826 = param1.readString();
         this.var_2558 = param1.readInteger();
         this.var_2553 = param1.readInteger();
         this.var_2557 = param1.readInteger();
         this.var_2555 = param1.readInteger();
         this.var_2552 = param1.readBoolean();
         this.var_2559 = param1.readBoolean();
         this.var_2561 = param1.readInteger();
         this.var_2560 = param1.readInteger();
         this.var_2554 = param1.readBoolean();
         this.var_2551 = param1.readInteger();
         this.var_2556 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_826;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2558;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2553;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2557;
      }
      
      public function get responseType() : int
      {
         return this.var_2555;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2552;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2559;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2561;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2560;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2554;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2551;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2556;
      }
   }
}
