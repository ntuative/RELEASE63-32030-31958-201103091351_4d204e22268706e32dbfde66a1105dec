package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_929:int;
      
      private var var_688:Boolean;
      
      private var var_1548:Boolean;
      
      private var _figure:String;
      
      private var var_1445:int;
      
      private var var_1890:String;
      
      private var var_1592:String;
      
      private var var_1591:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_929 = param1.readInteger();
         this.var_688 = param1.readBoolean();
         this.var_1548 = param1.readBoolean();
         this._figure = param1.readString();
         this.var_1445 = param1.readInteger();
         this.var_1890 = param1.readString();
         this.var_1592 = param1.readString();
         this.var_1591 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_929;
      }
      
      public function get online() : Boolean
      {
         return this.var_688;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1548;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get categoryId() : int
      {
         return this.var_1445;
      }
      
      public function get motto() : String
      {
         return this.var_1890;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1592;
      }
      
      public function get realName() : String
      {
         return this.var_1591;
      }
   }
}
