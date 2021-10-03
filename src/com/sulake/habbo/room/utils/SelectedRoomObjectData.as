package com.sulake.habbo.room.utils
{
   import com.sulake.habbo.room.ISelectedRoomObjectData;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class SelectedRoomObjectData implements ISelectedRoomObjectData
   {
       
      
      private var _id:int = 0;
      
      private var _category:int = 0;
      
      private var var_2588:String = "";
      
      private var var_82:Vector3d = null;
      
      private var var_255:Vector3d = null;
      
      private var var_2161:int = 0;
      
      private var var_2589:String = null;
      
      public function SelectedRoomObjectData(param1:int, param2:int, param3:String, param4:IVector3d, param5:IVector3d, param6:int = 0, param7:String = null)
      {
         super();
         this._id = param1;
         this._category = param2;
         this.var_2588 = param3;
         this.var_82 = new Vector3d();
         this.var_82.assign(param4);
         this.var_255 = new Vector3d();
         this.var_255.assign(param5);
         this.var_2161 = param6;
         this.var_2589 = param7;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get operation() : String
      {
         return this.var_2588;
      }
      
      public function get loc() : Vector3d
      {
         return this.var_82;
      }
      
      public function get dir() : Vector3d
      {
         return this.var_255;
      }
      
      public function get typeId() : int
      {
         return this.var_2161;
      }
      
      public function get instanceData() : String
      {
         return this.var_2589;
      }
      
      public function dispose() : void
      {
         this.var_82 = null;
         this.var_255 = null;
      }
   }
}
