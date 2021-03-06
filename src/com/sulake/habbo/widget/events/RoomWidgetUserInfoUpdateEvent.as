package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_122:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_142:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_1230:int = 2;
      
      public static const const_1190:int = 3;
      
      public static const const_1403:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1890:String = "";
      
      private var var_2081:int;
      
      private var var_2079:int = 0;
      
      private var var_2085:int = 0;
      
      private var _figure:String = "";
      
      private var var_45:BitmapData = null;
      
      private var var_270:Array;
      
      private var var_1588:Array;
      
      private var var_1441:int = 0;
      
      private var var_2175:String = "";
      
      private var var_2180:int = 0;
      
      private var var_2177:int = 0;
      
      private var var_1631:Boolean = false;
      
      private var var_1591:String = "";
      
      private var var_2182:Boolean = false;
      
      private var var_2174:Boolean = true;
      
      private var var_1200:int = 0;
      
      private var var_2183:Boolean = false;
      
      private var var_2184:Boolean = false;
      
      private var var_2178:Boolean = false;
      
      private var var_2181:Boolean = false;
      
      private var var_2176:Boolean = false;
      
      private var var_2179:Boolean = false;
      
      private var var_2185:int = 0;
      
      private var var_1632:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_270 = [];
         this.var_1588 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1890 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1890;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2081 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2081;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2079 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2079;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2085 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2085;
      }
      
      public function set figure(param1:String) : void
      {
         this._figure = param1;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_45 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_45;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_270 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_270;
      }
      
      public function get givableBadges() : Array
      {
         return this.var_1588;
      }
      
      public function set givableBadges(param1:Array) : void
      {
         this.var_1588 = param1;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1441 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1441;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2175 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2175;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2182 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2182;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this.var_1200 = param1;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1200;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2183 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2183;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2184 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2184;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2178 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2178;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2181 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2181;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2176 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2176;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2179 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2179;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2185 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2185;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2174 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2174;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1632 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1632;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2180 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2180;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2177 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2177;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1631 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1631;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1591 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1591;
      }
   }
}
