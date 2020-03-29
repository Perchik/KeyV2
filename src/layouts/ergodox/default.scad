ERGODOX_80 = false;

DRAW_MOD_KEYS = true;
DRAW_PLAIN_KEYS = true;
DRAW_THUMB_KEYS = true;
DRAW_SIDE = "both"; // "both" "left" "right"
ONLY_ROW = -1;
ONLY_COL = -1;

// Every key will default to these values if the field is unset on the key.
KEY_DEFAULT = [
  ["height",   1],
  ["width",    1],  
  ["key_type",  "plain"], // "blank" | "mod" | "plain" | "thumb"
  ["key_bump", false],
  
  ["left_padding", .1 ],
  ["vertical_align", "center"], // "top" | "center" | "bottom" . Which edge to align with a normal 1u key; only applies if height > 1.
  
  ["font_size", 4],
  // Normal, single legend.
  ["label", ""],
  ["label_pos", [0,0]],
  // For two line legends 
  ["top_label", ""],
  ["top_label_pos", [0,-0.75]],
  ["bottom_label", ""],
  ["bottom_label_pos", [0,0.75]],

  // Key front   
  ["front_label", ""],
  ["front_label_pos", [0,-.5]],
  ["front_font_size", 3],
];
// Simulate a class by using vector based search lookup
function lookup(data, field) = data[search(field, data, num_returns_per_match=1)[0]][1];
function lookup_or_default(k, field) = let(x = lookup(k, field)) x == undef ? lookup(KEY_DEFAULT, field) : x;

// For all of these "accessors" return the default if it's unset in the child.
function width(key) = lookup_or_default(key, ["width"]);
function height(key) = lookup_or_default(key, ["height"]);
function key_type(key) = lookup_or_default(key, ["key_type"]);
function key_bump(key) = lookup_or_default(key, ["key_bump"]);

function left_pad(key) = lookup_or_default(key, ["left_padding"]);
function total_width(key)= width(key) + left_pad(key);
function vertical_align(key)= height(key) > 1 ? lookup_or_default(key, ["vertical_align"]) : "none";

function font_size(key) = lookup_or_default(key, ["font_size"]);
function label(key) = lookup_or_default(key, ["label"]);
function label_pos(key) = lookup_or_default(key, ["label_pos"]);

function top_label(key) = lookup_or_default(key, ["top_label"]);
function top_label_pos(key) = lookup_or_default(key, ["top_label_pos"]);

function bottom_label(key) = lookup_or_default(key, ["bottom_label"]);
function bottom_label_pos(key) = lookup_or_default(key, ["bottom_label_pos"]);

function front_label(key) = lookup_or_default(key, ["front_label"]);
function front_font_size(key) = lookup_or_default(key, ["front_font_size"]);
function front_label_pos(key) = lookup_or_default(key, ["front_label_pos"]);

// Recursively compute column distance
function get_column_distance(list, r, c) =
   c==0 ? 0 : total_width(list[r][c]) + get_column_distance(list,r,c-1);

function show_key(key, r, c) = let(t = key_type(key)) t!="blank"  && 
((DRAW_MOD_KEYS  && t == "mod") || (DRAW_PLAIN_KEYS && t=="plain") || (DRAW_THUMB_KEYS && t=="thumb")) &&
(ONLY_COL==-1 || ONLY_COL==c) &&
(ONLY_ROW==-1 || ONLY_ROW==r) &&
// 7 is the split between columns on the ergodox. This would have to change to make this generic.
((DRAW_SIDE=="left" && c < 7) || (DRAW_SIDE=="right" && c >7) || DRAW_SIDE == "both");


module ergodox_layout(list) {
 for (row = [0:len(list)]){   
    for(col = [0:len(list[row])-1]) {
      key = list[row][col];
      if(show_key(key, row, col)){
        width = width(key);
        height = height(key);
        col_distance = get_column_distance(list, row, col) ;
        bottom_align_offset =  (height - 1)/2;

        v = vertical_align(key);         
        v_offset =  v=="top" ? height/2 - 1/2: (v=="bottom" ? -height/2 + 1/2: 0 );
        translate_u(col_distance - width/2, -row - v_offset) {
          uh(height){
            u(width) { 
              $row = row;
              $column = col;     
                          
              $key_bump= key_bump(key);
            
              // No semicolons here!
              legend(label(key), label_pos(key), font_size(key))
              legend(top_label(key), top_label_pos(key), font_size(key))
              legend(bottom_label(key), bottom_label_pos(key), font_size(key))
              front_legend(front_label(key), front_label_pos(key), front_font_size(key))
              children();
            }
          }
        }
      }
    }
  }
}
