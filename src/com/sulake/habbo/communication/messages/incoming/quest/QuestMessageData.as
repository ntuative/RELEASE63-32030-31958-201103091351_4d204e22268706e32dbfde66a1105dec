package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var _id:int;
      
      private var var_388:int;
      
      private var _type:String;
      
      private var var_1674:String;
      
      private var var_1675:int;
      
      private var var_1676:String;
      
      private var var_713:String;
      
      private var var_1673:String;
      
      private var var_2331:String;
      
      private var var_2332:uint;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this.var_388 = param1.readInteger();
         this._type = param1.readString();
         this.var_1674 = param1.readString();
         this.var_1675 = param1.readInteger();
         this.var_1676 = param1.readString();
         this.var_713 = param1.readString();
         this.var_2331 = param1.readString();
         var _loc2_:String = "";
         var _loc3_:int = this.var_713.length - 1;
         while(_loc3_ > 0 && this.isNumber(this.var_713.charAt(_loc3_)))
         {
            _loc2_ = this.var_713.charAt(_loc3_) + _loc2_;
            _loc3_--;
         }
         if(_loc3_ > 0)
         {
            this.var_1673 = this.var_713.substring(0,_loc3_ + 1);
         }
         else
         {
            this.var_1673 = this.var_713;
         }
         this.var_2332 = uint(_loc2_);
      }
      
      private function getNumber(param1:String) : int
      {
         var _loc2_:int = param1.charCodeAt(0);
         return _loc2_ - 48;
      }
      
      private function isNumber(param1:String) : Boolean
      {
         var _loc2_:int = param1.charCodeAt(0);
         return _loc2_ >= 48 && _loc2_ <= 57;
      }
      
      public function dispose() : void
      {
         this._id = 0;
         this.var_388 = 0;
         this._type = "";
         this.var_1674 = "";
         this.var_1675 = 0;
         this.var_1676 = "";
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get status() : int
      {
         return this.var_388;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get roomItemTypeName() : String
      {
         return this.var_1674;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_1675;
      }
      
      public function get endDateTimeStamp() : String
      {
         return this.var_1676;
      }
      
      public function get localizationCode() : String
      {
         return this.var_713;
      }
      
      public function get sortCode() : uint
      {
         return this.var_2332;
      }
      
      public function get localizationPrefix() : String
      {
         return this.var_1673;
      }
      
      public function get questBadgeAchievementTypeId() : String
      {
         return this.var_2331;
      }
   }
}
