package com.sulake.habbo.sound
{
   public interface IPlayListController
   {
       
      
      function get priority() : int;
      
      function get length() : int;
      
      function get playPosition() : int;
      
      function set playPosition(param1:int) : void;
      
      function addItem(param1:Object, param2:int = -1) : int;
      
      function getEntry(param1:int) : Object;
      
      function moveItem(param1:int, param2:int) : void;
      
      function removeItem(param1:int) : void;
      
      function startPlaying() : void;
      
      function stopPlaying() : void;
   }
}
