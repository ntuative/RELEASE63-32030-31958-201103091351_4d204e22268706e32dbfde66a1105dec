package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_331:int;
      
      private var var_687:Boolean;
      
      private var var_825:String;
      
      private var _ownerName:String;
      
      private var var_2286:int;
      
      private var var_2340:int;
      
      private var var_2366:int;
      
      private var var_1556:String;
      
      private var var_2369:int;
      
      private var var_2368:Boolean;
      
      private var var_730:int;
      
      private var var_1445:int;
      
      private var var_2365:String;
      
      private var var_810:Array;
      
      private var var_2367:RoomThumbnailData;
      
      private var var_2282:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_810 = new Array();
         super();
         this.var_331 = param1.readInteger();
         this.var_687 = param1.readBoolean();
         this.var_825 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2286 = param1.readInteger();
         this.var_2340 = param1.readInteger();
         this.var_2366 = param1.readInteger();
         this.var_1556 = param1.readString();
         this.var_2369 = param1.readInteger();
         this.var_2368 = param1.readBoolean();
         this.var_730 = param1.readInteger();
         this.var_1445 = param1.readInteger();
         this.var_2365 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_810.push(_loc4_);
            _loc3_++;
         }
         this.var_2367 = new RoomThumbnailData(param1);
         this.var_2282 = param1.readBoolean();
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
      
      public function get flatId() : int
      {
         return this.var_331;
      }
      
      public function get event() : Boolean
      {
         return this.var_687;
      }
      
      public function get roomName() : String
      {
         return this.var_825;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2286;
      }
      
      public function get userCount() : int
      {
         return this.var_2340;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2366;
      }
      
      public function get description() : String
      {
         return this.var_1556;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2369;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2368;
      }
      
      public function get score() : int
      {
         return this.var_730;
      }
      
      public function get categoryId() : int
      {
         return this.var_1445;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2365;
      }
      
      public function get tags() : Array
      {
         return this.var_810;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2367;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2282;
      }
   }
}
