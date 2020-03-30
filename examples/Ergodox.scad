include <includes.scad>
include <src/layouts/ergodox/my_legends.scad>

// Uncomment any of these to turn off that part of the keyboard.
//make_mods = false;
//make_plain = false; // Standard keys
//make_left = false; // Left side 
//make_right = false; // Right side
//make_thumb_clusters = false;
//only_row = 0;
//
$stem_slop = 0.4;
$stem_type = "rounded_cherry";
$rounded_cherry_stem_d = 5.8;

$support_type ="disable";
// to turn on full sculpting
$double_sculpted = true;
// to make the font fit
$font_size = 3;//5.8;
$key_bump_edge = 2 ;
$key_bump_depth = .2;
// change this to make the full sculpting more or less aggressive. 200 is default
$double_sculpt_radius = 300;
$inset_legend_depth = .3;
$corner_radius = 2;
$stem_throw = 5;
// required for double_sculpted_column
row_length = len(ergodox_keys[0]);


ergodox_layout(ergodox_keys) {
  // this union is here because, for some reason, you cannot modify special variablesz
  // that are modified in the scope directly above.
  union() {
    // row declarations treat column 0 as perfectly center, so if we just used
    // $column we'd have a ridiculously looking left-leaning keyboard.
    // this function transforms the actual column value into a "2hands" column
    // value, aka for a board with 2 "keywells", one for each hand
    column_value = double_sculpted_column($column, row_length, "2hands");

// Can change dcs_row to whatever profile you prefer;
      dcs_row($row, column_value){
        // uh oh, now I need two of them...
        union() {

            //key bump on f and j
            $key_bump=($row==2 && ($column==4||$column==10));
          // uncomment when prototyping for faster prototypes!
         $dish_type = "disable"; 
           $stem_support_type = "disable"; 
            
          legend(ergodox_labels[$row][$column]) front_legend(ergodox_front_labels[$row][$column],[0,-.3]) key();
           

        }
      }
    
  }
}


 