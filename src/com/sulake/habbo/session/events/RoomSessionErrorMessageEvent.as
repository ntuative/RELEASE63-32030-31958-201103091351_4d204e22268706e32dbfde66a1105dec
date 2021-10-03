package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionErrorMessageEvent extends RoomSessionEvent
   {
      
      public static const const_1177:String = "RSEME_DOOR_OTHER_DELETED";
      
      public static const const_1001:String = "RSEME_DOOR_NOT_INSTALLED";
      
      public static const const_242:String = "RSEME_CANT_TRADE_STUFF";
      
      public static const const_243:String = "RSEME_INVALID_ITEM_LOC";
      
      public static const const_749:String = "RSEME_CANT_SET_NOT_OWNER";
      
      public static const const_221:String = "RSEME_MAX_STICKIES";
      
      public static const const_236:String = "RSEME_MAX_FURNITURE";
      
      public static const const_219:String = "RSEME_MAX_QUEUE";
      
      public static const const_213:String = "RSEME_MAX_SOUND";
      
      public static const const_224:String = "RSEME_KICKED";
      
      public static const const_268:String = "RSEME_GUIDE_BUSY";
      
      public static const const_237:String = "RSEME_GUIDE_EXISTS";
      
      public static const const_756:String = "RSEME_PETS_FORBIDDEN_IN_HOTEL";
      
      public static const const_845:String = "RSEME_PETS_FORBIDDEN_IN_FLAT";
      
      public static const const_186:String = "RSEME_MAX_PETS";
      
      public static const const_624:String = "RSEME_NO_FREE_TILES_FOR_PET";
      
      public static const const_625:String = "RSEME_SELECTED_TILE_NOT_FREE_FOR_PET";
       
      
      private var _message:String;
      
      public function RoomSessionErrorMessageEvent(param1:String, param2:IRoomSession, param3:String = null, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param2,param4,param5);
         this._message = param3;
      }
      
      public function get message() : String
      {
         return this._message;
      }
   }
}
