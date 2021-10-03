package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1625:int;
      
      private var _name:String;
      
      private var var_1460:int;
      
      private var var_2239:int;
      
      private var var_2058:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var _figure:String;
      
      private var var_2238:int;
      
      private var var_2236:int;
      
      private var var_2237:int;
      
      private var var_2107:int;
      
      private var var_2060:int;
      
      private var _ownerName:String;
      
      private var var_527:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1625;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1460;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2239;
      }
      
      public function get experience() : int
      {
         return this.var_2058;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2238;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2236;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2237;
      }
      
      public function get respect() : int
      {
         return this.var_2107;
      }
      
      public function get ownerId() : int
      {
         return this.var_2060;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_527;
      }
      
      public function flush() : Boolean
      {
         this.var_1625 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1625 = param1.readInteger();
         this._name = param1.readString();
         this.var_1460 = param1.readInteger();
         this.var_2239 = param1.readInteger();
         this.var_2058 = param1.readInteger();
         this.var_2238 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2236 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2237 = param1.readInteger();
         this._figure = param1.readString();
         this.var_2107 = param1.readInteger();
         this.var_2060 = param1.readInteger();
         this.var_527 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
