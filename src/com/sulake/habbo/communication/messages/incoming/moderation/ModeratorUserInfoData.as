package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2379:int;
      
      private var var_2381:int;
      
      private var var_688:Boolean;
      
      private var var_2377:int;
      
      private var var_2378:int;
      
      private var var_2376:int;
      
      private var var_2380:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2379 = param1.readInteger();
         this.var_2381 = param1.readInteger();
         this.var_688 = param1.readBoolean();
         this.var_2377 = param1.readInteger();
         this.var_2378 = param1.readInteger();
         this.var_2376 = param1.readInteger();
         this.var_2380 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2379;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2381;
      }
      
      public function get online() : Boolean
      {
         return this.var_688;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2377;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2378;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2376;
      }
      
      public function get banCount() : int
      {
         return this.var_2380;
      }
   }
}
