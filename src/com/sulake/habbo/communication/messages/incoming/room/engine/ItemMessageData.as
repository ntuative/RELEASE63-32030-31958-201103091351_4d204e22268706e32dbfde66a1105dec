package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var _id:int = 0;
      
      private var var_2515:Boolean = false;
      
      private var var_2514:int = 0;
      
      private var var_2513:int = 0;
      
      private var var_2068:int = 0;
      
      private var var_2072:int = 0;
      
      private var var_145:Number = 0;
      
      private var var_144:Number = 0;
      
      private var var_255:String = "";
      
      private var _type:int = 0;
      
      private var var_2855:String = "";
      
      private var var_1443:int = 0;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_170:Boolean = false;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         this._id = param1;
         this._type = param2;
         this.var_2515 = param3;
      }
      
      public function setReadOnly() : void
      {
         this.var_170 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get isOldFormat() : Boolean
      {
         return this.var_2515;
      }
      
      public function get wallX() : Number
      {
         return this.var_2514;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!this.var_170)
         {
            this.var_2514 = param1;
         }
      }
      
      public function get wallY() : Number
      {
         return this.var_2513;
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!this.var_170)
         {
            this.var_2513 = param1;
         }
      }
      
      public function get localX() : Number
      {
         return this.var_2068;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!this.var_170)
         {
            this.var_2068 = param1;
         }
      }
      
      public function get localY() : Number
      {
         return this.var_2072;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!this.var_170)
         {
            this.var_2072 = param1;
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
      
      public function get dir() : String
      {
         return this.var_255;
      }
      
      public function set dir(param1:String) : void
      {
         if(!this.var_170)
         {
            this.var_255 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_170)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_170)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_170)
         {
            this._data = param1;
         }
      }
   }
}
