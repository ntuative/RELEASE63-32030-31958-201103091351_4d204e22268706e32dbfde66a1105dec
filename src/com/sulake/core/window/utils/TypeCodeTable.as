package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_677;
         param1["bitmap"] = const_882;
         param1["border"] = const_783;
         param1["border_notify"] = const_1676;
         param1["button"] = const_528;
         param1["button_thick"] = const_872;
         param1["button_icon"] = const_1487;
         param1["button_group_left"] = const_772;
         param1["button_group_center"] = const_664;
         param1["button_group_right"] = const_895;
         param1["canvas"] = const_900;
         param1["checkbox"] = const_778;
         param1["closebutton"] = const_1222;
         param1["container"] = const_378;
         param1["container_button"] = const_891;
         param1["display_object_wrapper"] = const_675;
         param1["dropmenu"] = const_440;
         param1["dropmenu_item"] = const_535;
         param1["frame"] = const_394;
         param1["frame_notify"] = const_1647;
         param1["header"] = const_672;
         param1["html"] = const_1205;
         param1["icon"] = const_1075;
         param1["itemgrid"] = const_1219;
         param1["itemgrid_horizontal"] = const_462;
         param1["itemgrid_vertical"] = const_653;
         param1["itemlist"] = const_1220;
         param1["itemlist_horizontal"] = const_407;
         param1["itemlist_vertical"] = const_372;
         param1["label"] = WINDOW_TYPE_LABEL;
         param1["maximizebox"] = const_1471;
         param1["menu"] = const_1460;
         param1["menu_item"] = const_1429;
         param1["submenu"] = const_1110;
         param1["minimizebox"] = const_1553;
         param1["notify"] = const_1562;
         param1["null"] = const_818;
         param1["password"] = const_761;
         param1["radiobutton"] = const_744;
         param1["region"] = const_435;
         param1["restorebox"] = const_1469;
         param1["scaler"] = const_837;
         param1["scaler_horizontal"] = const_1510;
         param1["scaler_vertical"] = const_1436;
         param1["scrollbar_horizontal"] = const_500;
         param1["scrollbar_vertical"] = const_650;
         param1["scrollbar_slider_button_up"] = const_1163;
         param1["scrollbar_slider_button_down"] = const_1168;
         param1["scrollbar_slider_button_left"] = const_1066;
         param1["scrollbar_slider_button_right"] = const_1128;
         param1["scrollbar_slider_bar_horizontal"] = const_1080;
         param1["scrollbar_slider_bar_vertical"] = const_1000;
         param1["scrollbar_slider_track_horizontal"] = const_1199;
         param1["scrollbar_slider_track_vertical"] = const_1129;
         param1["scrollable_itemlist"] = const_1622;
         param1["scrollable_itemlist_vertical"] = const_478;
         param1["scrollable_itemlist_horizontal"] = const_1182;
         param1["selector"] = const_844;
         param1["selector_list"] = const_747;
         param1["submenu"] = const_1110;
         param1["tab_button"] = const_426;
         param1["tab_container_button"] = const_1122;
         param1["tab_context"] = const_544;
         param1["tab_content"] = const_1092;
         param1["tab_selector"] = const_846;
         param1["text"] = const_502;
         param1["input"] = const_709;
         param1["toolbar"] = const_1666;
         param1["tooltip"] = const_383;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
