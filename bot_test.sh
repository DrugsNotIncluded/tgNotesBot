#!/bin/bash
DATA_DIR="Data"
DB="$DATA_DIR/lists.db"
TG_DATA="$DATA_DIR/tg_data"
TOKEN=$(cat $TG_DATA | jq ".TOKEN")
#USER_ID is just for testing purposes
#Until function dispatcher in not implemented
USER_ID="595819523"


source functions/tgLib   #Base functions to control Telegram
#___________________________________________________________
source functions/listLib #Import functions for creating
			 #and controlling json based checkbox lists
			 #(For Google Keep-like experience in Telegram)
			 

function init() {
    list_mkinit    
}

declare -a upd=()

get_updates upd

echo ${upd[@]}


