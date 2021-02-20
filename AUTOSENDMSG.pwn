/* ----------===@@ Auto MSG BY Mouataz @@===-------------------
*/
//------------This is my 2nd filterscript and its for randommessages---------------------//
//--------You can change the text on the messages and you can edit this script but please give my credits!----------------//

#include <a_samp>

forward sendmessage();

new automessage[][] =
{
    "{FF002B}[INFO] {66FFFF}: {daa520}need help?, Type {8470ff}/cmds {A1C2FF}and {8470ff}/help",
    "{FF002B}[INFO] {66FFFF}: {daa520}This server is made by {8470ff}Mouataz {9EC73D}and {8470ff}[AO]Mikasa[T]",
    "{FF002B}[INFO] {66FFFF}: {daa520}Dont Ask For Level :p , Type {8470ff}/server",
    "{FF002B}[INFO] {66FFFF}: {daa520}You Can Goto , {8470ff}/sfTune1-4,/lvTune2,/Tune3,/Tune4 ^-^",
    "{FF002B}[INFO] {66FFFF}: {daa520}If you have suggestions, please tell them to one of our admins. We wanna make this server better.",
    "{FF002B}[INFO] {66FFFF}: {daa520}This {8470ff}MOUTDM~2021 ^^ {0000ff}Have Fun No Cheating",
    "{FF002B}[INFO] {66FFFF}: {daa520}Free vip Level {8470ff}1-3,Type:{00FF00}/server",
    "{FF002B}[INFO] {66FFFF}: {daa520}Contact us if you have any problem ^^ {FF00D9}mgamesnetworkworkteam@hotmail.com",
    "{FF002B}[INFO] {66FFFF}: {daa520}Type {FF00D9}/admins , {8470ff}To Check{FF00D9} Administrator MOUTDM~2021 Online Or Offline",
    "{FF002B}[INFO] {66FFFF}: {daa520}This {8470ff}MOUTDM~2021 {A1C2FF}Use Anti Cheat And DDOS",
    "{FF002B}[INFO] {66FFFF}: {daa520}You Can Goto {8470ff}/lsa , /lva , /sfa {A1C2FF}This is Airpot",
    "{FF002B}[INFO] {66FFFF}: {daa520}Do You Like This Server ? {8470ff}Why Not Add Favorite",
    "{FF002B}[INFO] {66FFFF}: {daa520}Server From {FF00D9}Algeria {A1C2FF}Gaming RP",
    "{FF002B}[INFO] {66FFFF}: {daa520}Type {8470ff}/rules , {A1C2FF}To Show {8470ff}Rules {A1C2FF}Server",
    "{FF002B}[INFO] {66FFFF}: {daa520}Add Facebook Scripter {8470ff}Mouataz : https://www.facebook.com/daas.daas.370177/",
    "{FF002B}[INFO] {66FFFF}: {daa520}MOUTDM~2021 {FF00D9}|- FREEROAM -| Full House :p",
    "{FF002B}[INFO] {66FFFF}: {daa520}MOUTDM~2021 {FF00D9}|- Full House -| Stunt/Freeroam/Drift",
    "{FF002B}[INFO] {66FFFF}: {daa520}MOUTDM~2021 {FF00D9}Version [0.3.7]",
    "{FF002B}[INFO] {66FFFF}: {daa520}Freeroam {8470ff}2021",
    "{FF002B}[INFO] {66FFFF}: {daa520}Thanks All Enjoyy !!",
    "{FF002B}[INFO] {66FFFF}: {daa520}MOUTDM 2021 More 10000+ More Object Stunt",
    "{FF002B}[INFO] {66FFFF}: {daa520}Cant find a good place for race with your friend?We have long road here will help!{ff0000}type:{00ff00}/lroad",
    "{FF002B}[INFO] {66FFFF}: {daa520}Do you Want know about the scripter? type:{00ff00}/lowner",
    "{FF002B}[INFO] {66FFFF}: {daa520}Check Our Website for games and apps!Url:www.sahraouimouataz.wixsite.com/mgamesnetwork",
    "{FF002B}[INFO] {66FFFF}: {daa520}Our Website Can found in the weburl before enter the server!",
    "{FF002B}[INFO] {66FFFF}: {daa520}Want your own city? and zone? The challenge is on type:{ff0000}/challenge",
    "{FF002B}[INFO] {66FFFF}: {daa520}Want Go to city? type:{ff0000}/ls,/lv,/sf this city's",
    "{FF002B}[INFO] {66FFFF}: {daa520}See our news from type:{ff0000}/news",
    "{FF002B}[INFO] {66FFFF}: {daa520}Check the ranks on this server and who's have it type:{ff0000}/ranks",
    "{FF002B}[INFO] {66FFFF}: {daa520}Check the new teleport commands type:{ff0000}/telelist"
    

};


public OnFilterScriptInit()
{
    SetTimer("sendmessage",70000,1);
	return 1; //The time of send messages-Can Edited-
}
public sendmessage()
{
    SendClientMessageToAll(0x9EC73DAA, automessage[random(sizeof(automessage))]);
	return 1;
}


