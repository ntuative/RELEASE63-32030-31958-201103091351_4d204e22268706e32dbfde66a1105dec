package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_366:int = 1;
      
      public static const const_244:int = 2;
      
      public static const const_323:int = 3;
      
      public static const const_361:int = 4;
      
      public static const const_222:int = 5;
      
      public static const const_393:int = 1;
      
      public static const const_704:int = 2;
      
      public static const const_754:int = 3;
      
      public static const const_711:int = 4;
      
      public static const const_220:int = 5;
      
      public static const const_885:int = 6;
      
      public static const const_817:int = 7;
      
      public static const const_232:int = 8;
      
      public static const const_392:int = 9;
      
      public static const const_1759:int = 10;
      
      public static const const_824:int = 11;
      
      public static const const_438:int = 12;
       
      
      private var var_399:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_399 = new Array();
         this.var_399.push(new Tab(this._navigator,const_366,const_438,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_467));
         this.var_399.push(new Tab(this._navigator,const_244,const_393,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_467));
         this.var_399.push(new Tab(this._navigator,const_361,const_824,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1042));
         this.var_399.push(new Tab(this._navigator,const_323,const_220,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_467));
         this.var_399.push(new Tab(this._navigator,const_222,const_232,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_832));
         this.setSelectedTab(const_366);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_361;
      }
      
      public function get tabs() : Array
      {
         return this.var_399;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_399)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_399)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_399)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
