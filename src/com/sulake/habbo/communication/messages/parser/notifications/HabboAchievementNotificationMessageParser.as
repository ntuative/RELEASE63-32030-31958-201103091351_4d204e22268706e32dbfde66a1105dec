package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1460:int;
      
      private var var_1772:int;
      
      private var var_2074:int;
      
      private var var_1871:int;
      
      private var var_1461:int;
      
      private var var_2077:String = "";
      
      private var var_2076:String = "";
      
      private var var_2075:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1460 = param1.readInteger();
         this.var_2077 = param1.readString();
         this.var_1772 = param1.readInteger();
         this.var_2074 = param1.readInteger();
         this.var_1871 = param1.readInteger();
         this.var_1461 = param1.readInteger();
         this.var_2075 = param1.readInteger();
         this.var_2076 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1460;
      }
      
      public function get points() : int
      {
         return this.var_1772;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2074;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1871;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1461;
      }
      
      public function get badgeID() : String
      {
         return this.var_2077;
      }
      
      public function get achievementID() : int
      {
         return this.var_2075;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2076;
      }
   }
}
