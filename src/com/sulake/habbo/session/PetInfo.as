package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1625:int;
      
      private var var_1460:int;
      
      private var var_2055:int;
      
      private var var_2058:int;
      
      private var var_2059:int;
      
      private var _energy:int;
      
      private var var_2057:int;
      
      private var _nutrition:int;
      
      private var var_2054:int;
      
      private var var_2060:int;
      
      private var _ownerName:String;
      
      private var var_2107:int;
      
      private var var_527:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1625;
      }
      
      public function get level() : int
      {
         return this.var_1460;
      }
      
      public function get levelMax() : int
      {
         return this.var_2055;
      }
      
      public function get experience() : int
      {
         return this.var_2058;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2059;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2057;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2054;
      }
      
      public function get ownerId() : int
      {
         return this.var_2060;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2107;
      }
      
      public function get age() : int
      {
         return this.var_527;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1625 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1460 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2055 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2058 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2059 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2057 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2054 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_2060 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2107 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_527 = param1;
      }
   }
}
