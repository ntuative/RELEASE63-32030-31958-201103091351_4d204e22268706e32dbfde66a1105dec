package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1014:String;
      
      private var var_1343:Array;
      
      private var var_1146:Array;
      
      private var var_1855:int;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get question() : String
      {
         return this.var_1014;
      }
      
      public function get choices() : Array
      {
         return this.var_1343.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1146.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1855;
      }
      
      public function flush() : Boolean
      {
         this.var_1014 = "";
         this.var_1343 = [];
         this.var_1146 = [];
         this.var_1855 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1014 = param1.readString();
         this.var_1343 = [];
         this.var_1146 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            this.var_1343.push(param1.readString());
            this.var_1146.push(param1.readInteger());
            _loc3_++;
         }
         this.var_1855 = param1.readInteger();
         return true;
      }
   }
}
