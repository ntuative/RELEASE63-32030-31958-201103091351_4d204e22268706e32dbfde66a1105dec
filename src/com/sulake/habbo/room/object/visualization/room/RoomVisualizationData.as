package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_494:WallRasterizer;
      
      private var var_492:FloorRasterizer;
      
      private var var_740:WallAdRasterizer;
      
      private var var_493:LandscapeRasterizer;
      
      private var var_741:PlaneMaskManager;
      
      private var var_783:Boolean = false;
      
      public function RoomVisualizationData()
      {
         super();
         this.var_494 = new WallRasterizer();
         this.var_492 = new FloorRasterizer();
         this.var_740 = new WallAdRasterizer();
         this.var_493 = new LandscapeRasterizer();
         this.var_741 = new PlaneMaskManager();
      }
      
      public function get initialized() : Boolean
      {
         return this.var_783;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return this.var_492;
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return this.var_494;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return this.var_740;
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return this.var_493;
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return this.var_741;
      }
      
      public function dispose() : void
      {
         if(this.var_494 != null)
         {
            this.var_494.dispose();
            this.var_494 = null;
         }
         if(this.var_492 != null)
         {
            this.var_492.dispose();
            this.var_492 = null;
         }
         if(this.var_740 != null)
         {
            this.var_740.dispose();
            this.var_740 = null;
         }
         if(this.var_493 != null)
         {
            this.var_493.dispose();
            this.var_493 = null;
         }
         if(this.var_741 != null)
         {
            this.var_741.dispose();
            this.var_741 = null;
         }
      }
      
      public function clearCache() : void
      {
         if(this.var_494 != null)
         {
            this.var_494.clearCache();
         }
         if(this.var_492 != null)
         {
            this.var_492.clearCache();
         }
         if(this.var_493 != null)
         {
            this.var_493.clearCache();
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         this.reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            this.var_494.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            this.var_492.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            this.var_740.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            this.var_493.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            this.var_741.initialize(_loc11_);
         }
         return true;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(this.var_783)
         {
            return;
         }
         this.var_494.initializeAssetCollection(param1);
         this.var_492.initializeAssetCollection(param1);
         this.var_740.initializeAssetCollection(param1);
         this.var_493.initializeAssetCollection(param1);
         this.var_741.initializeAssetCollection(param1);
         this.var_783 = true;
      }
      
      protected function reset() : void
      {
      }
   }
}
