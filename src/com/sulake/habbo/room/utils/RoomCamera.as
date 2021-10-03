package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_969:int = 3;
       
      
      private var var_2600:int = -1;
      
      private var var_2602:int = -2;
      
      private var var_375:Vector3d = null;
      
      private var var_430:Vector3d = null;
      
      private var var_2607:Boolean = false;
      
      private var var_2606:Boolean = false;
      
      private var var_2603:Boolean = false;
      
      private var var_2609:Boolean = false;
      
      private var var_2604:int = 0;
      
      private var var_2605:int = 0;
      
      private var var_2601:int = 0;
      
      private var var_2608:int = 0;
      
      private var var_1453:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_430;
      }
      
      public function get targetId() : int
      {
         return this.var_2600;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2602;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2607;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2606;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2603;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2609;
      }
      
      public function get screenWd() : int
      {
         return this.var_2604;
      }
      
      public function get screenHt() : int
      {
         return this.var_2605;
      }
      
      public function get roomWd() : int
      {
         return this.var_2601;
      }
      
      public function get roomHt() : int
      {
         return this.var_2608;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2600 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2602 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2607 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2606 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2603 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2609 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2604 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2605 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2601 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2608 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(this.var_375 == null)
         {
            this.var_375 = new Vector3d();
         }
         if(this.var_375.x != param1.x || this.var_375.y != param1.y || this.var_375.z != param1.z)
         {
            this.var_375.assign(param1);
            this.var_1453 = 0;
         }
      }
      
      public function dispose() : void
      {
         this.var_375 = null;
         this.var_430 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_430 != null)
         {
            return;
         }
         this.var_430 = new Vector3d();
         this.var_430.assign(param1);
      }
      
      public function update(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null;
         if(this.var_375 != null && this.var_430 != null)
         {
            ++this.var_1453;
            _loc4_ = Vector3d.dif(this.var_375,this.var_430);
            if(_loc4_.length <= param2)
            {
               this.var_430 = this.var_375;
               this.var_375 = null;
            }
            else
            {
               _loc4_.div(_loc4_.length);
               if(_loc4_.length < param2 * (const_969 + 1))
               {
                  _loc4_.mul(param2);
               }
               else if(this.var_1453 <= const_969)
               {
                  _loc4_.mul(param2);
               }
               else
               {
                  _loc4_.mul(param3);
               }
               this.var_430 = Vector3d.sum(this.var_430,_loc4_);
            }
         }
      }
   }
}
