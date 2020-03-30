make_mods = true;
make_plain = true;
make_left = true;
make_right = true;
make_thumb_clusters = true;


only_row = -1;

ergodox_keys = [    
        
[1.5,  1,  1,      1,      1,   1,         1,       0,           1,    1,   1,  1,  1,  1,  1.5],
[1.5,  1,  1,      1,      1,   1,  [1, 1.5],       0,     [1, 1.5],   1,   1,  1,  1,  1,  1.5],
[1.5,  1,  1,      1,      1,   1,         0,       0,            0,   1,   1,  1,  1,  1,  1.5],
[1.5,  1,  1,      1,      1,   1,  [1, 1.5],       0,     [1, 1.5],   1,   1,  1,  1,  1,  1.5],
[  1,  1,  1,      1,      1,   0,         0,       0,            0,   0,   1,  1,  1,  1,    1],

[  0], //empty row for spacing

// Thumb clusters
[  0,  0,  0,     0,       0,   1,         1,       0,            1,   1,   0,  0,  0,  0,    0],
[  0,  0,  0,     0,   [1,2], [1,2],       1,       0,            1,[1,2],[1,2],0,  0,  0,    0],
[  0,  0,  0,     0,       0,   0,         1,       0,            1,   0,   0,  0,  0,  0,    0],
];



PLAIN_KEY = 1;
MOD_KEY = 2;
THUMB_KEY = 3;
key_types = [
// Mapping for selectively rendering keys. 1=plain keys, 2=modifiers, 3=thumb clusters.
[  2,  1,  1,  1,  1,  1,  1,     0,     1,  1,  1,  1,  1,  1,  2],
[  2,  1,  1,  1,  1,  1,  2,     0,     2,  1,  1,  1,  1,  1,  2],
[  2,  1,  1,  1,  1,  1,  0,     0,     0,  1,  1,  1,  1,  1,  2],
[  2,  1,  1,  1,  1,  1,  2,     0,     2,  1,  1,  1,  1,  1,  2],
[  2,  2,  2,  2,  2,  2,  0,     0,     0,  2,  2,  2,  2,  2,  2],

[  0], // Empty spacing row

[  0,  0,  0,  0,  0,  3,  3,     0,     3,  3,  0,  0,  0,  0,  0],
[  0,  0,  0,  0,  3,  3,  3,     0,     3,  3,  3,  0,  0,  0,  0],
[  0,  0,  0,  0,  0,  0,  3,     0,     3,  0,  0,  0,  0,  0,  0]
]; 


function show_key(list, r, c)=
    !is_empty(list, r, c) && 
    (      
     (make_mods && key_types[r][c] == MOD_KEY) || 
     (make_plain && key_types[r][c] == PLAIN_KEY) ||
     (make_thumb_clusters && key_types[r][c] == THUMB_KEY)
    ) &&
    ( 
      ( c <= 6 && make_left ) ||
      (c >= 8 && make_right) ) &&
    (only_row==-1 || r==only_row)
;

// Zero represents an empty key.
function is_empty(list, r, c)=
      is_list(list[r][c])? false : list[r][c]==0;

function get_key_height(list, r, c)=
    //if only one value is provided, the height defaults to 1
      is_list(list[r][c]) ? list[r][c][1] : 1;

function get_key_width(list, r, c)=
      is_list(list[r][c]) ? list[r][c][0] : max(1, list[r][c]);

function get_column_distance(list, r, c) =
   c==0 ? 0 : get_key_width(list,r,c) + get_column_distance(list,r,c-1) + (r==4 && c==0 ?.125:0);

module ergodox_layout(list) {
  for (row = [0:len(list)]){
    if(is_list(list[row])){
        for(col = [0:len(list[row])-1]) {
          width = get_key_width(list, row, col);
          height = get_key_height(list, row, col);
          col_distance = get_column_distance(list, row, col) ;

          bottom_align_offset =  (height - 1)/2;
          // The 7th row has the lower of the two 1.5 tall keys, so it needs to be aligned with the bottom of the row instead of the top.
          v_offset = row==3 && height > 1 ? bottom_align_offset : height/2;
       
          if(show_key(list,row,col)){
            translate_u(col_distance - width/2, -row - v_offset) {
              uh(height){
                u(width) { 
                  $row = row;
                  $column = col;            
                
                  children();
                }
              }
            }
          }
        }
      }
   }
}