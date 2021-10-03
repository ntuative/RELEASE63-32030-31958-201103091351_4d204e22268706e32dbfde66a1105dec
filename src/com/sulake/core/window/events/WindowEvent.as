package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_1397:String = "WE_CREATE";
      
      public static const const_1457:String = "WE_CREATED";
      
      public static const const_1579:String = "WE_DESTROY";
      
      public static const const_306:String = "WE_DESTROYED";
      
      public static const const_1529:String = "WE_OPEN";
      
      public static const const_1609:String = "WE_OPENED";
      
      public static const const_1585:String = "WE_CLOSE";
      
      public static const const_1478:String = "WE_CLOSED";
      
      public static const const_1461:String = "WE_FOCUS";
      
      public static const const_299:String = "WE_FOCUSED";
      
      public static const const_1458:String = "WE_UNFOCUS";
      
      public static const const_1637:String = "WE_UNFOCUSED";
      
      public static const const_1539:String = "WE_ACTIVATE";
      
      public static const const_1598:String = "WE_ACTIVATED";
      
      public static const const_1406:String = "WE_DEACTIVATE";
      
      public static const const_792:String = "WE_DEACTIVATED";
      
      public static const const_476:String = "WE_SELECT";
      
      public static const const_61:String = "WE_SELECTED";
      
      public static const const_842:String = "WE_UNSELECT";
      
      public static const const_666:String = "WE_UNSELECTED";
      
      public static const const_1787:String = "WE_ATTACH";
      
      public static const const_1848:String = "WE_ATTACHED";
      
      public static const const_1797:String = "WE_DETACH";
      
      public static const const_1773:String = "WE_DETACHED";
      
      public static const const_1400:String = "WE_LOCK";
      
      public static const const_1679:String = "WE_LOCKED";
      
      public static const const_1630:String = "WE_UNLOCK";
      
      public static const const_1582:String = "WE_UNLOCKED";
      
      public static const const_631:String = "WE_ENABLE";
      
      public static const const_300:String = "WE_ENABLED";
      
      public static const const_816:String = "WE_DISABLE";
      
      public static const const_229:String = "WE_DISABLED";
      
      public static const const_1462:String = "WE_RELOCATE";
      
      public static const const_386:String = "WE_RELOCATED";
      
      public static const const_1404:String = "WE_RESIZE";
      
      public static const const_49:String = "WE_RESIZED";
      
      public static const const_1620:String = "WE_MINIMIZE";
      
      public static const const_1393:String = "WE_MINIMIZED";
      
      public static const const_1527:String = "WE_MAXIMIZE";
      
      public static const const_1506:String = "WE_MAXIMIZED";
      
      public static const const_1416:String = "WE_RESTORE";
      
      public static const const_1615:String = "WE_RESTORED";
      
      public static const const_1838:String = "WE_ARRANGE";
      
      public static const const_1865:String = "WE_ARRANGED";
      
      public static const const_107:String = "WE_UPDATE";
      
      public static const const_1942:String = "WE_UPDATED";
      
      public static const const_1929:String = "WE_CHILD_RELOCATE";
      
      public static const const_547:String = "WE_CHILD_RELOCATED";
      
      public static const const_1964:String = "WE_CHILD_RESIZE";
      
      public static const const_284:String = "WE_CHILD_RESIZED";
      
      public static const const_1833:String = "WE_CHILD_REMOVE";
      
      public static const const_481:String = "WE_CHILD_REMOVED";
      
      public static const const_1884:String = "WE_PARENT_RELOCATE";
      
      public static const const_1818:String = "WE_PARENT_RELOCATED";
      
      public static const const_1751:String = "WE_PARENT_RESIZE";
      
      public static const const_1477:String = "WE_PARENT_RESIZED";
      
      public static const const_193:String = "WE_OK";
      
      public static const const_835:String = "WE_CANCEL";
      
      public static const const_104:String = "WE_CHANGE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_493:String = "WE_SCROLL";
      
      public static const const_164:String = "";
       
      
      protected var _type:String = "";
      
      protected var _window:IWindow;
      
      protected var var_2010:IWindow;
      
      protected var var_2009:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         this._type = param1;
         this._window = param2;
         this.var_2010 = param3;
         this.var_2009 = false;
         super(param1,param4,param5);
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      override public function get type() : String
      {
         return this._type;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_2010;
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(this._type,this.window,this.related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            this.var_2009 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_2009;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
   }
}
