/// @description Insert description here
// You can write your code in this editor
enum EYE_POSITIONS {
	center = 0,
	up = 1,
	right = 2,
	down = 3,
	left = 4,
	newline = 5
}

enum MESSAGE_ID {
	E1,
	W1,
	E2,
	W2,
	E3,
	W3,
	E4,
	W4,
	E5
}

globalvar message_x;
globalvar message_y;
globalvar message_size;
globalvar show_eyes;
globalvar show_numbers;
globalvar show_bars;
globalvar chosen_bars;
globalvar overlay_all;
globalvar show_alphabet;
globalvar music_mode;

draw_set_font(fnt_default);

overlay_all = false;
chosen_bars = false;
show_alphabet = false;

music_mode = false;
show_bars = false;
show_eyes = true;
show_numbers = false;

message_size = 2.75;
message_x = 20;
message_y = 20;

globalvar message_map;
message_map = ds_map_create();

globalvar selected_message;
selected_message = MESSAGE_ID.E1;

globalvar use_custom;
use_custom = false;
globalvar custom_data;
custom_data = "";

globalvar show_color_blocks;
show_color_blocks = false;

globalvar blackout_mode;
blackout_mode = false;

globalvar isolation_mode;
isolation_mode = false;

globalvar has_spawned_isolation_bricks;
has_spawned_isolation_bricks = false;

globalvar blackout_index;
blackout_index = 0;

message_0 = "";
message_0 = addEyeDataLine(message_0, "2010132233040411302321143130330040240005");
message_0 = addEyeDataLine(message_0, "0320412200014222421222201100032013411135");
message_0 = addEyeDataLine(message_0, "3102210440002001040401441420330220342415");
message_0 = addEyeDataLine(message_0, "2313131300311321201422313314413414412115");
message_0 = addEyeDataLine(message_0, "0140032121141300411101002412410040310015");
message_0 = addEyeDataLine(message_0, "0403314323411221010100401204124424424025");
message_0 = addEyeDataLine(message_0, "133312203301031131112112103223145");
message_0 = addEyeDataLine(message_0, "13104242241303041102031232043135");

addNewEyeMessage(MESSAGE_ID.E1,message_0);

message_1 = "";
message_1 = addEyeDataLine(message_1, "3110132233040411302321143130330040240045");
message_1 = addEyeDataLine(message_1, "0320412200014222421222201100032013411015");
message_1 = addEyeDataLine(message_1, "0202010440001040440401441420330220341315");
message_1 = addEyeDataLine(message_1, "1112131300011020201422313314413414414015");
message_1 = addEyeDataLine(message_1, "2122233032440002432311102212310310220435");
message_1 = addEyeDataLine(message_1, "4034314012221113402103014133412213301325");
message_1 = addEyeDataLine(message_1, "024142214222030242001232124023232014035");
message_1 = addEyeDataLine(message_1, "31013221121302032222004223103132241135");

addNewEyeMessage(MESSAGE_ID.W1,message_1);

message_2 = "";
message_2 = addEyeDataLine(message_2, "1210132233040411302321143130330040240045")
message_2 = addEyeDataLine(message_2, "1320412200014222421222201100032013411325")
message_2 = addEyeDataLine(message_2, "3020132300442101430012141403110241042235")
message_2 = addEyeDataLine(message_2, "1024411132222314033301302310103224414225")
message_2 = addEyeDataLine(message_2, "0141130301441020203111142410342321321125")
message_2 = addEyeDataLine(message_2, "1411201200401030221224020400001032210405")
message_2 = addEyeDataLine(message_2, "0011322100422310432420131030102003002215")
message_2 = addEyeDataLine(message_2, "0201422403120313302310001033104412014225")
message_2 = addEyeDataLine(message_2, "0342010431011002001245")
message_2 = addEyeDataLine(message_2, "1314020220201413223115")

addNewEyeMessage(MESSAGE_ID.E2, message_2);

message_3 = "";

message_3 = addEyeDataLine(message_3, "3010143042311111301032001142111420421445")
message_3 = addEyeDataLine(message_3, "1320410024412002221410132400222201204025")
message_3 = addEyeDataLine(message_3, "1101202100440120220141002021300132433125")
message_3 = addEyeDataLine(message_3, "4011301120103223134314223132130311000035")
message_3 = addEyeDataLine(message_3, "1431102230242242010212231422001031112235")
message_3 = addEyeDataLine(message_3, "2034012300412222131322202302421402114405")
message_3 = addEyeDataLine(message_3, "1222010000121431012333120102242032215")
message_3 = addEyeDataLine(message_3, "0110101013212311030320302413203220305")

addNewEyeMessage(MESSAGE_ID.W2, message_3);

message_4 = "";

message_4 = addEyeDataLine(message_4, "2210143040001003022202312222321441442115")
message_4 = addEyeDataLine(message_4, "3320410022224313410032420000102200424315")
message_4 = addEyeDataLine(message_4, "3132233121201340041413023100012310431305")
message_4 = addEyeDataLine(message_4, "0200201400020212123111000031122201100325")
message_4 = addEyeDataLine(message_4, "1402142220230420012142412112231040100345")
message_4 = addEyeDataLine(message_4, "0030210313002122103100003123320032404225")
message_4 = addEyeDataLine(message_4, "0012402410202320430430312241313123011425")
message_4 = addEyeDataLine(message_4, "2323111302110210202223414121132403212305")
message_4 = addEyeDataLine(message_4, "0010301242212240330032110242131332310015")
message_4 = addEyeDataLine(message_4, "4102101033004320314121114223304034000415")
message_4 = addEyeDataLine(message_4, "041240123045")
message_4 = addEyeDataLine(message_4, "04230101045")

addNewEyeMessage(MESSAGE_ID.E3, message_4);

message_5 = "";
message_5 = addEyeDataLine(message_5, "1110143040440231010332321201132400320235");
message_5 = addEyeDataLine(message_5, "4320410023421203014412122224014202111305");
message_5 = addEyeDataLine(message_5, "0330311342241441113030031422340421311125");
message_5 = addEyeDataLine(message_5, "4314132002101412021124312302031114300215");
message_5 = addEyeDataLine(message_5, "1031332142002300111430341430331101221205");
message_5 = addEyeDataLine(message_5, "1011322111204423101313212310203110222005");
message_5 = addEyeDataLine(message_5, "1201201231300110240141330210230022200445");
message_5 = addEyeDataLine(message_5, "2103122200014401220032321421413321312205");
message_5 = addEyeDataLine(message_5, "1202240222342030331202440402005");
message_5 = addEyeDataLine(message_5, "0021211001411022421034024114425");

addNewEyeMessage(MESSAGE_ID.W3, message_5);

message_6 = "";
message_6 = addEyeDataLine(message_6, "1010143040001000000102132331201421330035");
message_6 = addEyeDataLine(message_6, "2320410022224312124304303001102034211305");
message_6 = addEyeDataLine(message_6, "1010042232100343001442142240222003000225");
message_6 = addEyeDataLine(message_6, "3034110223132024033020302224411420101415");
message_6 = addEyeDataLine(message_6, "1432343001202422301103013020010400301305");
message_6 = addEyeDataLine(message_6, "0123324013413413024413014124122223033225");
message_6 = addEyeDataLine(message_6, "2122221431303020131021131022300031032325");
message_6 = addEyeDataLine(message_6, "4323314110324032001221031124314401202315");
message_6 = addEyeDataLine(message_6, "122024230101311232213035");
message_6 = addEyeDataLine(message_6, "34212102201003230340345");

addNewEyeMessage(MESSAGE_ID.E4, message_6);

message_7 = "";
message_7 = addEyeDataLine(message_7, "3010143040001000000102132331201400400025");
message_7 = addEyeDataLine(message_7, "2320410022224312124304303001102221131425");
message_7 = addEyeDataLine(message_7, "2113102140010321222411243001001312233135");
message_7 = addEyeDataLine(message_7, "0302212301323014304134203000323324211405");
message_7 = addEyeDataLine(message_7, "0402102401032022102430210121030120332325");
message_7 = addEyeDataLine(message_7, "4022111031324121021424403111220214311415");
message_7 = addEyeDataLine(message_7, "2042332412033020233010412042410122321015");
message_7 = addEyeDataLine(message_7, "3111403114212321224102401324400302214405");
message_7 = addEyeDataLine(message_7, "2243141140421211141401305");

addNewEyeMessage(MESSAGE_ID.W4, message_7);

message_8 = "";
message_8 = addEyeDataLine(message_8, "1110143040001000000102132331201430441335");
message_8 = addEyeDataLine(message_8, "3320410022224312124304303001102111124305");
message_8 = addEyeDataLine(message_8, "1012142233020240141442122222302122132335");
message_8 = addEyeDataLine(message_8, "3034110224012020413020022424202403412025");
message_8 = addEyeDataLine(message_8, "0141101141031110102401102040100131001305");
message_8 = addEyeDataLine(message_8, "2112111301104412111124034101220400412135");
message_8 = addEyeDataLine(message_8, "1020410412211341301330132430110420102215");
message_8 = addEyeDataLine(message_8, "0202030022400101204423110421111420311025");
message_8 = addEyeDataLine(message_8, "1312242202220415");
message_8 = addEyeDataLine(message_8, "2324421013314315");

addNewEyeMessage(MESSAGE_ID.E5, message_8);