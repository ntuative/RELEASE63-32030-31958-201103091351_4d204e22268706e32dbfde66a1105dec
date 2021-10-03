package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var _figure:String;
      
      private var var_888:String;
      
      private var var_2139:String;
      
      private var var_1591:String;
      
      private var var_2134:int;
      
      private var var_2136:String;
      
      private var var_2135:int;
      
      private var var_2138:int;
      
      private var var_2133:int;
      
      private var var_1200:int;
      
      private var var_779:int;
      
      private var var_2137:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this._figure = param1.readString();
         this.var_888 = param1.readString();
         this.var_2139 = param1.readString();
         this.var_1591 = param1.readString();
         this.var_2134 = param1.readInteger();
         this.var_2136 = param1.readString();
         this.var_2135 = param1.readInteger();
         this.var_2138 = param1.readInteger();
         this.var_2133 = param1.readInteger();
         this.var_1200 = param1.readInteger();
         this.var_779 = param1.readInteger();
         this.var_2137 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get sex() : String
      {
         return this.var_888;
      }
      
      public function get customData() : String
      {
         return this.var_2139;
      }
      
      public function get realName() : String
      {
         return this.var_1591;
      }
      
      public function get tickets() : int
      {
         return this.var_2134;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2136;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2135;
      }
      
      public function get directMail() : int
      {
         return this.var_2138;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2133;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1200;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_779;
      }
      
      public function get identityId() : int
      {
         return this.var_2137;
      }
   }
}
