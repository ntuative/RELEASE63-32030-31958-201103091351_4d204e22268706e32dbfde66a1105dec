package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1024:Boolean;
      
      private var var_2095:int;
      
      private var var_2091:String;
      
      private var var_331:int;
      
      private var var_2093:int;
      
      private var var_2090:String;
      
      private var var_2094:String;
      
      private var var_2092:String;
      
      private var var_810:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_810 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1024 = false;
            return;
         }
         this.var_1024 = true;
         this.var_2095 = int(_loc2_);
         this.var_2091 = param1.readString();
         this.var_331 = int(param1.readString());
         this.var_2093 = param1.readInteger();
         this.var_2090 = param1.readString();
         this.var_2094 = param1.readString();
         this.var_2092 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_810.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_810 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get ownerAvatarId() : int
      {
         return this.var_2095;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2091;
      }
      
      public function get flatId() : int
      {
         return this.var_331;
      }
      
      public function get eventType() : int
      {
         return this.var_2093;
      }
      
      public function get eventName() : String
      {
         return this.var_2090;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2094;
      }
      
      public function get creationTime() : String
      {
         return this.var_2092;
      }
      
      public function get tags() : Array
      {
         return this.var_810;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1024;
      }
   }
}
