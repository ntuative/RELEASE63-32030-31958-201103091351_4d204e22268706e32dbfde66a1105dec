package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1258:IHabboTracking;
      
      private var var_1565:Boolean = false;
      
      private var var_2426:int = 0;
      
      private var var_1732:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1258 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1258 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1565 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2426 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1565)
         {
            return;
         }
         ++this.var_1732;
         if(this.var_1732 <= this.var_2426)
         {
            this.var_1258.track("toolbar",param1);
         }
      }
   }
}
