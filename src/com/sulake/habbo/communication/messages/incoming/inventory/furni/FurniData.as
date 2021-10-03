package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2132:int;
      
      private var var_1499:String;
      
      private var _objId:int;
      
      private var var_1785:int;
      
      private var _category:int;
      
      private var var_2020:String;
      
      private var var_2706:Boolean;
      
      private var var_2708:Boolean;
      
      private var var_2707:Boolean;
      
      private var var_2532:Boolean;
      
      private var var_2650:int;
      
      private var var_1443:int;
      
      private var var_1761:String = "";
      
      private var var_2017:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2132 = param1;
         this.var_1499 = param2;
         this._objId = param3;
         this.var_1785 = param4;
         this._category = param5;
         this.var_2020 = param6;
         this.var_2706 = param7;
         this.var_2708 = param8;
         this.var_2707 = param9;
         this.var_2532 = param10;
         this.var_2650 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1761 = param1;
         this.var_1443 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2132;
      }
      
      public function get itemType() : String
      {
         return this.var_1499;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1785;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2020;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2706;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2708;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2707;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2532;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2650;
      }
      
      public function get slotId() : String
      {
         return this.var_1761;
      }
      
      public function get songId() : int
      {
         return this.var_2017;
      }
      
      public function get extra() : int
      {
         return this.var_1443;
      }
   }
}
