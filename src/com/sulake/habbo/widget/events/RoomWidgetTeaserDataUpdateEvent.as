package com.sulake.habbo.widget.events
{
   public class RoomWidgetTeaserDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_539:String = "RWTDUE_TEASER_DATA";
      
      public static const const_702:String = "RWTDUE_GIFT_DATA";
      
      public static const const_721:String = "RWTDUE_GIFT_RECEIVED";
       
      
      private var var_364:int;
      
      private var _data:String;
      
      private var var_388:int;
      
      private var var_182:String;
      
      private var var_2103:String;
      
      private var var_2104:Boolean;
      
      private var var_1448:int = 0;
      
      private var var_2451:String;
      
      public function RoomWidgetTeaserDataUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get objectId() : int
      {
         return this.var_364;
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function get status() : int
      {
         return this.var_388;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2103;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_2104;
      }
      
      public function get ownRealName() : String
      {
         return this.var_2451;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1448;
      }
      
      public function set status(param1:int) : void
      {
         this.var_388 = param1;
      }
      
      public function set data(param1:String) : void
      {
         this._data = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2103 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_2104 = param1;
      }
      
      public function set ownRealName(param1:String) : void
      {
         this.var_2451 = param1;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_364 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_182;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_182 = param1;
      }
      
      public function set itemCategory(param1:int) : void
      {
         this.var_1448 = param1;
      }
   }
}
