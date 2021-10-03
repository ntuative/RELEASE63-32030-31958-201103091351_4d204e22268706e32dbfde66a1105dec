package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var _type:int = 0;
      
      private var var_888:String = "";
      
      private var _figure:String = "";
      
      private var var_2080:String = "";
      
      private var var_2081:int;
      
      private var var_2079:int = 0;
      
      private var var_2084:String = "";
      
      private var var_2083:int = 0;
      
      private var var_2085:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2081;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2081 = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function get sex() : String
      {
         return this.var_888;
      }
      
      public function set sex(param1:String) : void
      {
         this.var_888 = param1;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function set figure(param1:String) : void
      {
         this._figure = param1;
      }
      
      public function get custom() : String
      {
         return this.var_2080;
      }
      
      public function set custom(param1:String) : void
      {
         this.var_2080 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2079;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2079 = param1;
      }
      
      public function get groupID() : String
      {
         return this.var_2084;
      }
      
      public function set groupID(param1:String) : void
      {
         this.var_2084 = param1;
      }
      
      public function get groupStatus() : int
      {
         return this.var_2083;
      }
      
      public function set groupStatus(param1:int) : void
      {
         this.var_2083 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2085;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2085 = param1;
      }
   }
}
