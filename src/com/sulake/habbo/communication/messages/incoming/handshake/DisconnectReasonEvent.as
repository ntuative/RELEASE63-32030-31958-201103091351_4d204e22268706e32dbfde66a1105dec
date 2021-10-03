package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1778:int = 0;
      
      public static const const_1495:int = 1;
      
      public static const const_1606:int = 2;
      
      public static const const_1939:int = 3;
      
      public static const const_1899:int = 4;
      
      public static const const_1769:int = 5;
      
      public static const const_1670:int = 10;
      
      public static const const_1904:int = 11;
      
      public static const const_1894:int = 12;
      
      public static const const_1896:int = 13;
      
      public static const const_1913:int = 16;
      
      public static const const_1850:int = 17;
      
      public static const const_1771:int = 18;
      
      public static const const_1790:int = 19;
      
      public static const const_1897:int = 20;
      
      public static const const_1782:int = 22;
      
      public static const const_1830:int = 23;
      
      public static const const_1846:int = 24;
      
      public static const const_1949:int = 25;
      
      public static const const_1762:int = 26;
      
      public static const const_1938:int = 27;
      
      public static const const_1875:int = 28;
      
      public static const const_1882:int = 29;
      
      public static const const_1916:int = 100;
      
      public static const const_1755:int = 101;
      
      public static const const_1825:int = 102;
      
      public static const const_1911:int = 103;
      
      public static const const_1963:int = 104;
      
      public static const const_1960:int = 105;
      
      public static const const_1892:int = 106;
      
      public static const const_1786:int = 107;
      
      public static const const_1750:int = 108;
      
      public static const const_1845:int = 109;
      
      public static const const_1839:int = 110;
      
      public static const const_1809:int = 111;
      
      public static const const_1908:int = 112;
      
      public static const const_1820:int = 113;
      
      public static const const_1859:int = 114;
      
      public static const const_1880:int = 115;
      
      public static const const_1868:int = 116;
      
      public static const const_1961:int = 117;
      
      public static const const_1803:int = 118;
      
      public static const const_1829:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1495:
            case const_1670:
               return "banned";
            case const_1606:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
