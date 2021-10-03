package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_992:IAssetLoader;
      
      private var var_1613:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_1613 = param1;
         this.var_992 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_1613;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_992;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_992 != null)
            {
               if(!this.var_992.disposed)
               {
                  this.var_992.dispose();
                  this.var_992 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
