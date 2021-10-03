package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2043:String;
      
      private var var_2041:Array;
      
      private var var_2042:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         this.var_2043 = param1;
         this.var_2041 = param2;
         this.var_2042 = param3;
      }
      
      public function get menuId() : String
      {
         return this.var_2043;
      }
      
      public function get yieldList() : Array
      {
         return this.var_2041;
      }
      
      public function get lockToIcon() : Boolean
      {
         return this.var_2042;
      }
   }
}
