package com.sulake.core.assets
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class BitmapDataAsset implements ILazyAsset
   {
      
      protected static var var_540:uint = 0;
      
      protected static var var_489:uint = 0;
       
      
      private var _disposed:Boolean = false;
      
      private var var_100:Object;
      
      private var _bitmap:BitmapData;
      
      private var _offset:Point;
      
      private var var_1362:Boolean = false;
      
      private var var_1363:Boolean = false;
      
      private var var_1630:AssetTypeDeclaration;
      
      private var var_1005:String;
      
      public function BitmapDataAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         this._offset = new Point(0,0);
         super();
         this.var_1630 = param1;
         this.var_1005 = param2;
         ++var_540;
      }
      
      public static function get instances() : uint
      {
         return var_540;
      }
      
      public static function get allocatedByteCount() : uint
      {
         return var_489;
      }
      
      public function get url() : String
      {
         return this.var_1005;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1362;
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1363;
      }
      
      public function get offset() : Point
      {
         return this._offset;
      }
      
      public function get content() : Object
      {
         if(!this._bitmap)
         {
            this.prepareLazyContent();
         }
         return this._bitmap;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return this.var_1630;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            --var_540;
            if(this._bitmap)
            {
               try
               {
                  var_489 -= this._bitmap.width * this._bitmap.height * 4;
                  this._bitmap.dispose();
               }
               catch(e:Error)
               {
               }
            }
            this.var_100 = null;
            this._bitmap = null;
            this._offset = null;
            this.var_1630 = null;
            this.var_1005 = null;
            this._disposed = true;
         }
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         this.var_100 = param1;
         this._bitmap = null;
      }
      
      public function prepareLazyContent() : void
      {
         var _loc1_:* = null;
         if(this.var_100 == null)
         {
            return;
         }
         if(this.var_100 is Class)
         {
            _loc1_ = new this.var_100() as Bitmap;
            if(_loc1_ != null)
            {
               this._bitmap = _loc1_.bitmapData.clone();
               _loc1_.bitmapData.dispose();
               if(this._bitmap != null)
               {
                  var_489 += this._bitmap.width * this._bitmap.height * 4;
                  this.var_100 = null;
                  return;
               }
               throw new Error("Failed to convert Bitmap Class to BitmapDataAsset!");
            }
            this._bitmap = new this.var_100() as BitmapData;
            if(this._bitmap != null)
            {
               this.var_100 = null;
               return;
            }
            throw new Error("Failed to convert BitmapData Class to BitmapDataAsset!");
         }
         if(this.var_100 is Bitmap)
         {
            this._bitmap = Bitmap(this.var_100).bitmapData;
            if(this._bitmap == null)
            {
               throw new Error("Failed to convert Bitmap to BitmapDataAsset!");
            }
            this.var_100 = null;
         }
         if(this.var_100 is BitmapData)
         {
            this._bitmap = this.var_100 as BitmapData;
            if(this._bitmap != null)
            {
               this.var_100 = null;
               return;
            }
            throw new Error("Failed to convert BitmapData to BitmapDataAsset!");
         }
         if(this.var_100 is BitmapDataAsset)
         {
            this._bitmap = BitmapDataAsset(this.var_100)._bitmap;
            this._offset = BitmapDataAsset(this.var_100)._offset;
            this.var_1362 = BitmapDataAsset(this.var_100).var_1362;
            this.var_1363 = BitmapDataAsset(this.var_100).var_1363;
            if(this._bitmap != null)
            {
               this.var_100 = null;
               return;
            }
            throw new Error("Failed to read content from BitmaDataAsset!");
         }
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         if(param1 is BitmapDataAsset)
         {
            this._bitmap = BitmapDataAsset(param1)._bitmap;
            this._offset = BitmapDataAsset(param1)._offset;
            return;
         }
         throw new Error("Provided asset should be of type BitmapDataAsset!");
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc2_:int = 0;
         while(_loc2_ < param1.length())
         {
            _loc3_ = param1[_loc2_].attribute("key");
            _loc4_ = param1[_loc2_].attribute("value");
            switch(_loc3_)
            {
               case "offset":
                  _loc5_ = _loc4_.split(",");
                  this._offset.x = parseInt(_loc5_[0]);
                  this._offset.y = parseInt(_loc5_[1]);
                  break;
               case "flipH":
                  this.var_1362 = _loc4_ == "1" || _loc4_ == "HabboHelpCom_help_faq_entry_xml";
                  break;
               case "flipV":
                  this.var_1363 = _loc4_ == "1" || _loc4_ == "HabboHelpCom_help_faq_entry_xml";
                  break;
            }
            _loc2_++;
         }
      }
   }
}
