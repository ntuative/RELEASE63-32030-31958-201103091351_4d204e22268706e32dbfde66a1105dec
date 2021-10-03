package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetColoursEvent extends Event
   {
       
      
      private var var_928:Array;
      
      private var var_2483:String;
      
      private var var_2482:String;
      
      private var var_2481:String;
      
      public function CatalogWidgetColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_COLOUR_ARRAY,param5,param6);
         this.var_928 = param1;
         this.var_2483 = param2;
         this.var_2482 = param3;
         this.var_2481 = param4;
      }
      
      public function get colours() : Array
      {
         return this.var_928;
      }
      
      public function get backgroundAssetName() : String
      {
         return this.var_2483;
      }
      
      public function get colourAssetName() : String
      {
         return this.var_2482;
      }
      
      public function get chosenColourAssetName() : String
      {
         return this.var_2481;
      }
   }
}
