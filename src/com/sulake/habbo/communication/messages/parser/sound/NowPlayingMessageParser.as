package com.sulake.habbo.communication.messages.parser.sound
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NowPlayingMessageParser implements IMessageParser
   {
       
      
      private var var_1849:int;
      
      private var var_1848:int;
      
      private var var_1850:int;
      
      public function NowPlayingMessageParser()
      {
         super();
      }
      
      public function get current() : int
      {
         return this.var_1849;
      }
      
      public function get next() : int
      {
         return this.var_1848;
      }
      
      public function get syncCount() : int
      {
         return this.var_1850;
      }
      
      public function flush() : Boolean
      {
         this.var_1849 = -1;
         this.var_1848 = -1;
         this.var_1850 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1849 = param1.readInteger();
         this.var_1848 = param1.readInteger();
         this.var_1850 = param1.readInteger();
         return true;
      }
   }
}
