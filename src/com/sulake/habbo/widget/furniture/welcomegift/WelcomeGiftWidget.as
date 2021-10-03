package com.sulake.habbo.widget.furniture.welcomegift
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetEmailUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetWelcomeGiftUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetChangeEmailMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetFurniActionMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.events.IEventDispatcher;
   
   public class WelcomeGiftWidget extends RoomWidgetBase
   {
       
      
      private const const_955:String = "welcome_gift_email_unverified";
      
      private const const_1706:String = "welcome_gift_email_verified";
      
      private const const_1342:String = "welcome_gift_email_change";
      
      private var var_788:Boolean = false;
      
      private var var_17:IWindowContainer;
      
      private var var_1128:String;
      
      private var var_1396:Boolean;
      
      private var var_2728:Boolean;
      
      private var _furniId:int;
      
      private var var_2809:String;
      
      public function WelcomeGiftWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager)
      {
         super(param1,param2,param3);
      }
      
      override public function get disposed() : Boolean
      {
         return this.var_788;
      }
      
      override public function dispose() : void
      {
         if(this.var_788)
         {
            return;
         }
         if(this.var_17)
         {
            this.var_17.dispose();
         }
         super.dispose();
         this.var_788 = true;
      }
      
      private function createMainView() : void
      {
         if(this.var_17)
         {
            this.var_17.dispose();
         }
         this.var_17 = this.createView("welcome_gift_widget") as IWindowContainer;
         this.var_17.center();
         if(this.var_1396)
         {
            this.setViewState(this.const_1706);
         }
         else
         {
            this.setViewState(this.const_955);
         }
      }
      
      private function createView(param1:String) : IWindow
      {
         var _loc2_:XmlAsset = assets.getAssetByName(param1) as XmlAsset;
         if(!_loc2_)
         {
            return null;
         }
         return windowManager.buildFromXML(_loc2_.content as XML);
      }
      
      private function disposeView() : void
      {
         if(this.var_17)
         {
            this.var_17.dispose();
            this.var_17 = null;
         }
      }
      
      private function setViewState(param1:String) : void
      {
         var _loc5_:* = null;
         var _loc2_:IWindowContainer = this.var_17.findChildByName("state_content") as IWindowContainer;
         while(_loc2_.numChildren > 0)
         {
            _loc2_.removeChildAt(0);
         }
         var _loc3_:IWindow = this.createView(param1);
         if(!_loc3_)
         {
            Logger.log("invalid welcome gift widget state: " + param1);
            return;
         }
         _loc2_.addChild(_loc3_);
         _loc2_.height = _loc3_.height;
         switch(param1)
         {
            case this.const_955:
               this.addClickHandler(this.var_17.findChildByName("edit"),this.changeEmail);
               this.var_17.findChildByName("email").caption = this.var_1128;
               break;
            case this.const_1342:
               this.addClickHandler(this.var_17.findChildByName("cancel_email_change"),this.cancelEmailChange);
               this.addClickHandler(this.var_17.findChildByName("save_email"),this.saveEmail);
               _loc5_ = this.var_17.findChildByName("email_input") as ITextFieldWindow;
               _loc5_.caption = this.var_1128;
               _loc5_.focus();
               _loc5_.setSelection(0,int.MAX_VALUE);
         }
         var _loc4_:IWindow = this.var_17.findChildByName("open");
         if(_loc4_)
         {
            if(this.var_1396)
            {
               _loc4_.enable();
            }
            else
            {
               _loc4_.disable();
            }
         }
         this.addClickHandler(this.var_17.findChildByName("close"),this.close);
         this.addClickHandler(this.var_17.findChildByTag("close"),this.close);
         this.addClickHandler(this.var_17.findChildByName("open"),this.openGift);
         this.var_2809 = param1;
      }
      
      private function addClickHandler(param1:IWindow, param2:Function) : void
      {
         if(param1)
         {
            param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,param2);
         }
      }
      
      private function close(param1:WindowMouseEvent) : void
      {
         this.disposeView();
      }
      
      private function changeEmail(param1:WindowMouseEvent) : void
      {
         this.setViewState(this.const_1342);
      }
      
      private function openGift(param1:WindowMouseEvent) : void
      {
         messageListener.processWidgetMessage(new RoomWidgetFurniActionMessage(RoomWidgetFurniActionMessage.const_738,this._furniId,0));
         this.disposeView();
      }
      
      private function cancelEmailChange(param1:WindowMouseEvent) : void
      {
         this.setViewState(!!this.var_1396 ? this.const_1706 : this.const_955);
      }
      
      private function saveEmail(param1:WindowMouseEvent) : void
      {
         var _loc2_:ITextFieldWindow = this.var_17.findChildByName("email_input") as ITextFieldWindow;
         this.setButtonState("cancel_email_change",false);
         this.setButtonState("save_email",false);
         _loc2_.editable = false;
         _loc2_.selectable = false;
         this.var_1128 = _loc2_.text;
         messageListener.processWidgetMessage(new RoomWidgetChangeEmailMessage(this.var_1128));
      }
      
      private function setButtonState(param1:String, param2:Boolean) : void
      {
         if(!this.var_17)
         {
            return;
         }
         var _loc3_:IButtonWindow = this.var_17.findChildByName(param1) as IButtonWindow;
         if(_loc3_)
         {
            if(param2)
            {
               _loc3_.enable();
            }
            else
            {
               _loc3_.disable();
            }
         }
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(!param1)
         {
            return;
         }
         param1.addEventListener(RoomWidgetWelcomeGiftUpdateEvent.const_114,this.updateEventHandler);
         param1.addEventListener(RoomWidgetEmailUpdateEvent.const_497,this.emailChangeHandler);
         param1.addEventListener(RoomWidgetEmailUpdateEvent.const_511,this.emailChangeHandler);
         super.registerUpdateEvents(param1);
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetWelcomeGiftUpdateEvent.const_114,this.updateEventHandler);
         param1.removeEventListener(RoomWidgetEmailUpdateEvent.const_497,this.emailChangeHandler);
         param1.removeEventListener(RoomWidgetEmailUpdateEvent.const_511,this.emailChangeHandler);
      }
      
      private function updateEventHandler(param1:RoomWidgetWelcomeGiftUpdateEvent) : void
      {
         switch(param1.type)
         {
            case RoomWidgetWelcomeGiftUpdateEvent.const_114:
               this.var_1128 = param1.email;
               this.var_1396 = param1.isVerified;
               this.var_2728 = param1.allowEmailChange;
               this._furniId = param1.furniId;
               this.createMainView();
         }
      }
      
      private function emailChangeHandler(param1:RoomWidgetEmailUpdateEvent) : void
      {
         switch(param1.type)
         {
            case RoomWidgetEmailUpdateEvent.const_497:
               this.setViewState(this.const_955);
               break;
            case RoomWidgetEmailUpdateEvent.const_511:
               this.showEmailChangeError();
         }
      }
      
      private function showEmailChangeError() : void
      {
         this.setViewState(this.const_1342);
         var _loc1_:IWindow = this.var_17.findChildByName("email_input_container");
         _loc1_.color = 4294936712;
         var _loc2_:ITextWindow = this.var_17.findChildByName("email_change_instructions") as ITextWindow;
         _loc2_.caption = "This is just an error placeholder";
      }
   }
}
