package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_994:RoomObjectLocationCacheItem = null;
      
      private var var_202:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         this.var_994 = new RoomObjectLocationCacheItem(param1);
         this.var_202 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return this.var_994;
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return this.var_202;
      }
      
      public function dispose() : void
      {
         if(this.var_994 != null)
         {
            this.var_994.dispose();
            this.var_994 = null;
         }
         if(this.var_202 != null)
         {
            this.var_202.dispose();
            this.var_202 = null;
         }
      }
   }
}
