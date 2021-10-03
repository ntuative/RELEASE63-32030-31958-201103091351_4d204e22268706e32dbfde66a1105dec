package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_178;
         param1["bound_to_parent_rect"] = const_99;
         param1["child_window"] = const_1188;
         param1["embedded_controller"] = const_1050;
         param1["resize_to_accommodate_children"] = const_69;
         param1["input_event_processor"] = const_30;
         param1["internal_event_handling"] = const_879;
         param1["mouse_dragging_target"] = const_258;
         param1["mouse_dragging_trigger"] = const_365;
         param1["mouse_scaling_target"] = const_321;
         param1["mouse_scaling_trigger"] = const_525;
         param1["horizontal_mouse_scaling_trigger"] = const_261;
         param1["vertical_mouse_scaling_trigger"] = const_252;
         param1["observe_parent_input_events"] = const_1202;
         param1["optimize_region_to_layout_size"] = const_444;
         param1["parent_window"] = const_1062;
         param1["relative_horizontal_scale_center"] = const_197;
         param1["relative_horizontal_scale_fixed"] = const_126;
         param1["relative_horizontal_scale_move"] = const_337;
         param1["relative_horizontal_scale_strech"] = const_380;
         param1["relative_scale_center"] = const_1054;
         param1["relative_scale_fixed"] = const_678;
         param1["relative_scale_move"] = const_1002;
         param1["relative_scale_strech"] = const_1070;
         param1["relative_vertical_scale_center"] = const_179;
         param1["relative_vertical_scale_fixed"] = const_154;
         param1["relative_vertical_scale_move"] = const_402;
         param1["relative_vertical_scale_strech"] = const_277;
         param1["on_resize_align_left"] = const_641;
         param1["on_resize_align_right"] = const_442;
         param1["on_resize_align_center"] = const_477;
         param1["on_resize_align_top"] = const_896;
         param1["on_resize_align_bottom"] = const_551;
         param1["on_resize_align_middle"] = const_483;
         param1["on_accommodate_align_left"] = const_996;
         param1["on_accommodate_align_right"] = const_473;
         param1["on_accommodate_align_center"] = const_637;
         param1["on_accommodate_align_top"] = const_1047;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_717;
         param1["route_input_events_to_parent"] = const_550;
         param1["use_parent_graphic_context"] = const_32;
         param1["draggable_with_mouse"] = const_1118;
         param1["scalable_with_mouse"] = const_1093;
         param1["reflect_horizontal_resize_to_parent"] = const_448;
         param1["reflect_vertical_resize_to_parent"] = const_475;
         param1["reflect_resize_to_parent"] = const_279;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1044;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
