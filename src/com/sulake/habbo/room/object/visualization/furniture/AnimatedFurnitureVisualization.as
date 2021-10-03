package com.sulake.habbo.room.object.visualization.furniture
{
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.habbo.room.object.visualization.data.AnimationData;
   import com.sulake.habbo.room.object.visualization.data.AnimationFrame;
   import com.sulake.habbo.room.object.visualization.data.AnimationStateData;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   
   public class AnimatedFurnitureVisualization extends FurnitureVisualization
   {
       
      
      private var var_309:AnimatedFurnitureVisualizationData = null;
      
      private var _state:int = -1;
      
      private var var_118:AnimationStateData;
      
      private var var_1867:int = 0;
      
      private var var_967:Number = 0;
      
      private var var_584:int = 0;
      
      public function AnimatedFurnitureVisualization()
      {
         super();
         this.var_118 = new AnimationStateData();
      }
      
      protected function get layerCount() : int
      {
         return this.var_584;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.var_309 = null;
         if(this.var_118 != null)
         {
            this.var_118.dispose();
            this.var_118 = null;
         }
      }
      
      public function get animationId() : int
      {
         return this.var_118.animationId;
      }
      
      protected function getAnimationId(param1:AnimationStateData) : int
      {
         return this.animationId;
      }
      
      override public function initialize(param1:IRoomObjectVisualizationData) : Boolean
      {
         if(!(param1 is AnimatedFurnitureVisualizationData))
         {
            return false;
         }
         this.var_309 = param1 as AnimatedFurnitureVisualizationData;
         return super.initialize(param1);
      }
      
      override protected function updateObject(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         if(super.updateObject(param1,param2))
         {
            _loc3_ = object;
            if(_loc3_ == null)
            {
               return false;
            }
            _loc4_ = _loc3_.getState(0);
            if(_loc4_ != this._state)
            {
               this.setAnimation(_loc4_);
               this._state = _loc4_;
               _loc5_ = _loc3_.getModel();
               if(_loc5_ != null)
               {
                  _loc6_ = _loc5_.getNumber(RoomObjectVariableEnum.FURNITURE_STATE_UPDATE_TIME);
                  this.var_1867 = _loc6_;
               }
            }
            return true;
         }
         return false;
      }
      
      override protected function updateModel(param1:Number) : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:int = 0;
         if(super.updateModel(param1))
         {
            _loc2_ = object;
            if(_loc2_ != null)
            {
               _loc3_ = _loc2_.getModel();
               if(_loc3_ != null)
               {
                  if(this.usesAnimationResetting())
                  {
                     _loc4_ = _loc3_.getNumber(RoomObjectVariableEnum.FURNITURE_STATE_UPDATE_TIME);
                     if(_loc4_ > this.var_1867)
                     {
                        this.var_1867 = _loc4_;
                        this.setAnimation(this._state);
                     }
                  }
               }
            }
            return true;
         }
         return false;
      }
      
      private function isPlayingTransition(param1:AnimationStateData, param2:int) : Boolean
      {
         var _loc3_:int = param1.animationId;
         if(AnimationData.isTransitionFromAnimation(_loc3_) || AnimationData.isTransitionToAnimation(_loc3_))
         {
            if(param2 == param1.animationAfterTransitionId)
            {
               if(!param1.animationOver)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      private function getCurrentState(param1:AnimationStateData) : int
      {
         var _loc2_:int = param1.animationId;
         if(AnimationData.isTransitionFromAnimation(_loc2_) || AnimationData.isTransitionToAnimation(_loc2_))
         {
            return param1.animationAfterTransitionId;
         }
         return _loc2_;
      }
      
      protected function setAnimation(param1:int) : void
      {
         if(this.var_309 != null)
         {
            this.setSubAnimation(this.var_118,param1,this._state >= 0);
         }
      }
      
      protected function setSubAnimation(param1:AnimationStateData, param2:int, param3:Boolean = true) : Boolean
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(param3)
         {
            if(this.isPlayingTransition(param1,param2))
            {
               return false;
            }
            _loc4_ = param1.animationId;
            _loc5_ = this.getCurrentState(param1);
            if(param2 != _loc5_)
            {
               if(!this.var_309.isImmediateChange(this.var_967,param2,_loc5_))
               {
                  _loc6_ = AnimationData.getTransitionFromAnimationId(_loc5_);
                  if(this.var_309.hasAnimation(this.var_967,_loc6_))
                  {
                     param1.animationAfterTransitionId = param2;
                     param2 = _loc6_;
                  }
                  else
                  {
                     _loc6_ = AnimationData.getTransitionToAnimationId(param2);
                     if(this.var_309.hasAnimation(this.var_967,_loc6_))
                     {
                        param1.animationAfterTransitionId = param2;
                        param2 = _loc6_;
                     }
                  }
               }
            }
            else if(AnimationData.isTransitionFromAnimation(_loc4_))
            {
               _loc6_ = AnimationData.getTransitionToAnimationId(param2);
               if(this.var_309.hasAnimation(this.var_967,_loc6_))
               {
                  param1.animationAfterTransitionId = param2;
                  param2 = _loc6_;
               }
            }
         }
         if(param1.animationId != param2)
         {
            param1.animationId = param2;
            return true;
         }
         return false;
      }
      
      protected function getLastFramePlayed(param1:int) : Boolean
      {
         return this.var_118.getLastFramePlayed(param1);
      }
      
      protected function resetAllAnimationFrames() : void
      {
         if(this.var_118 != null)
         {
            this.var_118.setLayerCount(this.var_584);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(this.var_309 == null)
         {
            return null;
         }
         if(param1 != this.var_967)
         {
            this.var_967 = param1;
            this.var_584 = this.var_309.getLayerCount(param1);
            this.resetAllAnimationFrames();
         }
         return this.updateAnimations(param1);
      }
      
      protected function updateAnimations(param1:Number) : Array
      {
         var _loc2_:* = null;
         if(!this.var_118.animationOver)
         {
            _loc2_ = this.updateFramesForAnimation(this.var_118,param1);
            if(this.var_118.animationOver)
            {
               if(AnimationData.isTransitionFromAnimation(this.var_118.animationId) || AnimationData.isTransitionToAnimation(this.var_118.animationId))
               {
                  this.setAnimation(this.var_118.animationAfterTransitionId);
                  this.var_118.animationOver = false;
               }
            }
         }
         return _loc2_;
      }
      
      protected function updateFramesForAnimation(param1:AnimationStateData, param2:Number) : Array
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc10_:* = null;
         var _loc11_:int = 0;
         if(param1.animationOver)
         {
            return null;
         }
         var _loc3_:int = param1.frameCounter;
         var _loc4_:int = this.getAnimationId(param1);
         if(_loc3_ == 0)
         {
            _loc3_ = this.var_309.getStartFrame(param2,_loc4_,_direction);
         }
         _loc3_ += 1;
         param1.frameCounter = _loc3_;
         var _loc6_:* = null;
         param1.animationOver = true;
         var _loc7_:int = this.var_584 - 1;
         while(_loc7_ >= 0)
         {
            _loc8_ = param1.getAnimationPlayed(_loc7_);
            if(!_loc8_)
            {
               _loc9_ = param1.getLastFramePlayed(_loc7_);
               _loc10_ = param1.getFrame(_loc7_);
               if(_loc10_ != null)
               {
                  if(_loc10_.isLastFrame && _loc10_.remainingFrameRepeats <= 1)
                  {
                     _loc9_ = true;
                  }
               }
               if(_loc10_ == null || _loc10_.remainingFrameRepeats >= 0 && _loc12_ <= 0)
               {
                  _loc11_ = 0;
                  if(_loc10_ != null)
                  {
                     _loc11_ = _loc10_.activeSequence;
                  }
                  if(_loc11_ == AnimationFrame.const_1104)
                  {
                     _loc10_ = this.var_309.getFrame(param2,_loc4_,_direction,_loc7_,_loc3_);
                  }
                  else
                  {
                     _loc10_ = this.var_309.getFrameFromSequence(param2,_loc4_,_direction,_loc7_,_loc11_,_loc10_.activeSequenceOffset + _loc10_.repeats,_loc3_);
                  }
                  param1.setFrame(_loc7_,_loc10_);
                  if(_loc6_ != null)
                  {
                     _loc6_.push(_loc7_);
                  }
                  else
                  {
                     _loc6_ = [_loc7_];
                  }
               }
               if(_loc10_ == null || _loc10_.remainingFrameRepeats == AnimationFrame.const_470)
               {
                  _loc9_ = true;
                  _loc8_ = true;
               }
               else
               {
                  param1.animationOver = false;
               }
               param1.setLastFramePlayed(_loc7_,_loc9_);
               param1.setAnimationPlayed(_loc7_,_loc8_);
            }
            _loc7_--;
         }
         return _loc6_;
      }
      
      override protected function getFrameNumber(param1:int, param2:int) : int
      {
         var _loc3_:AnimationFrame = this.var_118.getFrame(param2);
         if(_loc3_ != null)
         {
            return _loc3_.id;
         }
         return super.getFrameNumber(param1,param2);
      }
      
      override protected function getSpriteXOffset(param1:int, param2:int, param3:int) : int
      {
         var _loc4_:int = super.getSpriteXOffset(param1,param2,param3);
         var _loc5_:AnimationFrame = this.var_118.getFrame(param3);
         if(_loc5_ != null)
         {
            _loc4_ += _loc5_.x;
         }
         return _loc4_;
      }
      
      override protected function getSpriteYOffset(param1:int, param2:int, param3:int) : int
      {
         var _loc4_:int = super.getSpriteYOffset(param1,param2,param3);
         var _loc5_:AnimationFrame = this.var_118.getFrame(param3);
         if(_loc5_ != null)
         {
            _loc4_ += _loc5_.y;
         }
         return _loc4_;
      }
      
      protected function usesAnimationResetting() : Boolean
      {
         return false;
      }
   }
}
