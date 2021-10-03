package com.sulake.habbo.quest
{
   import com.sulake.core.assets.AssetLoaderStruct;
   import com.sulake.core.assets.loaders.AssetLoaderEvent;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   import com.sulake.habbo.quest.enum.QuestStatusEnum;
   import com.sulake.habbo.window.utils.IConfirmDialog;
   import flash.events.Event;
   
   public class QuestCampaign implements IDisposable
   {
       
      
      private var _controller:QuestController;
      
      private var var_1728:String;
      
      private var var_1678:int;
      
      private var var_354:Array;
      
      private var var_486:Quest;
      
      private var var_197:QuestView;
      
      private var var_2422:Boolean = false;
      
      private var _window:IWindowContainer;
      
      private var var_155:IWindowContainer;
      
      private var var_1377:IWindowContainer;
      
      private var var_291:IItemListWindow;
      
      private var var_724:Array;
      
      private var var_788:Boolean = false;
      
      private var var_1115:IWindowContainer;
      
      private var var_1116:IRegionWindow;
      
      private var var_127:QuestHelp;
      
      public function QuestCampaign(param1:QuestController, param2:String)
      {
         this.var_354 = [];
         this.var_724 = [];
         super();
         this._controller = param1;
         this.var_1728 = param2;
         this.var_127 = new QuestHelp(this);
      }
      
      public function set activityPointType(param1:int) : void
      {
         this.var_1678 = param1;
      }
      
      public function get expired() : Boolean
      {
         return this.var_2422;
      }
      
      public function set expired(param1:Boolean) : void
      {
         this.var_2422 = param1;
      }
      
      public function get window() : IWindowContainer
      {
         return this._window;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         this.reset();
         if(this.var_197)
         {
            this.var_197.dispose();
            this.var_197 = null;
         }
         for each(_loc1_ in this.var_724)
         {
            _loc1_.dispose();
         }
         this.var_724 = [];
         this._window.dispose();
         this._window = null;
         this.var_788 = true;
         if(this.var_127)
         {
            this.var_127.dispose();
         }
      }
      
      public function get disposed() : Boolean
      {
         return this.var_788;
      }
      
      private function reset() : void
      {
         var _loc1_:* = null;
         if(this.var_354)
         {
            for each(_loc1_ in this.var_354)
            {
               this.var_291.removeListItem(_loc1_.view);
               _loc1_.dispose();
            }
            this.var_354 = null;
            this.var_291.destroyListItems();
            this.var_291.removeListItems();
         }
         this.var_486 = null;
      }
      
      private function prepareWindow() : void
      {
         if(this._window != null)
         {
            this._window.visible = true;
            return;
         }
         this._window = IWindowContainer(this._controller.questEngine.getXmlWindow("QuestCampaign"));
         this.var_155 = this._window.findChildByName("quest.container") as IWindowContainer;
         this.var_1377 = this._window.findChildByName("currency.container") as IWindowContainer;
         this.var_291 = this._window.findChildByName("quests") as IItemListWindow;
         var _loc1_:* = "icon_" + this.code + "_pixeltype";
         var _loc2_:IBitmapWrapperWindow = this.var_1377.findChildByName("currency.icon") as IBitmapWrapperWindow;
         this._controller.questEngine.setImageFromAsset(_loc2_,_loc1_,this.onPreviewImageReady);
         this.var_1377.findChildByName("currency.amount").caption = "${quest_" + this.var_1728 + ".currency}";
         var _loc3_:String = "quest_" + this.code;
         var _loc4_:* = _loc3_ + ".title";
         var _loc5_:* = _loc3_ + ".currency";
         this.setText("currency.amount",_loc5_);
         this.var_1115 = this._window.findChildByName("help.button") as IWindowContainer;
         this.var_1116 = this._window.findChildByName("help.container") as IRegionWindow;
         if(this.var_1116)
         {
            this.var_1116.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.helpButtonEventProc);
            this.var_1116.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,this.helpButtonEventProc);
            this.var_1116.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OUT,this.helpButtonEventProc);
         }
         if(this.var_1115)
         {
            this.var_1115.color = 14737632;
         }
      }
      
      public function attachTo(param1:IWindowContainer) : void
      {
         if(this.var_788 || !this._window)
         {
            return;
         }
         param1.addChild(this._window);
         this._window.x = 0;
         this._window.y = 0;
         this._window.width = param1.width;
         this._window.height = param1.height;
         if(this.var_155)
         {
            this.var_155.height = this._window.height - this.var_155.y * 2;
            if(this.var_197)
            {
               this.var_197.view.height = this.var_155.height;
            }
         }
      }
      
      private function helpButtonEventProc(param1:Event, param2:IWindow = null) : void
      {
         if(param2 == null)
         {
            param2 = param1.target as IWindow;
         }
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this.openHelp();
         }
         else if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            this.var_1115.color = 6710886;
         }
         else if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_OUT)
         {
            this.var_1115.color = 14737632;
         }
      }
      
      private function openHelp() : void
      {
         Logger.log("Open Questing Help System");
         this.var_155.removeChildAt(0);
         if(this.var_197)
         {
            this.var_197.dispose();
            this.var_197 = null;
         }
         if(this.var_486)
         {
            this.var_486.selected = false;
         }
         if(this.var_127)
         {
            this.var_155.addChild(this.var_127.view);
         }
         if(this.var_155)
         {
            this.var_155.height = this._window.height - this.var_155.y * 2;
            if(this.var_127.view)
            {
               this.var_127.view.height = this.var_155.height;
            }
         }
      }
      
      public function updatePurse() : void
      {
         var _loc1_:int = this._controller.questEngine.getActivityPointsForType(this.var_1678);
         this._controller.questEngine.localization.registerParameter("quest_" + this.code + ".currency","amount",_loc1_.toString());
      }
      
      private function onPreviewImageReady(param1:AssetLoaderEvent) : void
      {
         var _loc3_:* = null;
         if(this.var_788)
         {
            return;
         }
         var _loc2_:AssetLoaderStruct = param1.target as AssetLoaderStruct;
         if(!this._window)
         {
            return;
         }
         if(_loc2_ != null)
         {
            _loc3_ = this.var_1377.findChildByName("currency.icon") as IBitmapWrapperWindow;
            this._controller.questEngine.setImageFromAsset(_loc3_,_loc2_.assetName,this.onPreviewImageReady);
         }
      }
      
      public function get controller() : QuestController
      {
         return this._controller;
      }
      
      public function openCampaign(param1:Array) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         this.prepareWindow();
         this.reset();
         this.updatePurse();
         param1.sort(this.orderByName,Array.NUMERIC);
         this.var_354 = [];
         for each(_loc2_ in param1)
         {
            this.var_354.push(new Quest(_loc2_,this));
         }
         _loc3_ = null;
         for each(_loc4_ in this.var_354)
         {
            this.var_291.addListItem(_loc4_.view);
            if(!_loc3_ && (_loc4_.status == QuestStatusEnum.const_46 || _loc4_.status == QuestStatusEnum.const_422))
            {
               _loc3_ = _loc4_;
            }
         }
         if(_loc3_)
         {
            this.activateListItem(_loc3_);
            if(this.var_291.maxScrollV > 0)
            {
               this.var_291.scrollV = _loc3_.view.y / this.var_291.maxScrollV;
            }
         }
         else if(this.var_354.length > 0)
         {
            this.activateListItem(this.var_354[0]);
         }
      }
      
      private function orderByName(param1:QuestMessageData, param2:QuestMessageData) : Number
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:String = param1.localizationPrefix;
         var _loc4_:String = param2.localizationPrefix;
         var _loc5_:uint = param1.sortCode;
         var _loc6_:uint = param2.sortCode;
         if(_loc3_ > _loc4_)
         {
            return 1;
         }
         if(_loc3_ < _loc4_)
         {
            return -1;
         }
         if(_loc5_ > _loc6_)
         {
            return 1;
         }
         if(_loc5_ < _loc6_)
         {
            return -1;
         }
         _loc7_ = Number(param1.endDateTimeStamp);
         _loc8_ = Number(param2.endDateTimeStamp);
         if(_loc7_ > _loc8_)
         {
            return 1;
         }
         if(_loc7_ < _loc8_)
         {
            return -1;
         }
         return 0;
      }
      
      private function orderByDate(param1:QuestMessageData, param2:QuestMessageData) : Number
      {
         var _loc3_:String = param1.endDateTimeStamp;
         var _loc4_:String = param2.endDateTimeStamp;
         if(_loc3_ > _loc4_)
         {
            return 1;
         }
         if(_loc3_ < _loc4_)
         {
            return -1;
         }
         return 0;
      }
      
      public function get code() : String
      {
         return this.var_1728;
      }
      
      public function updateListView() : void
      {
         var _loc1_:IItemListWindow = this._window.findChildByName("quests") as IItemListWindow;
         _loc1_.invalidate();
      }
      
      public function activateListItem(param1:Quest) : void
      {
         if(this.var_486 != null)
         {
            this.var_486.selected = false;
         }
         this.var_486 = param1;
         this.var_486.selected = true;
         this.showQuestData(this.var_486);
      }
      
      private function showQuestData(param1:Quest) : void
      {
         if(!this.var_155)
         {
            return;
         }
         this.var_155.removeChildAt(0);
         if(this.var_197)
         {
            this.var_197.dispose();
            this.var_197 = null;
         }
         this.var_197 = new QuestView(this,param1);
         this.var_155.addChild(this.var_197.view);
         this.var_197.init();
         this.var_155.height = this._window.height - this.var_155.y * 2;
         this.var_197.view.height = this.var_155.height;
      }
      
      public function questAccepted(param1:QuestMessageData) : void
      {
         this.modifyQuestData(param1);
      }
      
      public function questCompleted(param1:QuestMessageData) : void
      {
         this.modifyQuestData(param1);
         this.var_724.push(new QuestCompleted(this,param1));
      }
      
      public function closeQuestCompleted(param1:QuestCompleted) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:int = 0;
         for each(_loc3_ in this.var_724)
         {
            if(_loc3_ == param1)
            {
               _loc2_ = _loc3_;
               break;
            }
         }
         if(_loc2_)
         {
            _loc2_.dispose();
            _loc4_ = this.var_724.indexOf(_loc2_);
            if(_loc4_ >= 0)
            {
               this.var_724.splice(_loc4_,1);
            }
         }
      }
      
      private function modifyQuestData(param1:QuestMessageData) : void
      {
         var _loc2_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc3_:int = 0;
         for each(_loc4_ in this.var_354)
         {
            if(_loc4_.id == param1.id)
            {
               _loc2_ = _loc4_;
               break;
            }
            _loc3_++;
         }
         if(_loc2_)
         {
            _loc5_ = new Quest(param1,this);
            this.var_354[_loc3_] = _loc5_;
            _loc6_ = this.var_291.getListItemIndex(_loc2_.view);
            this.var_291.removeListItem(_loc2_.view);
            if(_loc6_ > -1)
            {
               this.var_291.addListItemAt(_loc5_.view,_loc6_);
            }
            else
            {
               this.var_291.addListItem(_loc5_.view);
            }
            if(this.var_486 == _loc2_)
            {
               this.activateListItem(_loc5_);
            }
            _loc2_.dispose();
            _loc2_ = null;
         }
      }
      
      private function onConfirm(param1:IConfirmDialog, param2:Event) : void
      {
         param1.dispose();
      }
      
      public function find(param1:String) : IWindow
      {
         var _loc2_:* = null;
         if(this._window is IWindowContainer)
         {
            _loc2_ = IWindowContainer(this._window).findChildByName(param1);
         }
         else if(this._window is IItemListWindow)
         {
            _loc2_ = IItemListWindow(this._window).getListItemByName(param1);
         }
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function setText(param1:String, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:IWindow = this.find(param1);
         if(_loc4_)
         {
            if(param3)
            {
               param2 = "${" + param2 + "}";
            }
            _loc4_.caption = param2;
         }
      }
   }
}
