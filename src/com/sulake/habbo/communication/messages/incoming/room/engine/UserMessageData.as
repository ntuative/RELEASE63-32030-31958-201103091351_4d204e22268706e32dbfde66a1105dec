package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_999:String = "M";
      
      public static const const_1465:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_145:Number = 0;
      
      private var var_144:Number = 0;
      
      private var var_255:int = 0;
      
      private var _name:String = "";
      
      private var _userType:int = 0;
      
      private var var_888:String = "";
      
      private var _figure:String = "";
      
      private var var_2080:String = "";
      
      private var var_2081:int;
      
      private var var_2079:int = 0;
      
      private var var_2084:String = "";
      
      private var var_2083:int = 0;
      
      private var var_2085:int = 0;
      
      private var var_2082:String = "";
      
      private var var_170:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_170 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_170)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_145;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_170)
         {
            this.var_145 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_144;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_170)
         {
            this.var_144 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_255;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_170)
         {
            this.var_255 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_170)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this._userType;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_170)
         {
            this._userType = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_888;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_170)
         {
            this.var_888 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_170)
         {
            this._figure = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2080;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_170)
         {
            this.var_2080 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2081;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_170)
         {
            this.var_2081 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2079;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_170)
         {
            this.var_2079 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2084;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_170)
         {
            this.var_2084 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2083;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_170)
         {
            this.var_2083 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2085;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_170)
         {
            this.var_2085 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2082;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_170)
         {
            this.var_2082 = param1;
         }
      }
   }
}
