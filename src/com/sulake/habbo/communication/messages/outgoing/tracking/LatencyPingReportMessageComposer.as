package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2445:int;
      
      private var var_2444:int;
      
      private var var_2446:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2445 = param1;
         this.var_2444 = param2;
         this.var_2446 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2445,this.var_2444,this.var_2446];
      }
      
      public function dispose() : void
      {
      }
   }
}
