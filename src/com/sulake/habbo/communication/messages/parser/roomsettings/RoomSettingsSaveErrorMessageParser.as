package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1933:int = 1;
      
      public static const const_1871:int = 2;
      
      public static const const_1902:int = 3;
      
      public static const const_1919:int = 4;
      
      public static const const_1664:int = 5;
      
      public static const const_1844:int = 6;
      
      public static const const_1561:int = 7;
      
      public static const const_1673:int = 8;
      
      public static const const_1794:int = 9;
      
      public static const const_1593:int = 10;
      
      public static const const_1473:int = 11;
      
      public static const const_1511:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1552:int;
      
      private var var_1454:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1552 = param1.readInteger();
         this.var_1454 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1552;
      }
      
      public function get info() : String
      {
         return this.var_1454;
      }
   }
}
