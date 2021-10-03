package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2102:int = 0;
      
      private var var_1428:String = "";
      
      private var var_1824:String = "";
      
      private var var_2504:String = "";
      
      private var var_2508:String = "";
      
      private var var_1790:int = 0;
      
      private var var_2507:int = 0;
      
      private var var_2506:int = 0;
      
      private var var_1425:int = 0;
      
      private var var_2505:int = 0;
      
      private var var_1427:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2102 = param1;
         this.var_1428 = param2;
         this.var_1824 = param3;
         this.var_2504 = param4;
         this.var_2508 = param5;
         if(param6)
         {
            this.var_1790 = 1;
         }
         else
         {
            this.var_1790 = 0;
         }
         this.var_2507 = param7;
         this.var_2506 = param8;
         this.var_1425 = param9;
         this.var_2505 = param10;
         this.var_1427 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2102,this.var_1428,this.var_1824,this.var_2504,this.var_2508,this.var_1790,this.var_2507,this.var_2506,this.var_1425,this.var_2505,this.var_1427];
      }
   }
}
