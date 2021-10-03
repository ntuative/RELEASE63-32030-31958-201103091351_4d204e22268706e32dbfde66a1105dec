package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var _type:int;
      
      protected var var_2020:String;
      
      protected var var_1443:Number;
      
      protected var var_2789:Boolean;
      
      protected var var_2787:Boolean;
      
      protected var var_2117:Boolean;
      
      protected var var_2745:Boolean;
      
      protected var var_2788:int;
      
      protected var var_2121:int;
      
      protected var var_2116:int;
      
      protected var var_2120:int;
      
      protected var var_1761:String;
      
      protected var var_2017:int;
      
      protected var var_895:Boolean;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         this._id = param1;
         this._type = param2;
         this._ref = param3;
         this._category = param4;
         this.var_2117 = param5;
         this.var_2787 = param6;
         this.var_2789 = param7;
         this.var_2745 = param8;
         this.var_2020 = param9;
         this.var_1443 = param10;
         this.var_2788 = param11;
         this.var_2121 = param12;
         this.var_2116 = param13;
         this.var_2120 = param14;
         this.var_1761 = param15;
         this.var_2017 = param16;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get stuffData() : String
      {
         return this.var_2020;
      }
      
      public function get extra() : Number
      {
         return this.var_1443;
      }
      
      public function get recyclable() : Boolean
      {
         return this.var_2789;
      }
      
      public function get tradeable() : Boolean
      {
         return this.var_2787;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2117;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2745;
      }
      
      public function get expires() : int
      {
         return this.var_2788;
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
      
      public function get slotId() : String
      {
         return this.var_1761;
      }
      
      public function get songId() : int
      {
         return this.var_2017;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_895 = param1;
      }
      
      public function get locked() : Boolean
      {
         return this.var_895;
      }
   }
}
