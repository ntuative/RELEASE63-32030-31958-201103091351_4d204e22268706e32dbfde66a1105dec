package com.sulake.habbo.room.object.visualization.avatar
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IAvatarImageListener;
   import com.sulake.habbo.avatar.animation.IAnimationLayerData;
   import com.sulake.habbo.avatar.animation.ISpriteDataContainer;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.RoomObjectSpriteVisualization;
   import com.sulake.room.utils.IRoomGeometry;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   
   public class AvatarVisualization extends RoomObjectSpriteVisualization implements IAvatarImageListener
   {
      
      private static const const_972:String = "avatar";
      
      private static const const_611:Number = -0.01;
      
      private static const const_610:Number = -0.409;
      
      private static const const_970:int = 2;
      
      private static const const_1301:Array = [0,0,0];
      
      private static const const_1371:int = 3;
       
      
      private var var_628:AvatarVisualizationData = null;
      
      private var var_471:Map;
      
      private var var_506:Map;
      
      private var var_1085:int = 0;
      
      private var var_850:Boolean;
      
      private var _figure:String;
      
      private var var_929:String;
      
      private var var_1084:int = 0;
      
      private var var_629:BitmapDataAsset;
      
      private var var_966:BitmapDataAsset;
      
      private var var_1652:int = -1;
      
      private var var_1862:int = -1;
      
      private var var_1864:int = -1;
      
      private const const_971:int = 0;
      
      private const const_1702:int = 1;
      
      private const const_1725:int = 2;
      
      private const const_1724:int = 3;
      
      private const const_1300:int = 4;
      
      private var var_1696:int = -1;
      
      private var var_261:String = "";
      
      private var _postureParameter:String = "";
      
      private var var_1863:Boolean = false;
      
      private var var_1865:Boolean = false;
      
      private var _isSleeping:Boolean = false;
      
      private var var_1458:Boolean = false;
      
      private var var_642:Boolean = false;
      
      private var var_1334:int = 0;
      
      private var var_1459:int = 0;
      
      private var var_2047:int = 0;
      
      private var var_764:int = 0;
      
      private var var_765:int = 0;
      
      private var var_627:int = 0;
      
      private var var_1457:int = 0;
      
      private var var_1182:Boolean = false;
      
      private var var_1866:Boolean = false;
      
      private var var_1183:int = 0;
      
      private var var_766:int = 0;
      
      private var var_1861:Boolean = false;
      
      private var var_1181:int = 0;
      
      private var var_59:IAvatarImage = null;
      
      private var var_788:Boolean;
      
      public function AvatarVisualization()
      {
         super();
         this.var_471 = new Map();
         this.var_506 = new Map();
         this.var_850 = false;
      }
      
      override public function dispose() : void
      {
         if(this.var_471 != null)
         {
            this.resetImages();
            this.var_471.dispose();
            this.var_506.dispose();
            this.var_471 = null;
         }
         this.var_628 = null;
         this.var_629 = null;
         this.var_966 = null;
         super.dispose();
         this.var_788 = true;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_788;
      }
      
      override public function initialize(param1:IRoomObjectVisualizationData) : Boolean
      {
         this.var_628 = param1 as AvatarVisualizationData;
         createSprites(this.const_1300);
         return true;
      }
      
      private function updateModel(param1:IRoomObjectModel, param2:Number, param3:Boolean) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:* = false;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:* = null;
         if(param1.getUpdateID() != var_169)
         {
            _loc4_ = false;
            _loc5_ = false;
            _loc6_ = 0;
            _loc7_ = "";
            _loc5_ = Boolean(param1.getNumber(RoomObjectVariableEnum.const_263) > 0 && param3);
            if(_loc5_ != this.var_1863)
            {
               this.var_1863 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_338) > 0;
            if(_loc5_ != this.var_1865)
            {
               this.var_1865 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_371) > 0;
            if(_loc5_ != this._isSleeping)
            {
               this._isSleeping = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = Boolean(param1.getNumber(RoomObjectVariableEnum.const_731) > 0 && param3);
            if(_loc5_ != this.var_1458)
            {
               this.var_1458 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_1136) > 0;
            if(_loc5_ != this.var_642)
            {
               this.var_642 = _loc5_;
               _loc4_ = true;
               this.updateTypingBubble(param2);
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_253);
            if(_loc6_ != this.var_1334)
            {
               this.var_1334 = _loc6_;
               _loc4_ = true;
            }
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_370);
            if(_loc7_ != this.var_261)
            {
               this.var_261 = _loc7_;
               _loc4_ = true;
            }
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_800);
            if(_loc7_ != this._postureParameter)
            {
               this._postureParameter = _loc7_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_1004);
            if(_loc6_ != this.var_1459)
            {
               this.var_1459 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_534);
            if(_loc6_ != this.var_764)
            {
               this.var_764 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_584);
            if(_loc6_ != this.var_765)
            {
               this.var_765 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_403);
            if(_loc6_ != this.var_627)
            {
               this.var_627 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_286);
            if(_loc6_ != this.var_1652)
            {
               this.var_1652 = _loc6_;
               _loc4_ = true;
            }
            if(this.var_765 > 0 && param1.getNumber(RoomObjectVariableEnum.const_403) > 0)
            {
               if(this.var_627 != this.var_765)
               {
                  this.var_627 = this.var_765;
                  _loc4_ = true;
               }
            }
            else if(this.var_627 != 0)
            {
               this.var_627 = 0;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_908);
            if(_loc6_ != this.var_1183)
            {
               this.var_1183 = _loc6_;
               _loc4_ = true;
               this.updateNumberBubble(param2);
            }
            this.validateActions(param2);
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_1108);
            if(_loc7_ != this.var_929)
            {
               this.var_929 = _loc7_;
               _loc4_ = true;
            }
            _loc8_ = param1.getString(RoomObjectVariableEnum.const_198);
            if(this.updateFigure(_loc8_))
            {
               _loc4_ = true;
            }
            var_169 = param1.getUpdateID();
            return _loc4_;
         }
         return false;
      }
      
      private function updateFigure(param1:String) : Boolean
      {
         if(this._figure != param1)
         {
            this._figure = param1;
            this.resetImages();
            return true;
         }
         return false;
      }
      
      private function resetImages() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         for each(_loc1_ in this.var_471)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         for each(_loc1_ in this.var_506)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         this.var_471.reset();
         this.var_506.reset();
         this.var_59 = null;
         _loc2_ = getSprite(this.const_971);
         if(_loc2_ != null)
         {
            _loc2_.asset = null;
            _loc2_.alpha = 255;
         }
      }
      
      private function validateActions(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(param1 < 48)
         {
            this.var_1458 = false;
         }
         if(this.var_261 == "sit" || this.var_261 == "lay")
         {
            this.var_1457 = param1 / 2;
         }
         else
         {
            this.var_1457 = 0;
         }
         this.var_1866 = false;
         this.var_1182 = false;
         if(this.var_261 == "lay")
         {
            this.var_1182 = true;
            _loc2_ = int(this._postureParameter);
            if(_loc2_ < 0)
            {
               this.var_1866 = true;
            }
         }
      }
      
      private function getAvatarImage(param1:Number, param2:int) : IAvatarImage
      {
         var _loc3_:* = null;
         var _loc4_:String = "avatarImage" + param1.toString();
         if(param2 == 0)
         {
            _loc3_ = this.var_471.getValue(_loc4_) as IAvatarImage;
         }
         else
         {
            _loc4_ += "-" + param2;
            _loc3_ = this.var_506.getValue(_loc4_) as IAvatarImage;
         }
         if(_loc3_ == null)
         {
            _loc3_ = this.var_628.getAvatar(this._figure,param1,this.var_929,this);
            if(_loc3_ != null)
            {
               if(param2 == 0)
               {
                  this.var_471.add(_loc4_,_loc3_);
               }
               else
               {
                  if(this.var_506.length >= const_1371)
                  {
                     this.var_506.remove(this.var_506.getKeys().shift());
                  }
                  this.var_506.add(_loc4_,_loc3_);
               }
            }
         }
         return _loc3_;
      }
      
      private function updateObject(param1:IRoomObject, param2:IRoomGeometry, param3:Boolean, param4:Boolean = false) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(param4 || var_451 != param1.getUpdateID() || this.var_1696 != param2.updateId)
         {
            _loc5_ = param3;
            _loc6_ = param1.getDirection().x - param2.direction.x;
            _loc6_ = (_loc6_ % 360 + 360) % 360;
            _loc7_ = this.var_1652;
            if(this.var_261 == "float")
            {
               _loc7_ = _loc6_;
            }
            else
            {
               _loc7_ -= param2.direction.x;
            }
            _loc7_ = (_loc7_ % 360 + 360) % 360;
            if(_loc6_ != this.var_1862 || param4)
            {
               _loc5_ = true;
               this.var_1862 = _loc6_;
               _loc6_ -= 112.5;
               _loc6_ = (_loc6_ + 360) % 360;
               this.var_59.setDirectionAngle(AvatarSetType.const_35,_loc6_);
            }
            if(_loc7_ != this.var_1864 || param4)
            {
               _loc5_ = true;
               this.var_1864 = _loc7_;
               if(this.var_1864 != this.var_1862)
               {
                  _loc7_ -= 112.5;
                  _loc7_ = (_loc7_ + 360) % 360;
                  this.var_59.setDirectionAngle(AvatarSetType.const_51,_loc7_);
               }
            }
            var_451 = param1.getUpdateID();
            this.var_1696 = param2.updateId;
            return _loc5_;
         }
         return false;
      }
      
      private function updateShadow(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1702);
         this.var_629 = null;
         if(this.var_261 == "mv" || this.var_261 == "std")
         {
            _loc2_.visible = true;
            if(this.var_629 == null || param1 != var_187)
            {
               _loc3_ = 0;
               _loc4_ = 0;
               if(param1 < 48)
               {
                  this.var_629 = this.var_59.getAsset("sh_std_sd_1_0_0");
                  _loc3_ = -8;
                  _loc4_ = -3;
               }
               else
               {
                  this.var_629 = this.var_59.getAsset("h_std_sd_1_0_0");
                  _loc3_ = -17;
                  _loc4_ = -7;
               }
               if(this.var_629 != null)
               {
                  _loc2_.asset = this.var_629.content as BitmapData;
                  _loc2_.offsetX = _loc3_;
                  _loc2_.offsetY = _loc4_;
                  _loc2_.alpha = 50;
                  _loc2_.relativeDepth = 1;
               }
               else
               {
                  _loc2_.visible = false;
               }
            }
         }
         else
         {
            this.var_629 = null;
            _loc2_.visible = false;
         }
      }
      
      private function updateTypingBubble(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.var_966 = null;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1725);
         if(this.var_642)
         {
            _loc2_.visible = true;
            _loc5_ = 64;
            if(param1 < 48)
            {
               this.var_966 = this.var_628.getAvatarRendererAsset("user_typing_small_png") as BitmapDataAsset;
               _loc3_ = 3;
               _loc4_ = -42;
               _loc5_ = 32;
            }
            else
            {
               this.var_966 = this.var_628.getAvatarRendererAsset("user_typing_png") as BitmapDataAsset;
               _loc3_ = 14;
               _loc4_ = -83;
            }
            if(this.var_261 == "sit")
            {
               _loc4_ += _loc5_ / 2;
            }
            else if(this.var_261 == "lay")
            {
               _loc4_ += _loc5_;
            }
            if(this.var_966 != null)
            {
               _loc2_.asset = this.var_966.content as BitmapData;
               _loc2_.offsetX = _loc3_;
               _loc2_.offsetY = _loc4_;
               _loc2_.relativeDepth = -0.02;
            }
         }
         else
         {
            _loc2_.visible = false;
         }
      }
      
      private function updateNumberBubble(param1:Number) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc2_:* = null;
         var _loc3_:IRoomObjectSprite = getSprite(this.const_1724);
         if(this.var_1183 > 0)
         {
            _loc6_ = 64;
            if(param1 < 48)
            {
               _loc2_ = this.var_628.getAvatarRendererAsset("number_" + this.var_1183 + "_small_png") as BitmapDataAsset;
               _loc4_ = -6;
               _loc5_ = -52;
               _loc6_ = 32;
            }
            else
            {
               _loc2_ = this.var_628.getAvatarRendererAsset("number_" + this.var_1183 + "_png") as BitmapDataAsset;
               _loc4_ = -8;
               _loc5_ = -105;
            }
            if(this.var_261 == "sit")
            {
               _loc5_ += _loc6_ / 2;
            }
            else if(this.var_261 == "lay")
            {
               _loc5_ += _loc6_;
            }
            if(_loc2_ != null)
            {
               _loc3_.visible = true;
               _loc3_.asset = _loc2_.content as BitmapData;
               _loc3_.offsetX = _loc4_;
               _loc3_.offsetY = _loc5_;
               _loc3_.relativeDepth = -0.01;
               this.var_766 = 1;
               this.var_1861 = true;
               this.var_1181 = 0;
               _loc3_.alpha = 0;
            }
            else
            {
               _loc3_.visible = false;
            }
         }
         else if(_loc3_.visible)
         {
            this.var_766 = -1;
         }
      }
      
      private function animateNumberBubble(param1:int) : Boolean
      {
         var _loc5_:int = 0;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1724);
         var _loc3_:int = _loc2_.alpha;
         var _loc4_:Boolean = false;
         if(this.var_1861)
         {
            ++this.var_1181;
            if(this.var_1181 < 10)
            {
               return false;
            }
            if(this.var_766 < 0)
            {
               if(param1 < 48)
               {
                  _loc2_.offsetY -= 2;
               }
               else
               {
                  _loc2_.offsetY -= 4;
               }
            }
            else
            {
               _loc5_ = 4;
               if(param1 < 48)
               {
                  _loc5_ = 8;
               }
               if(this.var_1181 % _loc5_ == 0)
               {
                  --_loc2_.offsetY;
                  _loc4_ = true;
               }
            }
         }
         if(this.var_766 > 0)
         {
            if(_loc3_ < 255)
            {
               _loc3_ += 32;
            }
            if(_loc3_ >= 255)
            {
               _loc3_ = 255;
               this.var_766 = 0;
            }
            _loc2_.alpha = _loc3_;
            return true;
         }
         if(this.var_766 < 0)
         {
            if(_loc3_ >= 0)
            {
               _loc3_ -= 32;
            }
            if(_loc3_ <= 0)
            {
               this.var_766 = 0;
               this.var_1861 = false;
               _loc3_ = 0;
               _loc2_.visible = false;
            }
            _loc2_.alpha = _loc3_;
            return true;
         }
         return _loc4_;
      }
      
      override public function update(param1:IRoomGeometry, param2:int, param3:Boolean) : void
      {
         var _loc15_:* = null;
         var _loc16_:* = null;
         var _loc17_:* = null;
         var _loc18_:int = 0;
         var _loc19_:* = null;
         var _loc20_:* = null;
         var _loc21_:* = null;
         var _loc22_:int = 0;
         var _loc23_:int = 0;
         var _loc24_:* = null;
         var _loc25_:int = 0;
         var _loc26_:int = 0;
         var _loc27_:int = 0;
         var _loc28_:int = 0;
         var _loc29_:int = 0;
         var _loc30_:* = null;
         var _loc31_:* = null;
         var _loc4_:IRoomObject = object;
         if(_loc4_ == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(this.var_628 == null)
         {
            return;
         }
         var _loc5_:IRoomObjectModel = _loc4_.getModel();
         var _loc6_:Number = param1.scale;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc10_:int = this.var_764;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = this.updateModel(_loc5_,_loc6_,param3);
         if(this.animateNumberBubble(_loc6_))
         {
            increaseUpdateId();
         }
         if(_loc12_ || _loc6_ != var_187 || this.var_59 == null)
         {
            if(_loc6_ != var_187)
            {
               _loc8_ = true;
               this.validateActions(_loc6_);
            }
            if(_loc10_ != this.var_764)
            {
               _loc11_ = true;
            }
            if(_loc8_ || this.var_59 == null || _loc11_)
            {
               this.var_59 = this.getAvatarImage(_loc6_,this.var_764);
               if(this.var_59 == null)
               {
                  return;
               }
               _loc7_ = true;
               _loc15_ = getSprite(this.const_971);
               if(_loc15_ && this.var_59 && this.var_59.isPlaceholder())
               {
                  _loc15_.alpha = 150;
               }
               else if(_loc15_)
               {
                  _loc15_.alpha = 255;
               }
            }
            if(this.var_59 == null)
            {
               return;
            }
            this.updateShadow(_loc6_);
            if(_loc8_)
            {
               this.updateTypingBubble(_loc6_);
               this.updateNumberBubble(_loc6_);
            }
            _loc9_ = this.updateObject(_loc4_,param1,param3,true);
            this.updateActions(this.var_59);
            var_187 = _loc6_;
         }
         else
         {
            _loc9_ = this.updateObject(_loc4_,param1,param3);
         }
         var _loc13_:Boolean = _loc9_ || _loc12_ || _loc8_;
         var _loc14_:Boolean = (this.var_850 || this.var_1084 > 0) && param3;
         if(_loc13_)
         {
            this.var_1084 = const_970;
         }
         if(_loc13_ || _loc14_)
         {
            increaseUpdateId();
            --this.var_1084;
            --this.var_1085;
            if(!(this.var_1085 <= 0 || _loc8_ || _loc12_ || _loc7_))
            {
               return;
            }
            this.var_59.updateAnimationByFrames(1);
            this.var_1085 = const_970;
            _loc17_ = this.var_59.getCanvasOffsets();
            if(_loc17_ == null || _loc17_.length < 3)
            {
               _loc17_ = const_1301;
            }
            _loc16_ = getSprite(this.const_971);
            if(_loc16_ != null)
            {
               _loc20_ = this.var_59.getImage(AvatarSetType.const_35,false);
               if(_loc20_ != null)
               {
                  _loc16_.asset = _loc20_;
               }
               if(_loc16_.asset)
               {
                  _loc16_.offsetX = -1 * _loc6_ / 2 + _loc17_[0];
                  _loc16_.offsetY = -_loc16_.asset.height + _loc6_ / 4 + _loc17_[1] + this.var_1457;
               }
               if(this.var_1182)
               {
                  if(this.var_1866)
                  {
                     _loc16_.relativeDepth = -0.5;
                  }
                  else
                  {
                     _loc16_.relativeDepth = const_610 + _loc17_[2];
                  }
               }
               else
               {
                  _loc16_.relativeDepth = const_611 + _loc17_[2];
               }
            }
            _loc16_ = getSprite(this.const_1725);
            if(_loc16_ != null && _loc16_.visible)
            {
               if(!this.var_1182)
               {
                  _loc16_.relativeDepth = const_611 - 0.01 + _loc17_[2];
               }
               else
               {
                  _loc16_.relativeDepth = const_610 - 0.01 + _loc17_[2];
               }
            }
            this.var_850 = this.var_59.isAnimating();
            _loc18_ = this.const_1300;
            for each(_loc19_ in this.var_59.getSprites())
            {
               if(_loc19_.id == const_972)
               {
                  _loc16_ = getSprite(this.const_971);
                  _loc21_ = this.var_59.getLayerData(_loc19_);
                  _loc22_ = _loc19_.getDirectionOffsetX(this.var_59.getDirection());
                  _loc23_ = _loc19_.getDirectionOffsetY(this.var_59.getDirection());
                  if(_loc21_ != null)
                  {
                     _loc22_ += _loc21_.dx;
                     _loc23_ += _loc21_.dy;
                  }
                  if(_loc6_ < 48)
                  {
                     _loc22_ /= 2;
                     _loc23_ /= 2;
                  }
                  _loc16_.offsetX += _loc22_;
                  _loc16_.offsetY += _loc23_;
               }
               else
               {
                  _loc16_ = getSprite(_loc18_);
                  if(_loc16_ != null)
                  {
                     _loc16_.capturesMouse = false;
                     _loc16_.visible = true;
                     _loc24_ = this.var_59.getLayerData(_loc19_);
                     _loc25_ = 0;
                     _loc26_ = _loc19_.getDirectionOffsetX(this.var_59.getDirection());
                     _loc27_ = _loc19_.getDirectionOffsetY(this.var_59.getDirection());
                     _loc28_ = _loc19_.getDirectionOffsetZ(this.var_59.getDirection());
                     _loc29_ = 0;
                     if(_loc19_.hasDirections)
                     {
                        _loc29_ = this.var_59.getDirection();
                     }
                     if(_loc24_ != null)
                     {
                        _loc25_ = _loc24_.animationFrame;
                        _loc26_ += _loc24_.dx;
                        _loc27_ += _loc24_.dy;
                        _loc29_ += _loc24_.directionOffset;
                     }
                     if(_loc6_ < 48)
                     {
                        _loc26_ /= 2;
                        _loc27_ /= 2;
                     }
                     if(_loc29_ < 0)
                     {
                        _loc29_ += 8;
                     }
                     else if(_loc29_ > 7)
                     {
                        _loc29_ -= 8;
                     }
                     _loc30_ = this.var_59.getScale() + "_" + _loc19_.member + "_" + _loc29_ + "_" + _loc25_;
                     _loc31_ = this.var_59.getAsset(_loc30_);
                     if(_loc31_ == null)
                     {
                        continue;
                     }
                     _loc16_.asset = _loc31_.content as BitmapData;
                     _loc16_.offsetX = -_loc31_.offset.x - _loc6_ / 2 + _loc26_;
                     _loc16_.offsetY = -_loc31_.offset.y + _loc27_ + this.var_1457;
                     if(this.var_1182)
                     {
                        _loc16_.relativeDepth = const_610 - 0.001 * spriteCount * _loc28_;
                     }
                     else
                     {
                        _loc16_.relativeDepth = const_611 - 0.001 * spriteCount * _loc28_;
                     }
                     if(_loc19_.ink == 33)
                     {
                        _loc16_.blendMode = BlendMode.ADD;
                     }
                     else
                     {
                        _loc16_.blendMode = BlendMode.NORMAL;
                     }
                  }
                  _loc18_++;
               }
            }
         }
      }
      
      private function updateActions(param1:IAvatarImage) : void
      {
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         param1.initActionAppends();
         param1.appendAction(AvatarAction.const_362,this.var_261,this._postureParameter);
         if(this.var_1334 > 0)
         {
            param1.appendAction(AvatarAction.const_316,AvatarAction.const_1596[this.var_1334]);
         }
         if(this.var_1459 > 0)
         {
            param1.appendAction(AvatarAction.const_646,this.var_1459);
         }
         if(this.var_2047 > 0)
         {
            param1.appendAction(AvatarAction.const_659,this.var_2047);
         }
         if(this.var_765 > 0)
         {
            param1.appendAction(AvatarAction.const_829,this.var_765);
         }
         if(this.var_627 > 0)
         {
            param1.appendAction(AvatarAction.const_669,this.var_627);
         }
         if(this.var_1863)
         {
            param1.appendAction(AvatarAction.const_292);
         }
         if(this._isSleeping || this.var_1458)
         {
            param1.appendAction(AvatarAction.const_479);
         }
         if(this.var_1865)
         {
            param1.appendAction(AvatarAction.const_223);
         }
         if(this.var_764 > 0)
         {
            param1.appendAction(AvatarAction.const_297,this.var_764);
         }
         param1.endActionAppends();
         this.var_850 = param1.isAnimating();
         var _loc2_:int = this.const_1300;
         for each(_loc3_ in this.var_59.getSprites())
         {
            if(_loc3_.id != const_972)
            {
               _loc2_++;
            }
         }
         if(_loc2_ != spriteCount)
         {
            createSprites(_loc2_);
         }
      }
      
      public function avatarImageReady(param1:String) : void
      {
         this.resetImages();
      }
   }
}
