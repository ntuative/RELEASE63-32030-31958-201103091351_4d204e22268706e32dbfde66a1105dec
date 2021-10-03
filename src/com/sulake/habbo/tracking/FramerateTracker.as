package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1601:int;
      
      private var var_2208:int;
      
      private var var_1064:int;
      
      private var var_498:Number;
      
      private var var_2210:Boolean;
      
      private var var_2209:int;
      
      private var var_1602:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2208 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2209 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2210 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         ++this.var_1064;
         if(this.var_1064 == 1)
         {
            this.var_498 = param1;
            this.var_1601 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_1064);
            this.var_498 = this.var_498 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2210 && param3 - this.var_1601 >= this.var_2208 && this.var_1602 < this.var_2209)
         {
            _loc5_ = 1000 / this.var_498;
            param2.track("performance","averageFramerate",Math.round(_loc5_));
            ++this.var_1602;
            this.var_1601 = param3;
            this.var_1064 = 0;
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
