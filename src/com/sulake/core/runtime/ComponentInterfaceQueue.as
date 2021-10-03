package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1626:IID;
      
      private var var_788:Boolean;
      
      private var var_1076:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1626 = param1;
         this.var_1076 = new Array();
         this.var_788 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1626;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_788;
      }
      
      public function get receivers() : Array
      {
         return this.var_1076;
      }
      
      public function dispose() : void
      {
         if(!this.var_788)
         {
            this.var_788 = true;
            this.var_1626 = null;
            while(this.var_1076.length > 0)
            {
               this.var_1076.pop();
            }
            this.var_1076 = null;
         }
      }
   }
}
