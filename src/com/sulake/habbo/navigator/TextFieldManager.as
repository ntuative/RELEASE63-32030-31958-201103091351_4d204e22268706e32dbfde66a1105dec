package com.sulake.habbo.navigator
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowKeyboardEvent;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   
   public class TextFieldManager
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var var_77:ITextFieldWindow;
      
      private var var_611:Boolean;
      
      private var var_1419:String = "";
      
      private var var_1806:int;
      
      private var var_1805:Function;
      
      private var var_2529:String = "";
      
      private var var_129:IWindowContainer;
      
      private var var_2527:Boolean;
      
      private var _orgTextBackgroundColor:uint;
      
      private var var_2528:uint;
      
      public function TextFieldManager(param1:HabboNavigator, param2:ITextFieldWindow, param3:int = 1000, param4:Function = null, param5:String = null)
      {
         super();
         this._navigator = param1;
         this.var_77 = param2;
         this.var_1806 = param3;
         this.var_1805 = param4;
         if(param5 != null)
         {
            this.var_611 = true;
            this.var_1419 = param5;
            this.var_77.text = param5;
         }
         Util.setProcDirectly(this.var_77,this.onInputClick);
         this.var_77.addEventListener(WindowKeyboardEvent.const_194,this.checkEnterPress);
         this.var_77.addEventListener(WindowEvent.const_104,this.checkMaxLen);
         this.var_2527 = this.var_77.textBackground;
         this._orgTextBackgroundColor = this.var_77.textBackgroundColor;
         this.var_2528 = this.var_77.textColor;
      }
      
      public function checkMandatory(param1:String) : Boolean
      {
         if(!this.isInputValid())
         {
            this.displayError(param1);
            return false;
         }
         this.restoreBackground();
         return true;
      }
      
      public function restoreBackground() : void
      {
         this.var_77.textBackground = this.var_2527;
         this.var_77.textBackgroundColor = this._orgTextBackgroundColor;
         this.var_77.textColor = this.var_2528;
      }
      
      public function displayError(param1:String) : void
      {
         this.var_77.textBackground = true;
         this.var_77.textBackgroundColor = 4294021019;
         this.var_77.textColor = 4278190080;
         if(this.var_129 == null)
         {
            this.var_129 = IWindowContainer(this._navigator.getXmlWindow("nav_error_popup"));
            this._navigator.refreshButton(this.var_129,"popup_arrow_down",true,null,0);
            IWindowContainer(this.var_77.parent).addChild(this.var_129);
         }
         var _loc2_:ITextWindow = ITextWindow(this.var_129.findChildByName("error_text"));
         _loc2_.text = param1;
         _loc2_.width = _loc2_.textWidth + 5;
         this.var_129.findChildByName("border").width = _loc2_.width + 15;
         this.var_129.width = _loc2_.width + 15;
         var _loc3_:Point = new Point();
         this.var_77.getLocalPosition(_loc3_);
         this.var_129.x = _loc3_.x;
         this.var_129.y = _loc3_.y - this.var_129.height + 3;
         var _loc4_:IWindow = this.var_129.findChildByName("popup_arrow_down");
         _loc4_.x = this.var_129.width / 2 - _loc4_.width / 2;
         this.var_129.x += (this.var_77.width - this.var_129.width) / 2;
         this.var_129.visible = true;
      }
      
      public function goBackToInitialState() : void
      {
         this.clearErrors();
         if(this.var_1419 != null)
         {
            this.var_77.text = this.var_1419;
            this.var_611 = true;
         }
         else
         {
            this.var_77.text = "";
            this.var_611 = false;
         }
      }
      
      public function getText() : String
      {
         if(this.var_611)
         {
            return this.var_2529;
         }
         return this.var_77.text;
      }
      
      public function setText(param1:String) : void
      {
         this.var_611 = false;
         this.var_77.text = param1;
      }
      
      public function clearErrors() : void
      {
         this.restoreBackground();
         if(this.var_129 != null)
         {
            this.var_129.visible = false;
         }
      }
      
      public function get input() : ITextFieldWindow
      {
         return this.var_77;
      }
      
      private function isInputValid() : Boolean
      {
         return !this.var_611 && Util.trim(this.getText()).length > 2;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_299)
         {
            return;
         }
         if(!this.var_611)
         {
            return;
         }
         this.var_77.text = this.var_2529;
         this.var_611 = false;
         this.restoreBackground();
      }
      
      private function checkEnterPress(param1:Event) : void
      {
         var _loc2_:IWindow = IWindow(param1.target);
         if(!(param1 is WindowKeyboardEvent))
         {
            return;
         }
         var _loc3_:WindowKeyboardEvent = WindowKeyboardEvent(param1);
         if(_loc3_.charCode == Keyboard.ENTER)
         {
            if(this.var_1805 != null)
            {
               this.var_1805();
            }
         }
      }
      
      private function checkMaxLen(param1:Event) : void
      {
         var _loc2_:String = this.var_77.text;
         if(_loc2_.length > this.var_1806)
         {
            this.var_77.text = _loc2_.substring(0,this.var_1806);
         }
      }
   }
}
