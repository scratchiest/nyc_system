<?php 
$dictionary = array(
    "sex",
    "porn",
    "nigga",
    "admin",
    "fuck",
    "shit",
    "asshole",
    "stupid",
);

function checkInDictionary($password) {
    global $dictionary;
    return preg_match('/'.implode('|',$dictionary).'/i', $password);
}
?>