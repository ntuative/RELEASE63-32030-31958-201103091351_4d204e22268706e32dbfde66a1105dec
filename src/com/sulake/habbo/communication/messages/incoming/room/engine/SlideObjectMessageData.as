package com.sulake.habbo.communication.messages.incoming.room.engine
{
   import com.sulake.room.utils.Vector3d;
   
   public class SlideObjectMessageData
   {
      
      public static const const_1006:String = "mv";
      
      public static const const_1215:String = "sld";
       
      
      private var _id:int = 0;
      
      private var var_82:Vector3d;
      
      private var _target:Vector3d;
      
      private var var_1845:String;
      
      private var var_170:Boolean = false;
      
      public function SlideObjectMessageData(param1:int, param2:Vector3d, param3:Vector3d, param4:String = null)
      {
         super();
         this._id = param1;
         this.var_82 = param2;
         this._target = param3;
         this.var_1845 = param4;
      }
      
      public function setReadOnly() : void
      {
         this.var_170 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get loc() : Vector3d
      {
         return this.var_82;
      }
      
      public function set loc(param1:Vector3d) : void
      {
         if(!this.var_170)
         {
            this.var_82 = param1;
         }
      }
      
      public function get target() : Vector3d
      {
         return this._target;
      }
      
      public function set target(param1:Vector3d) : void
      {
         if(!this.var_170)
         {
            this._target = param1;
         }
      }
      
      public function get moveType() : String
      {
         return this.var_1845;
      }
      
      public function set moveType(param1:String) : void
      {
         if(!this.var_170)
         {
            this.var_1845 = param1;
         }
      }
   }
}
