package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2828:uint;
      
      private var var_140:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_248:IWindowContext;
      
      private var var_1220:IMouseDraggingService;
      
      private var var_1224:IMouseScalingService;
      
      private var var_1225:IMouseListenerService;
      
      private var var_1221:IFocusManagerService;
      
      private var var_1222:IToolTipAgentService;
      
      private var var_1223:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2828 = 0;
         this.var_140 = param2;
         this.var_248 = param1;
         this.var_1220 = new WindowMouseDragger(param2);
         this.var_1224 = new WindowMouseScaler(param2);
         this.var_1225 = new WindowMouseListener(param2);
         this.var_1221 = new FocusManager(param2);
         this.var_1222 = new WindowToolTipAgent(param2);
         this.var_1223 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1220 != null)
         {
            this.var_1220.dispose();
            this.var_1220 = null;
         }
         if(this.var_1224 != null)
         {
            this.var_1224.dispose();
            this.var_1224 = null;
         }
         if(this.var_1225 != null)
         {
            this.var_1225.dispose();
            this.var_1225 = null;
         }
         if(this.var_1221 != null)
         {
            this.var_1221.dispose();
            this.var_1221 = null;
         }
         if(this.var_1222 != null)
         {
            this.var_1222.dispose();
            this.var_1222 = null;
         }
         if(this.var_1223 != null)
         {
            this.var_1223.dispose();
            this.var_1223 = null;
         }
         this.var_140 = null;
         this.var_248 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1220;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1224;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1225;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1221;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1222;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1223;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
