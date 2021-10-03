package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_690:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_788)
         {
            _structure = null;
            _assets = null;
            var_246 = null;
            var_276 = null;
            _figure = null;
            var_533 = null;
            var_322 = null;
            if(!var_1246 && var_45)
            {
               var_45.dispose();
            }
            var_45 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_699 = null;
            var_788 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_690[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_690[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_362:
               switch(_loc3_)
               {
                  case AvatarAction.const_620:
                  case AvatarAction.const_576:
                  case AvatarAction.const_397:
                  case AvatarAction.const_759:
                  case AvatarAction.const_344:
                  case AvatarAction.const_728:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_297:
            case AvatarAction.const_646:
            case AvatarAction.const_223:
            case AvatarAction.const_659:
            case AvatarAction.const_829:
            case AvatarAction.const_669:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
