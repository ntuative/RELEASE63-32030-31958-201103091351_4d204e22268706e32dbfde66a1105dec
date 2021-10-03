package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2032:int;
      
      private var var_1499:String;
      
      private var var_2119:int;
      
      private var var_2118:int;
      
      private var _category:int;
      
      private var var_2020:String;
      
      private var var_1443:int;
      
      private var var_2115:int;
      
      private var var_2121:int;
      
      private var var_2116:int;
      
      private var var_2120:int;
      
      private var var_2117:Boolean;
      
      private var var_2841:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2032 = param1;
         this.var_1499 = param2;
         this.var_2119 = param3;
         this.var_2118 = param4;
         this._category = param5;
         this.var_2020 = param6;
         this.var_1443 = param7;
         this.var_2115 = param8;
         this.var_2121 = param9;
         this.var_2116 = param10;
         this.var_2120 = param11;
         this.var_2117 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2032;
      }
      
      public function get itemType() : String
      {
         return this.var_1499;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2119;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2118;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2020;
      }
      
      public function get extra() : int
      {
         return this.var_1443;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2115;
      }
      
      public function get creationDay() : int
      {
         return this.var_2121;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2116;
      }
      
      public function get creationYear() : int
      {
         return this.var_2120;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2117;
      }
      
      public function get songID() : int
      {
         return this.var_1443;
      }
   }
}
