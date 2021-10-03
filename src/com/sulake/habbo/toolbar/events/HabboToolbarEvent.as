package com.sulake.habbo.toolbar.events
{
   import flash.events.Event;
   
   public class HabboToolbarEvent extends Event
   {
      
      public static const const_65:String = "HTE_INITIALIZED";
      
      public static const const_37:String = "HTE_TOOLBAR_CLICK";
      
      public static const const_530:String = "HTE_TOOLBAR_ORIENTATION";
      
      public static const const_1096:String = "HTE_TOOLBAR_RESIZED";
       
      
      private var var_668:String;
      
      private var var_507:String;
      
      private var var_1280:String;
      
      public function HabboToolbarEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function set iconId(param1:String) : void
      {
         this.var_668 = param1;
      }
      
      public function get iconId() : String
      {
         return this.var_668;
      }
      
      public function set orientation(param1:String) : void
      {
         this.var_507 = param1;
      }
      
      public function get orientation() : String
      {
         return this.var_507;
      }
      
      public function set iconName(param1:String) : void
      {
         this.var_1280 = param1;
      }
      
      public function get iconName() : String
      {
         return this.var_1280;
      }
   }
}
