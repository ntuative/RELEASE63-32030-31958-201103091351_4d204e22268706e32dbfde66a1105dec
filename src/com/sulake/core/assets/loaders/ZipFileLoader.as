package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequest;
   import flash.net.URLStream;
   
   public class ZipFileLoader extends AssetLoaderEventBroker implements IAssetLoader
   {
       
      
      protected var var_1005:String;
      
      protected var _type:String;
      
      protected var var_121:URLStream;
      
      public function ZipFileLoader(param1:String, param2:URLRequest = null)
      {
         super();
         this.var_1005 = param2 == null ? "" : param2.url;
         this._type = param1;
         this.var_121 = new URLStream();
         this.var_121.addEventListener(Event.COMPLETE,loadEventHandler);
         this.var_121.addEventListener(HTTPStatusEvent.HTTP_STATUS,loadEventHandler);
         this.var_121.addEventListener(IOErrorEvent.IO_ERROR,loadEventHandler);
         this.var_121.addEventListener(Event.OPEN,loadEventHandler);
         this.var_121.addEventListener(ProgressEvent.PROGRESS,loadEventHandler);
         this.var_121.addEventListener(SecurityErrorEvent.SECURITY_ERROR,loadEventHandler);
         if(param2 != null)
         {
            this.load(param2);
         }
      }
      
      public function get url() : String
      {
         return this.var_1005;
      }
      
      public function get ready() : Boolean
      {
         return this.bytesTotal > 0 ? this.bytesTotal == this.bytesLoaded : false;
      }
      
      public function get content() : Object
      {
         return this.var_121;
      }
      
      public function get mimeType() : String
      {
         return this._type;
      }
      
      public function get bytesLoaded() : uint
      {
         return this.var_121.bytesAvailable;
      }
      
      public function get bytesTotal() : uint
      {
         return this.var_121.bytesAvailable;
      }
      
      public function load(param1:URLRequest) : void
      {
         this.var_1005 = param1.url;
         this.var_121.load(param1);
      }
      
      override public function dispose() : void
      {
         if(!_disposed)
         {
            super.dispose();
            this.var_121.removeEventListener(Event.COMPLETE,loadEventHandler);
            this.var_121.removeEventListener(HTTPStatusEvent.HTTP_STATUS,loadEventHandler);
            this.var_121.removeEventListener(IOErrorEvent.IO_ERROR,loadEventHandler);
            this.var_121.removeEventListener(Event.OPEN,loadEventHandler);
            this.var_121.removeEventListener(ProgressEvent.PROGRESS,loadEventHandler);
            this.var_121.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,loadEventHandler);
            this.var_121.close();
            this.var_121 = null;
            this._type = null;
            this.var_1005 = null;
         }
      }
   }
}
