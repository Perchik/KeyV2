include <../includes.scad>

SMALL_FONT_SIZE = 3;

// Uncomment and change these configs as needed.
// ERGODOX_80 = false;
// DRAW_SIDE="both"; //can be "left" "right" or "both"
// ONLY_ROW=2;
// ONLY_COL=2;
// DRAW_THUMB_KEYS = false;
// DRAW_MOD_KEYS = false;
// DRAW_PLAIN_KEYS = false;

KEY_0_0 = [
  ["width", 1.5],
  ["label", "_"],
  ["label_2", "-"],
  ["key_type",  "mod"],
];
KEY_0_1 = [ 
  ["label", "!"],
  ["front_label", "1"],
];
KEY_0_2 = [
  ["label", "@"],
  ["front_label", "2"],
];
KEY_0_3 = [
  ["label", "#"],
  ["front_label", "3"],
];
KEY_0_4 = [
  ["label", "$"],
  ["front_label", "4"],
];
KEY_0_5 = [
  ["label", "%"],
  ["front_label", "5"],
];
KEY_0_6 = [
  ["label", "Fn"],
  ["font_size", SMALL_FONT_SIZE],
  ["key_type",  "mod"],

];
KEY_0_7 = [
  ["label", "Esc"],
  ["font_size", SMALL_FONT_SIZE],
  ["key_type",  "mod"],
];
KEY_0_8 = [
  ["label", "^"],
  ["front_label", "6"],
];
KEY_0_9 = [
  ["label", "&"],
  ["front_label", "7"],
];
KEY_0_10 = [
  ["label", "*"],
  ["front_label", "8"],
];
KEY_0_11 = [
  ["label", "("],
  ["front_label", "9"],
];
KEY_0_12 = [
  ["label", ")"],
  ["front_label", "0"],
];
KEY_0_13 = [
  ["width", 1.5],
  ["top_label", "+"],
  ["bottom_label","="],
  ["key_type",  "mod"],
];

KEY_1_0 = [
  ["width", 1.5],
  ["label", "Tab"], 
  ["font_size", SMALL_FONT_SIZE],
  ["key_type",  "mod"],
];
KEY_1_1 = [
  ["label", "Q"],
  ["front_label", "↥"],
  ["front_font_size", 4],
  ["front_label_pos", [0, -.3]], 
];
KEY_1_2 = [
  ["label", "W"],
  ["front_label", "⇧"],
  ["front_font_size", 6],
  ["front_label_pos", [0, -.3]],
];
KEY_1_3 = [
  ["label", "E"],
  ["front_label", "↧"],
  ["front_font_size", 4],
  ["front_label_pos", [0, -.3]], 
];
KEY_1_4 = [
  ["label", "R"],
];
KEY_1_5 = [
  ["label", "T"],
];
KEY_1_6 = [
  ["height", 1.5],
  ["label", "{"],
	["vertical_align", "top"],
  ["key_type",  "mod"],
];
KEY_1_7 = [
  ["height", 1.5],
  ["label", "}"],
  ["vertical_align", "top"],
  ["key_type",  "mod"],
];
KEY_1_8 = [
  ["label", "Y"],
];
KEY_1_9 = [
  ["label", "U"],
  ["front_label", "4"],
];
KEY_1_10 = [
  ["label", "I"],
  ["front_label", "5"],
];
KEY_1_11 = [
  ["label", "O"],
  ["front_label", "6"],
];
KEY_1_12 = [
  ["label", "P"],
];
KEY_1_13 = [
  ["width", 1.5],
  ["top_label", "|"],
  ["bottom_label", "\\"],
  ["font_size", 3],
  ["key_type",  "mod"],
];

KEY_2_0 = [
  ["width", 1.5],
  ["label", "Num"],
  ["font_size", SMALL_FONT_SIZE],
  ["key_type",  "mod"],
];
KEY_2_1 = [
  ["label", "A"],
  ["front_font_size", 6],
  ["front_label_pos", [0, -.3]],
  ["front_label", "⇦"],
];
KEY_2_2 = [
  ["label", "S"],
  ["front_font_size", 6],
  ["front_label_pos", [0, -.3]],
  ["front_label", "⇩"],
];
KEY_2_3 = [
  ["label", "D"],
  ["front_font_size", 6],
  ["front_label_pos", [0, -.3]],
  ["front_label", "⇨"],
];
KEY_2_4 = [
  ["label", "F"],
  ["key_bump", true],
];
KEY_2_5 = [
  ["label", "G"],
];
KEY_2_6 = [
  ["label", "H"],
];
KEY_2_7 = [
  ["label", "J"],
  ["key_bump", true],
];
KEY_2_8 = [
  ["label", "K"],
];
KEY_2_9 = [
  ["label", "L"],
];
KEY_2_10 = [
  ["top_label", ":"],
  ["bottom_label", ";"],
  ["font_size", 4],
];
KEY_2_11 = [
  ["top_label", "\""],
  ["bottom_label", "'"],
  ["width", 1.5],
  ["key_type",  "mod"],
];

KEY_3_0 = [
  ["width", 1.5],
  ["label", "("],
  ["front_label", "Shift"],
  ["front_label_pos", [0,-.4]],
  ["key_type",  "mod"],
];
KEY_3_1 = [
  ["label", "Z"],
];
KEY_3_2 = [
  ["label", "X"],
];
KEY_3_3 = [
  ["label", "C"],
];
KEY_3_4 = [
  ["label", "V"],
];
KEY_3_5 = [
  ["label", "B"],
];
KEY_3_6 = [
  ["height", 1.5],
  ["vertical_align", "bottom"],
  ["label", "["],
  ["key_type",  "mod"],
];
KEY_3_7 = [
  ["height", 1.5],
  ["vertical_align", "bottom"],
  ["label", "]"],
  ["key_type",  "mod"],
];
KEY_3_8 = [
  ["label", "N"],
];
KEY_3_9 = [
  ["label", "M"],
];
KEY_3_10 = [
  ["top_label", "<"],
  ["bottom_label", ","],
  ["font_size", 4],
];
KEY_3_11 = [
  ["top_label", ">"],
  ["bottom_label", "."],
  ["font_size", 4],
];
KEY_3_12 = [
  ["top_label", "?"],
  ["bottom_label", "/"],
  ["font_size", 4],
];
KEY_3_13 = [
  ["width", 1.5],
  ["label", ")"],
  ["front_label", "Shift"],
  ["front_label_pos", [0,-.4]],
  ["key_type",  "mod"],
];

KEY_4_0 = [
["label", "Ctrl"],
  ["font_size", SMALL_FONT_SIZE],
  ["left_padding", 1.5],
  ["key_type",  "mod"],
];
KEY_4_1 = [
  ["label", "⚛"],
  ["font_size", 8],
  ["key_type",  "mod"],
];
KEY_4_2 = [
  ["label", "Alt"],
  ["font_size", SMALL_FONT_SIZE],
  ["key_type",  "mod"],
];
KEY_4_3 = [
  ["top_label", "~"],
  ["bottom_label", "`"],
  ["font_size", 6],
  ["key_type",  "mod"],
];
KEY_4_4 = [
  ["label", "≡"],  
  ["font_size", 6],
  ["key_type",  "mod"],
];
KEY_4_5 = [
  ["label", "⌂"],
  ["font_size", 7],
  ["key_type",  "mod"],
];  
KEY_4_6 = [
  ["label", "▲"],
  ["key_type",  "mod"],

];
KEY_4_7 = [
  ["label", "▼"],
  ["key_type",  "mod"],
];
KEY_4_8 = [
  ["label", "End"],
  ["font_size", SMALL_FONT_SIZE],
  ["key_type",  "mod"],
];
KEY_4_9 = [
  ["label", "↵"],
  ["font_size", 6],
  ["key_type",  "mod"],
];


KEY_LTHUMB_0 = [
  ["width", 1],
  ["label", "x"],
  ["key_type",  "thumb"],
];
KEY_LTHUMB_1 = [
  ["label", "♫"],
  ["key_type",  "thumb"],
];
KEY_LTHUMB_2A = [
  ["label", ""],
  ["height", ERGODOX_80 ? 1 : 2],
  ["vertical_align", "top"],
  ["key_type",  "thumb"],
];
KEY_LTHUMB_2B = [
  ["label", ""], 
  ["key_type",  "thumb"],
];

KEY_LTHUMB_3A = [
  ["label", ""], ["height", ERGODOX_80 ? 1 : 2],
  ["vertical_align", "top"],
  ["key_type",  "thumb"],
];
KEY_LTHUMB_3B = [
  ["label", ""],
  ["key_type",  "thumb"],
];
KEY_LTHUMB_4 = [
  ["label", ""],
  ["key_type",  "thumb"],
];
KEY_LTHUMB_5 = [
  ["label", ""],
  ["key_type",  "thumb"],
];
KEY_LTHUMB_6 = [
  ["label", ""],
  ["key_type",  "thumb"],
];

KEY_RTHUMB_0 = [
  ["label", ""],
  ["key_type",  "thumb"],
];
KEY_RTHUMB_1 = [
  ["label", ""],
  ["key_type",  "thumb"],
];
KEY_RTHUMB_2= [
  ["label", ""],
  ["key_type",  "thumb"],

];
KEY_RTHUMB_3A = [
  ["label", ""],
  ["height", ERGODOX_80 ? 1 : 2],
  ["vertical_align", "top"],
  ["key_type",  "thumb"],
];
KEY_RTHUMB_3B = [
  ["label", ""],
  ["key_type",  "thumb"],
  
];
KEY_RTHUMB_4A = [
  ["label", ""],
  ["height", ERGODOX_80 ? 1 : 2],
  ["vertical_align", "top"],
  ["key_type",  "thumb"],
];
KEY_RTHUMB_4B = [
  ["label", ""],
  ["key_type",  "thumb"],
];
KEY_RTHUMB_5 = [
  ["label", ""],
  ["key_type",  "thumb"],
];
KEY_RTHUMB_6 = [
  ["label", ""],
  ["key_type",  "thumb"],
];

KEY_EMPTY_SPLIT =[
  ["key_type", "blank"],
  ["width", 1], // Change this to make the gap bigger.
];

KEY_EMPTY = [
  ["key_type", "blank"],
];

// I use the empty keys in this list to get the correct dishing across the keyboard.
$ergodox_keys = [
[KEY_0_0  , KEY_0_1 , KEY_0_2 , KEY_0_3 , KEY_0_4 , KEY_0_5 , KEY_0_6,    KEY_EMPTY_SPLIT,  KEY_0_7 , KEY_0_8 , KEY_0_9 , KEY_0_10 , KEY_0_11 , KEY_0_12 , KEY_0_13],
[KEY_1_0  , KEY_1_1 , KEY_1_2 , KEY_1_3 , KEY_1_4 , KEY_1_5 , KEY_1_6,    KEY_EMPTY_SPLIT,  KEY_1_7 , KEY_1_8 , KEY_1_9 , KEY_1_10 , KEY_1_11 , KEY_1_12 , KEY_1_13],
[KEY_2_0  , KEY_2_1 , KEY_2_2 , KEY_2_3 , KEY_2_4 , KEY_2_5 , KEY_EMPTY,  KEY_EMPTY_SPLIT,  KEY_EMPTY, KEY_2_6, KEY_2_7 , KEY_2_8 , KEY_2_9 , KEY_2_10 , KEY_2_11  ],
[KEY_3_0  , KEY_3_1 , KEY_3_2 , KEY_3_3 , KEY_3_4 , KEY_3_5 , KEY_3_6,    KEY_EMPTY_SPLIT,  KEY_3_7 , KEY_3_8 , KEY_3_9 , KEY_3_10 , KEY_3_11 , KEY_3_12 , KEY_3_13],
[KEY_4_0  , KEY_4_1 , KEY_4_2 , KEY_4_3 , KEY_4_4 ,  KEY_EMPTY,  KEY_EMPTY, KEY_EMPTY_SPLIT, KEY_EMPTY, KEY_EMPTY,        KEY_4_5 , KEY_4_6, KEY_4_7 , KEY_4_8 , KEY_4_9 ],
[KEY_EMPTY],
[KEY_EMPTY, KEY_EMPTY, KEY_EMPTY, KEY_EMPTY, KEY_LTHUMB_0, KEY_LTHUMB_1,   KEY_EMPTY, KEY_EMPTY_SPLIT, KEY_EMPTY,  KEY_RTHUMB_0, KEY_RTHUMB_1 ],
[KEY_EMPTY, KEY_EMPTY, KEY_EMPTY, KEY_LTHUMB_2A, KEY_LTHUMB_3A, KEY_LTHUMB_4,  KEY_EMPTY, KEY_EMPTY_SPLIT, KEY_EMPTY,  KEY_RTHUMB_2, KEY_RTHUMB_3A, KEY_RTHUMB_4A],
[KEY_EMPTY, KEY_EMPTY, KEY_EMPTY, (ERGODOX_80 ? KEY_LTHUMB_2B : KEY_EMPTY), (ERGODOX_80 ? KEY_LTHUMB_3B : KEY_EMPTY), KEY_LTHUMB_5,  KEY_EMPTY, KEY_EMPTY_SPLIT, KEY_EMPTY, KEY_RTHUMB_5, (ERGODOX_80 ? KEY_RTHUMB_3B : KEY_EMPTY), (ERGODOX_80 ? KEY_RTHUMB_4 : KEY_EMPTY)],

];

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
row_length = len($ergodox_keys[0]);

ergodox_layout($ergodox_keys) {
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
           key = $ergodox_keys[$row][$column];
            //key bump on f and j
          // uncomment when prototyping for faster prototypes!
           $dish_type = "disable"; 
           $stem_support_type = "disable"; 
          key();        

        }
      }
    
  }
}
