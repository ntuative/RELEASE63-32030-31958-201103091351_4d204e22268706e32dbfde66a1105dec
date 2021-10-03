package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1489:String = "WN_CRETAE";
      
      public static const const_1627:String = "WN_CREATED";
      
      public static const const_1126:String = "WN_DESTROY";
      
      public static const const_1213:String = "WN_DESTROYED";
      
      public static const const_1071:String = "WN_OPEN";
      
      public static const const_1094:String = "WN_OPENED";
      
      public static const const_1192:String = "WN_CLOSE";
      
      public static const const_989:String = "WN_CLOSED";
      
      public static const const_1019:String = "WN_FOCUS";
      
      public static const const_1148:String = "WN_FOCUSED";
      
      public static const const_1196:String = "WN_UNFOCUS";
      
      public static const const_1120:String = "WN_UNFOCUSED";
      
      public static const const_1014:String = "WN_ACTIVATE";
      
      public static const const_405:String = "WN_ACTVATED";
      
      public static const const_1193:String = "WN_DEACTIVATE";
      
      public static const const_1232:String = "WN_DEACTIVATED";
      
      public static const const_450:String = "WN_SELECT";
      
      public static const const_351:String = "WN_SELECTED";
      
      public static const const_847:String = "WN_UNSELECT";
      
      public static const const_723:String = "WN_UNSELECTED";
      
      public static const const_1079:String = "WN_LOCK";
      
      public static const const_1225:String = "WN_LOCKED";
      
      public static const const_1040:String = "WN_UNLOCK";
      
      public static const const_1026:String = "WN_UNLOCKED";
      
      public static const const_987:String = "WN_ENABLE";
      
      public static const const_725:String = "WN_ENABLED";
      
      public static const const_1147:String = "WN_DISABLE";
      
      public static const const_826:String = "WN_DISABLED";
      
      public static const const_716:String = "WN_RESIZE";
      
      public static const const_192:String = "WN_RESIZED";
      
      public static const const_1109:String = "WN_RELOCATE";
      
      public static const const_578:String = "WN_RELOCATED";
      
      public static const const_1041:String = "WN_MINIMIZE";
      
      public static const const_1179:String = "WN_MINIMIZED";
      
      public static const const_1169:String = "WN_MAXIMIZE";
      
      public static const const_1117:String = "WN_MAXIMIZED";
      
      public static const const_1091:String = "WN_RESTORE";
      
      public static const const_985:String = "WN_RESTORED";
      
      public static const const_1941:String = "WN_ARRANGE";
      
      public static const const_1925:String = "WN_ARRANGED";
      
      public static const const_1761:String = "WN_UPDATE";
      
      public static const const_1798:String = "WN_UPDATED";
      
      public static const const_399:String = "WN_CHILD_ADDED";
      
      public static const const_893:String = "WN_CHILD_REMOVED";
      
      public static const const_295:String = "WN_CHILD_RESIZED";
      
      public static const const_320:String = "WN_CHILD_RELOCATED";
      
      public static const const_254:String = "WN_CHILD_ACTIVATED";
      
      public static const const_458:String = "WN_PARENT_ADDED";
      
      public static const const_1010:String = "WN_PARENT_REMOVED";
      
      public static const const_490:String = "WN_PARENT_RESIZED";
      
      public static const const_1069:String = "WN_PARENT_RELOCATED";
      
      public static const const_773:String = "WN_PARENT_ACTIVATED";
      
      public static const const_451:String = "WN_STATE_UPDATED";
      
      public static const const_460:String = "WN_STYLE_UPDATED";
      
      public static const const_453:String = "WN_PARAM_UPDATED";
      
      public static const const_1811:String = "";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_2010,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
   }
}
