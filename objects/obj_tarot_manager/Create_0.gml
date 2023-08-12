/// @description Insert description here
// You can write your code in this editor


y = room_height *0.2
//game states
state_intro = 0;
state_deal = 1;
state_match = 2;
state_compare = 3;
state_clean = 4;
state_shuffle = 5;

//set the initial state of the game
state = state_deal;

//position setup
hand_x_offset = 100;

//card setup vars
num_cards = 18;

//lists for different card states
deck = ds_list_create();
player_hand = ds_list_create();
comp_hand = ds_list_create();
discard = ds_list_create();
player_face_up = ds_list_create();
comp_face_up = ds_list_create();

//wait time vars
move_timer = 0;
wait_timer = 0;
current_card = 0;


//scores
player_score = 0
comp_score = 0



//create initial deck, looping for however many cards we can in our deck
for(var _i = 0; _i < num_cards; _i++)
{
	//make a new card
	var _new_card = instance_create_layer(x, y, "cards", obj_card);
	
	//all of these variables are declared here in the manager
	//BUT! they are instance variables of whatever card we just made
	
	_new_card.selected = false //for the one card that is going to be clicked and compared
	//give the card a face color
	_new_card.face_index = _i % 3;
	
	//delcare the var face_up and let the card know that it's not face up
	_new_card.face_up = false;
	//declare the var in_player_hand let the card know that it's not in the player's hand
	_new_card.in_player_hand = false;
	_new_card.in_comp_hand = false;
	
	//delcare the var target_depth and set it to 0
	_new_card.target_depth = 0;
	
	//set thpe initial target position of the card
	_new_card.target_x = x;
	_new_card.target_y = y;
	
	//add the new card to the deck
	ds_list_add(deck, _new_card);
}

//randomize the seed GM uses to create randomness
randomize();
//shuffle the deck list
ds_list_shuffle(deck);

//loop through the deck
for(var _i = 0; _i < num_cards; _i++)
{
	
	//visually stagger the cards
	deck[| _i].target_depth = num_cards -_i;
	deck[| _i].y = y - (2 * _i);
	//have the card go directly to it's position
	deck[| _i].target_y  = deck[| _i].y; //starting post for deck on left
	
}
