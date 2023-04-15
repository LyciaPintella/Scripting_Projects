

load_script_libraries();

local file_name, file_path = get_file_name_and_path();

-- load the wh2 intro battle script library
package.path = "script/battle/intro_battles/?.lua"
require("wh2_intro_battle");

package.path = file_path .. "/?.lua;" .. package.path;

require("battle_declarations");
require("battle_main");

-- load in advice triggers but prevent them from triggering
package.path = "script/battle/?.lua;" .. package.path;
require("wh_battle_advice");
am:lock_advice();

bool_is_intro_battle = true;
