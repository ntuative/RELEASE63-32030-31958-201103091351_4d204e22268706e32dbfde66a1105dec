package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2198:int;
      
      private var var_1593:String;
      
      private var var_2193:String;
      
      private var var_2195:Boolean;
      
      private var var_2196:Boolean;
      
      private var var_2197:int;
      
      private var var_2194:String;
      
      private var var_2192:String;
      
      private var var_1591:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2198 = param1.readInteger();
         this.var_1593 = param1.readString();
         this.var_2193 = param1.readString();
         this.var_2195 = param1.readBoolean();
         this.var_2196 = param1.readBoolean();
         param1.readString();
         this.var_2197 = param1.readInteger();
         this.var_2194 = param1.readString();
         this.var_2192 = param1.readString();
         this.var_1591 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2198;
      }
      
      public function get avatarName() : String
      {
         return this.var_1593;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2193;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2195;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2196;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2197;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2194;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2192;
      }
      
      public function get realName() : String
      {
         return this.var_1591;
      }
   }
}
