package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ViralFurniStatusMessageParser implements IMessageParser
   {
       
      
      private var var_182:String;
      
      private var var_364:int;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_1448:int = 0;
      
      private var var_388:int;
      
      private var _shareId:String;
      
      private var var_2103:String;
      
      public function ViralFurniStatusMessageParser()
      {
         super();
      }
      
      public function get campaignID() : String
      {
         return this.var_182;
      }
      
      public function get objectId() : int
      {
         return this.var_364;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1448;
      }
      
      public function get shareId() : String
      {
         return this._shareId;
      }
      
      public function get status() : int
      {
         return this.var_388;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2103;
      }
      
      public function flush() : Boolean
      {
         this._roomId = 0;
         this._roomCategory = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_182 = param1.readString();
         this.var_364 = param1.readInteger();
         this.var_388 = param1.readInteger();
         this._shareId = param1.readString();
         this.var_2103 = param1.readString();
         this.var_1448 = param1.readInteger();
         return true;
      }
   }
}
