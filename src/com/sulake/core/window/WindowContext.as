package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.services.IInternalWindowServices;
   import com.sulake.core.window.services.ServiceManager;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventProcessor;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.IMouseCursor;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.MouseCursorControl;
   import com.sulake.core.window.utils.MouseEventProcessor;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import com.sulake.core.window.utils.tablet.TabletEventProcessor;
   import com.sulake.core.window.utils.tablet.TabletEventQueue;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static const const_429:uint = 0;
      
      public static const const_1439:uint = 1;
      
      public static const const_1835:int = 0;
      
      public static const const_1827:int = 1;
      
      public static const const_1877:int = 2;
      
      public static const const_1864:int = 3;
      
      public static const const_1661:int = 4;
      
      public static const const_377:int = 5;
      
      public static var var_1237:IMouseCursor;
      
      public static var var_383:IEventQueue;
      
      private static var var_583:IEventProcessor;
      
      private static var var_1662:uint = const_429;
      
      private static var stage:Stage;
      
      private static var var_158:IWindowRenderer;
       
      
      private var var_2320:EventProcessorState;
      
      private var var_2321:IWindowContextStateListener;
      
      protected var _localization:ICoreLocalizationManager;
      
      protected var var_186:DisplayObjectContainer;
      
      protected var var_2834:Boolean = true;
      
      protected var var_1247:Error;
      
      protected var var_2008:int = -1;
      
      protected var var_1248:IInternalWindowServices;
      
      protected var var_1507:IWindowParser;
      
      protected var var_2772:IWindowFactory;
      
      protected var var_137:IDesktopWindow;
      
      protected var var_1506:SubstituteParentController;
      
      private var _disposed:Boolean = false;
      
      private var var_532:Boolean = false;
      
      private var var_2319:Boolean = false;
      
      private var _name:String;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         super();
         this._name = param1;
         var_158 = param2;
         this._localization = param4;
         this.var_186 = param5;
         this.var_1248 = new ServiceManager(this,param5);
         this.var_2772 = param3;
         this.var_1507 = new WindowParser(this);
         this.var_2321 = param7;
         if(!stage)
         {
            if(this.var_186 is Stage)
            {
               stage = this.var_186 as Stage;
            }
            else if(this.var_186.stage)
            {
               stage = this.var_186.stage;
            }
         }
         Classes.init();
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         this.var_137 = new DesktopController("_CONTEXT_DESKTOP_" + this._name,this,param6);
         this.var_186.addChild(this.var_137.getDisplayObject());
         this.var_186.doubleClickEnabled = true;
         this.var_186.addEventListener(Event.RESIZE,this.stageResizedHandler);
         if(var_1237 == null)
         {
            var_1237 = new MouseCursorControl(this.var_186);
         }
         this.var_2320 = new EventProcessorState(var_158,this.var_137,this.var_137,null,this.var_2321);
         inputMode = const_429;
         this.var_1506 = new SubstituteParentController(this);
      }
      
      public static function get inputMode() : uint
      {
         return var_1662;
      }
      
      public static function set inputMode(param1:uint) : void
      {
         var value:uint = param1;
         if(var_383)
         {
            if(var_383 is IDisposable)
            {
               IDisposable(var_383).dispose();
            }
         }
         if(var_583)
         {
            if(var_583 is IDisposable)
            {
               IDisposable(var_583).dispose();
            }
         }
         switch(value)
         {
            case const_429:
               var_383 = new MouseEventQueue(stage);
               var_583 = new MouseEventProcessor(var_1237);
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            case const_1439:
               var_383 = new TabletEventQueue(stage);
               var_583 = new TabletEventProcessor(var_1237);
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            default:
               inputMode = const_429;
               throw new Error("Unknown input mode " + value);
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_186.removeEventListener(Event.RESIZE,this.stageResizedHandler);
            this.var_186.removeChild(IGraphicContextHost(this.var_137).getGraphicContext(true) as DisplayObject);
            this.var_137.destroy();
            this.var_137 = null;
            this.var_1506.destroy();
            this.var_1506 = null;
            if(this.var_1248 is IDisposable)
            {
               IDisposable(this.var_1248).dispose();
            }
            this.var_1248 = null;
            this.var_1507.dispose();
            this.var_1507 = null;
            var_158 = null;
         }
      }
      
      public function getLastError() : Error
      {
         return this.var_1247;
      }
      
      public function getLastErrorCode() : int
      {
         return this.var_2008;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         this.var_1247 = param2;
         this.var_2008 = param1;
         if(this.var_2834)
         {
            throw param2;
         }
      }
      
      public function flushError() : void
      {
         this.var_1247 = null;
         this.var_2008 = -1;
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return this.var_1248;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return this.var_1507;
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return this.var_2772;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return this.var_137;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return this.var_137.findChildByName(param1);
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:* = null;
         var _loc13_:Class = Classes.getWindowClassByType(param3);
         if(_loc13_ == null)
         {
            this.handleError(WindowContext.const_1661,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = this.var_1506;
            }
         }
         _loc12_ = new _loc13_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : this.var_137,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc12_.caption = param2;
         }
         return _loc12_;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == this.var_137)
         {
            this.var_137 = null;
         }
         if(param1.state != WindowState.const_459)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : void
      {
         if(!this.disposed)
         {
            var_158.addToRenderQueue(WindowController(param1),param2,param3);
         }
      }
      
      public function update(param1:uint) : void
      {
         this.var_532 = true;
         if(this.var_1247)
         {
            throw this.var_1247;
         }
         var_583.process(this.var_2320,var_383);
         this.var_532 = false;
      }
      
      public function render(param1:uint) : void
      {
         this.var_2319 = true;
         var_158.update(param1);
         this.var_2319 = false;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(this.var_137 != null && !this.var_137.disposed)
         {
            if(this.var_186 is Stage)
            {
               this.var_137.width = Stage(this.var_186).stageWidth;
               this.var_137.height = Stage(this.var_186).stageHeight;
            }
            else
            {
               this.var_137.width = this.var_186.width;
               this.var_137.height = this.var_186.height;
            }
         }
      }
   }
}
