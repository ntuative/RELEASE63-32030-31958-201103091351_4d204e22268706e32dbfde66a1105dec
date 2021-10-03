package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_806:String = "RWUAM_WHISPER_USER";
      
      public static const const_708:String = "RWUAM_IGNORE_USER";
      
      public static const const_802:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_562:String = "RWUAM_KICK_USER";
      
      public static const const_715:String = "RWUAM_BAN_USER";
      
      public static const const_787:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_660:String = "RWUAM_RESPECT_USER";
      
      public static const const_657:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_626:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_719:String = "RWUAM_START_TRADING";
      
      public static const const_825:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_538:String = "RWUAM_KICK_BOT";
      
      public static const const_771:String = "RWUAM_REPORT";
      
      public static const const_581:String = "RWUAM_PICKUP_PET";
      
      public static const const_1384:String = "RWUAM_TRAIN_PET";
      
      public static const const_439:String = " RWUAM_RESPECT_PET";
      
      public static const const_336:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_888:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
