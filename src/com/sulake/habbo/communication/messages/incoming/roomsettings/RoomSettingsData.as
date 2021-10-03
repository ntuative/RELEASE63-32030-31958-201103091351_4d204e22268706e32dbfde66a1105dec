package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_566:int = 0;
      
      public static const const_199:int = 1;
      
      public static const const_116:int = 2;
      
      public static const const_741:Array = ["open","closed","password"];
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1556:String;
      
      private var var_2286:int;
      
      private var var_1445:int;
      
      private var var_2283:int;
      
      private var var_2284:int;
      
      private var var_810:Array;
      
      private var var_2279:Array;
      
      private var var_2285:int;
      
      private var var_2282:Boolean;
      
      private var var_2287:Boolean;
      
      private var var_2280:Boolean;
      
      private var var_2281:Boolean;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2282;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2282 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2287;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2287 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2280;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2280 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2281;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2281 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1556;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1556 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2286;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2286 = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1445;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1445 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2283;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2283 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return this.var_2284;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         this.var_2284 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_810;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_810 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2279;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2279 = param1;
      }
      
      public function get controllerCount() : int
      {
         return this.var_2285;
      }
      
      public function set controllerCount(param1:int) : void
      {
         this.var_2285 = param1;
      }
   }
}