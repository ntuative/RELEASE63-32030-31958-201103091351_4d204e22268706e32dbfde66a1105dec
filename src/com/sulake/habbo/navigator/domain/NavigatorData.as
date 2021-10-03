package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1731:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_201:MsgWithRequestId;
      
      private var var_631:RoomEventData;
      
      private var var_2681:Boolean;
      
      private var var_2685:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_2198:int;
      
      private var var_266:GuestRoomData;
      
      private var var_980:PublicRoomShortData;
      
      private var var_2684:int;
      
      private var var_2676:Boolean;
      
      private var var_2677:int;
      
      private var var_2683:Boolean;
      
      private var var_1895:int;
      
      private var var_2675:Boolean;
      
      private var var_1476:Array;
      
      private var var_1478:Array;
      
      private var var_2682:int;
      
      private var var_1477:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1197:Boolean;
      
      private var var_2680:int;
      
      private var var_2678:Boolean;
      
      private var var_2679:int = 0;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1476 = new Array();
         this.var_1478 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_266 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_266 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_980 = null;
         this.var_266 = null;
         this._currentRoomOwner = false;
         if(param1.guestRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_980 = param1.publicSpace;
            this.var_631 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_631 != null)
         {
            this.var_631.dispose();
            this.var_631 = null;
         }
         if(this.var_980 != null)
         {
            this.var_980.dispose();
            this.var_980 = null;
         }
         if(this.var_266 != null)
         {
            this.var_266.dispose();
            this.var_266 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_266 != null)
         {
            this.var_266.dispose();
         }
         this.var_266 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_631 != null)
         {
            this.var_631.dispose();
         }
         this.var_631 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_201 != null && this.var_201 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_201 != null && this.var_201 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_201 != null && this.var_201 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_201 = param1;
         this.var_1197 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_201 = param1;
         this.var_1197 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_201 = param1;
         this.var_1197 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_201 == null)
         {
            return;
         }
         this.var_201.dispose();
         this.var_201 = null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_201 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_201 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_201 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_631;
      }
      
      public function get avatarId() : int
      {
         return this.var_2198;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2681;
      }
      
      public function get roomPicker() : Boolean
      {
         return this.var_2685;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_266;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_980;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2676;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2677;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_1895;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2683;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2680;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2684;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2675;
      }
      
      public function get adIndex() : int
      {
         return this.var_2679;
      }
      
      public function get currentRoomIsStaffPick() : Boolean
      {
         return this.var_2678;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_2198 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2677 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2676 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2681 = param1;
      }
      
      public function set roomPicker(param1:Boolean) : void
      {
         this.var_2685 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2683 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_1895 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2680 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2684 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2675 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2679 = param1;
      }
      
      public function set currentRoomIsStaffPick(param1:Boolean) : void
      {
         this.var_2678 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1476 = param1;
         this.var_1478 = new Array();
         for each(_loc2_ in this.var_1476)
         {
            if(_loc2_.visible)
            {
               this.var_1478.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1476;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1478;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2682 = param1.limit;
         this.var_1477 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1477 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_266.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_266 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_266.flatId;
         return this.var_1895 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1477 >= this.var_2682;
      }
      
      public function startLoading() : void
      {
         this.var_1197 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1197;
      }
   }
}
