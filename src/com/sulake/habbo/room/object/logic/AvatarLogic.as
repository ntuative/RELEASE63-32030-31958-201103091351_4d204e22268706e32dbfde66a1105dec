package com.sulake.habbo.room.object.logic
{
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import com.sulake.habbo.room.events.RoomObjectMoveEvent;
   import com.sulake.habbo.room.messages.RoomObjectAvatarCarryObjectUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarChatUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarDanceUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarEffectUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarFigureUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarFlatControlUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarGestureUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarPlayerValueUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarPostureUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarSelectedMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarSignUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarSleepUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarTypingUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarUseObjectUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarWaveUpdateMessage;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.events.RoomObjectEvent;
   import com.sulake.room.events.RoomObjectMouseEvent;
   import com.sulake.room.events.RoomSpriteMouseEvent;
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.object.IRoomObjectModelController;
   import com.sulake.room.utils.IRoomGeometry;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   
   public class AvatarLogic extends MovingObjectLogic
   {
      
      private static const const_920:Number = 1.5;
      
      private static const const_921:int = 28;
      
      private static const const_918:int = 29;
      
      private static const const_919:int = 500;
      
      private static const const_1270:int = 999999999;
       
      
      private var var_189:Boolean = false;
      
      private var var_459:Vector3d = null;
      
      private var var_678:int = 0;
      
      private var var_1293:int = 0;
      
      private var var_1295:int = 0;
      
      private var var_832:int = 0;
      
      private var var_679:int = 0;
      
      private var var_1036:int = 0;
      
      private var var_1296:int = 0;
      
      private var var_1297:int = 0;
      
      private var var_833:int = 0;
      
      private var var_1571:Boolean = false;
      
      private var var_1298:int = 0;
      
      private var var_1572:int = 0;
      
      private var var_1294:int = 0;
      
      public function AvatarLogic()
      {
         super();
         this.var_1572 = getTimer() + this.getBlinkInterval();
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(this.var_189 && object != null)
         {
            if(eventDispatcher != null)
            {
               _loc1_ = new RoomObjectMoveEvent(RoomObjectMoveEvent.const_580,object.getId(),object.getType());
               eventDispatcher.dispatchEvent(_loc1_);
            }
         }
         super.dispose();
         this.var_459 = null;
      }
      
      override public function processUpdateMessage(param1:RoomObjectUpdateMessage) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:* = null;
         var _loc16_:* = null;
         var _loc17_:* = null;
         var _loc18_:* = null;
         var _loc19_:* = null;
         var _loc20_:* = null;
         var _loc21_:* = null;
         var _loc22_:* = null;
         var _loc23_:* = null;
         if(param1 == null || object == null)
         {
            return;
         }
         super.processUpdateMessage(param1);
         var _loc2_:IRoomObjectModelController = object.getModelController();
         if(param1 is RoomObjectAvatarPostureUpdateMessage)
         {
            _loc3_ = param1 as RoomObjectAvatarPostureUpdateMessage;
            _loc2_.setString(RoomObjectVariableEnum.const_370,_loc3_.postureType);
            _loc2_.setString(RoomObjectVariableEnum.const_800,_loc3_.parameter);
            return;
         }
         if(param1 is RoomObjectAvatarChatUpdateMessage)
         {
            _loc4_ = param1 as RoomObjectAvatarChatUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_263,1);
            this.var_1295 = getTimer() + _loc4_.numberOfWords * 1000;
            return;
         }
         if(param1 is RoomObjectAvatarTypingUpdateMessage)
         {
            _loc5_ = param1 as RoomObjectAvatarTypingUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_1136,Number(_loc5_.isTyping));
            return;
         }
         if(param1 is RoomObjectAvatarUpdateMessage)
         {
            _loc6_ = param1 as RoomObjectAvatarUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_286,_loc6_.dirHead);
            return;
         }
         if(param1 is RoomObjectAvatarGestureUpdateMessage)
         {
            _loc7_ = param1 as RoomObjectAvatarGestureUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_253,_loc7_.gesture);
            this.var_1296 = getTimer() + 3000;
            return;
         }
         if(param1 is RoomObjectAvatarWaveUpdateMessage)
         {
            _loc8_ = param1 as RoomObjectAvatarWaveUpdateMessage;
            if(_loc8_.isWaving)
            {
               _loc2_.setNumber(RoomObjectVariableEnum.const_338,1);
               this.var_1036 = getTimer() + 0;
            }
            else
            {
               _loc2_.setNumber(RoomObjectVariableEnum.const_338,0);
               this.var_1036 = 0;
            }
            return;
         }
         if(param1 is RoomObjectAvatarDanceUpdateMessage)
         {
            _loc9_ = param1 as RoomObjectAvatarDanceUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_1004,_loc9_.danceStyle);
            return;
         }
         if(param1 is RoomObjectAvatarSleepUpdateMessage)
         {
            _loc10_ = param1 as RoomObjectAvatarSleepUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_371,Number(_loc10_.isSleeping));
            return;
         }
         if(param1 is RoomObjectAvatarPlayerValueUpdateMessage)
         {
            _loc11_ = param1 as RoomObjectAvatarPlayerValueUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_908,_loc11_.value);
            this.var_1294 = getTimer() + 3000;
            return;
         }
         if(param1 is RoomObjectAvatarEffectUpdateMessage)
         {
            _loc12_ = param1 as RoomObjectAvatarEffectUpdateMessage;
            _loc13_ = _loc12_.effect;
            _loc14_ = _loc12_.delayMilliSeconds;
            this.updateEffect(_loc13_,_loc14_,_loc2_);
            return;
         }
         if(param1 is RoomObjectAvatarCarryObjectUpdateMessage)
         {
            _loc15_ = param1 as RoomObjectAvatarCarryObjectUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_584,_loc15_.itemType);
            if(_loc15_.itemType < const_1270)
            {
               this.var_833 = getTimer() + 100000;
               this.var_1571 = true;
            }
            else
            {
               this.var_833 = getTimer() + 1500;
               this.var_1571 = false;
            }
            return;
         }
         if(param1 is RoomObjectAvatarUseObjectUpdateMessage)
         {
            _loc16_ = param1 as RoomObjectAvatarUseObjectUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_403,_loc16_.itemType);
            return;
         }
         if(param1 is RoomObjectAvatarSignUpdateMessage)
         {
            _loc17_ = param1 as RoomObjectAvatarSignUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_1100,_loc17_.signType);
            this.var_1297 = getTimer() + 5000;
            return;
         }
         if(param1 is RoomObjectAvatarFlatControlUpdateMessage)
         {
            _loc18_ = param1 as RoomObjectAvatarFlatControlUpdateMessage;
            _loc2_.setString(RoomObjectVariableEnum.const_863,_loc18_.rawData);
            _loc2_.setNumber(RoomObjectVariableEnum.const_1482,Number(_loc18_.isAdmin));
            return;
         }
         if(param1 is RoomObjectAvatarFigureUpdateMessage)
         {
            _loc19_ = param1 as RoomObjectAvatarFigureUpdateMessage;
            _loc20_ = _loc2_.getString(RoomObjectVariableEnum.const_198);
            _loc21_ = _loc19_.figure;
            _loc22_ = _loc19_.gender;
            if(_loc20_ != null && _loc20_.indexOf(".bds-") != -1)
            {
               _loc21_ += _loc20_.substr(_loc20_.indexOf(".bds-"));
            }
            _loc2_.setString(RoomObjectVariableEnum.const_198,_loc21_);
            _loc2_.setString(RoomObjectVariableEnum.const_1108,_loc22_);
            return;
         }
         if(param1 is RoomObjectAvatarSelectedMessage)
         {
            _loc23_ = param1 as RoomObjectAvatarSelectedMessage;
            this.var_189 = _loc23_.selected;
            this.var_459 = null;
            return;
         }
      }
      
      private function updateEffect(param1:int, param2:int, param3:IRoomObjectModelController) : void
      {
         if(param1 == const_921)
         {
            this.var_678 = getTimer() + const_919;
            this.var_1293 = const_918;
         }
         else if(param3.getNumber(RoomObjectVariableEnum.const_534) == const_918)
         {
            this.var_678 = getTimer() + const_919;
            this.var_1293 = param1;
            param1 = const_921;
         }
         else
         {
            if(param2 != 0)
            {
               this.var_678 = getTimer() + param2;
               this.var_1293 = param1;
               return;
            }
            this.var_678 = 0;
         }
         param3.setNumber(RoomObjectVariableEnum.const_534,param1);
      }
      
      override public function mouseEvent(param1:RoomSpriteMouseEvent, param2:IRoomGeometry) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         if(object == null || param1 == null)
         {
            return;
         }
         switch(param1.type)
         {
            case MouseEvent.CLICK:
               _loc3_ = object.getId();
               _loc4_ = object.getType();
               if(eventDispatcher != null)
               {
                  _loc5_ = new RoomObjectMouseEvent(RoomObjectMouseEvent.const_217,param1.eventId,_loc3_,_loc4_,param1.altKey,param1.ctrlKey,param1.shiftKey,param1.buttonDown);
                  eventDispatcher.dispatchEvent(_loc5_);
               }
         }
      }
      
      override public function update(param1:int) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         super.update(param1);
         if(this.var_189 && object != null)
         {
            if(eventDispatcher != null)
            {
               _loc2_ = object.getLocation();
               if(this.var_459 == null || this.var_459.x != _loc2_.x || this.var_459.y != _loc2_.y || this.var_459.z != _loc2_.z)
               {
                  if(this.var_459 == null)
                  {
                     this.var_459 = new Vector3d();
                  }
                  this.var_459.assign(_loc2_);
                  _loc3_ = new RoomObjectMoveEvent(RoomObjectMoveEvent.const_565,object.getId(),object.getType());
                  eventDispatcher.dispatchEvent(_loc3_);
               }
            }
         }
         if(object != null && object.getModelController() != null)
         {
            this.updateActions(param1,object.getModelController());
         }
      }
      
      private function updateActions(param1:int, param2:IRoomObjectModelController) : void
      {
         if(this.var_1295 > 0)
         {
            if(param1 > this.var_1295)
            {
               param2.setNumber(RoomObjectVariableEnum.const_263,0);
               this.var_1295 = 0;
               this.var_679 = 0;
               this.var_832 = 0;
            }
            else if(this.var_832 == 0 && this.var_679 == 0)
            {
               this.var_679 = param1 + this.getTalkingPauseInterval();
               this.var_832 = this.var_679 + this.getTalkingPauseLength();
            }
            else if(this.var_679 > 0 && param1 > this.var_679)
            {
               param2.setNumber(RoomObjectVariableEnum.const_263,0);
               this.var_679 = 0;
            }
            else if(this.var_832 > 0 && param1 > this.var_832)
            {
               param2.setNumber(RoomObjectVariableEnum.const_263,1);
               this.var_832 = 0;
            }
         }
         if(this.var_1036 > 0 && param1 > this.var_1036)
         {
            param2.setNumber(RoomObjectVariableEnum.const_338,0);
            this.var_1036 = 0;
         }
         if(this.var_1296 > 0 && param1 > this.var_1296)
         {
            param2.setNumber(RoomObjectVariableEnum.const_253,0);
            this.var_1296 = 0;
         }
         if(this.var_1297 > 0 && param1 > this.var_1297)
         {
            param2.setNumber(RoomObjectVariableEnum.const_1100,0);
            this.var_1297 = 0;
         }
         if(this.var_833 > 0)
         {
            if(param1 > this.var_833)
            {
               param2.setNumber(RoomObjectVariableEnum.const_584,0);
               this.var_833 = 0;
            }
            else if((this.var_833 - param1) % 10000 < 1000 && this.var_1571)
            {
               param2.setNumber(RoomObjectVariableEnum.const_403,1);
            }
            else
            {
               param2.setNumber(RoomObjectVariableEnum.const_403,0);
            }
         }
         if(param1 > this.var_1572)
         {
            param2.setNumber(RoomObjectVariableEnum.const_731,1);
            this.var_1572 = param1 + this.getBlinkInterval();
            this.var_1298 = param1 + this.getBlinkLength();
         }
         if(this.var_1298 > 0 && param1 > this.var_1298)
         {
            param2.setNumber(RoomObjectVariableEnum.const_731,0);
            this.var_1298 = 0;
         }
         if(this.var_678 > 0 && param1 > this.var_678)
         {
            param2.setNumber(RoomObjectVariableEnum.const_534,this.var_1293);
            this.var_678 = 0;
         }
         if(this.var_1294 > 0 && param1 > this.var_1294)
         {
            param2.setNumber(RoomObjectVariableEnum.const_908,0);
            this.var_1294 = 0;
         }
      }
      
      private function getTalkingPauseInterval() : int
      {
         return 100 + Math.random() * 200;
      }
      
      private function getTalkingPauseLength() : int
      {
         return 75 + Math.random() * 75;
      }
      
      private function getBlinkInterval() : int
      {
         return 4500 + Math.random() * 1000;
      }
      
      private function getBlinkLength() : int
      {
         return 50 + Math.random() * 200;
      }
      
      private function targetIsWarping(param1:IVector3d) : Boolean
      {
         var _loc2_:IVector3d = object.getLocation();
         if(param1 == null)
         {
            return false;
         }
         if(_loc2_.x == 0 && _loc2_.y == 0)
         {
            return false;
         }
         if(Math.abs(_loc2_.x - param1.x) > const_920 || Math.abs(_loc2_.y - param1.y) > const_920)
         {
            return true;
         }
         return false;
      }
   }
}
