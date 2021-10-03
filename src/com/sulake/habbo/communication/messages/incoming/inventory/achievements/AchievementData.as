package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1460:int;
      
      private var var_314:String;
      
      private var var_2323:int;
      
      private var var_2074:int;
      
      private var var_1871:int;
      
      private var var_2324:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1460 = param1.readInteger();
         this.var_314 = param1.readString();
         this.var_2323 = param1.readInteger();
         this.var_2074 = param1.readInteger();
         this.var_1871 = param1.readInteger();
         this.var_2324 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_314;
      }
      
      public function get level() : int
      {
         return this.var_1460;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2323;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2074;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1871;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2324;
      }
   }
}
