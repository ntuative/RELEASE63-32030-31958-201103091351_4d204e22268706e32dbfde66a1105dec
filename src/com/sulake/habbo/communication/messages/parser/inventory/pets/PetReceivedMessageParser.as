package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_1532:Boolean;
      
      private var var_819:PetData;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1532 = param1.readBoolean();
         this.var_819 = new PetData(param1);
         Logger.log("Got PetReceived: " + this.var_1532 + ", " + this.var_819.id + ", " + this.var_819.name + ", " + this.var_819.type + ", " + this.var_819.breed + ", " + this.pet.color);
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return this.var_1532;
      }
      
      public function get pet() : PetData
      {
         return this.var_819;
      }
   }
}
