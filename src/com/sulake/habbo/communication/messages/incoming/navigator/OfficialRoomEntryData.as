package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1137:int = 1;
      
      public static const const_670:int = 2;
      
      public static const const_616:int = 3;
      
      public static const const_1443:int = 4;
       
      
      private var _index:int;
      
      private var var_2629:String;
      
      private var var_2632:String;
      
      private var var_2630:Boolean;
      
      private var var_2631:String;
      
      private var var_855:String;
      
      private var var_2633:int;
      
      private var var_2340:int;
      
      private var _type:int;
      
      private var var_2211:String;
      
      private var var_964:GuestRoomData;
      
      private var var_965:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2629 = param1.readString();
         this.var_2632 = param1.readString();
         this.var_2630 = param1.readInteger() == 1;
         this.var_2631 = param1.readString();
         this.var_855 = param1.readString();
         this.var_2633 = param1.readInteger();
         this.var_2340 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1137)
         {
            this.var_2211 = param1.readString();
         }
         else if(this._type == const_616)
         {
            this.var_965 = new PublicRoomData(param1);
         }
         else if(this._type == const_670)
         {
            this.var_964 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_964 != null)
         {
            this.var_964.dispose();
            this.var_964 = null;
         }
         if(this.var_965 != null)
         {
            this.var_965.dispose();
            this.var_965 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2629;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2632;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2630;
      }
      
      public function get picText() : String
      {
         return this.var_2631;
      }
      
      public function get picRef() : String
      {
         return this.var_855;
      }
      
      public function get folderId() : int
      {
         return this.var_2633;
      }
      
      public function get tag() : String
      {
         return this.var_2211;
      }
      
      public function get userCount() : int
      {
         return this.var_2340;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_964;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_965;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1137)
         {
            return 0;
         }
         if(this.type == const_670)
         {
            return this.var_964.maxUserCount;
         }
         if(this.type == const_616)
         {
            return this.var_965.maxUsers;
         }
         return 0;
      }
   }
}
