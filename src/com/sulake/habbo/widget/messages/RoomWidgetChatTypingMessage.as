package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_836:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_642:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_836);
         this.var_642 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_642;
      }
   }
}
