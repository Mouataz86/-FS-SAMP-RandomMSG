/* ----------===@@ Auto MSG BY Mouataz @@===------------------- */
//------------This is my 2nd filterscript for random messages---------------------//
//--------You can change the text on the messages and edit this script but please give credit!----------------//

#include <a_samp>

#define COLOR_INFO 0x9EC73DAA

forward sendmessage();

new bool:g_ReceiveMsgs[MAX_PLAYERS]; // Per-player message toggle

new gRandomMessages[][] =
{
    "[INFO]: Need help? Type /cmds and /help",
    "[INFO]: This server is made by Mouataz and [AO]Mikasa[T]",
    "[INFO]: Don't ask for level :p, type /server",
    "[INFO]: Teleport to /sfTune1-4, /lvTune2, /Tune3, /Tune4",
    "[INFO]: Have suggestions? Tell an admin, we want to improve!",
    "[INFO]: MOUTDM~2021 - Have fun! No cheating.",
    "[INFO]: Free VIP Level 1-3, type: /server",
    "[INFO]: Contact us if you have any problems: mgamesnetworkworkteam@hotmail.com",
    "[INFO]: Type /admins to check if MOUTDM~2021 admins are online",
    "[INFO]: MOUTDM~2021 uses anti-cheat and DDOS protection",
    "[INFO]: Go to airports with /lsa, /lva, /sfa",
    "[INFO]: Like the server? Add it to favorites!",
    "[INFO]: Server hosted from Algeria - Gaming RP",
    "[INFO]: Type /rules to view the server rules",
    "[INFO]: Facebook of scripter Mouataz: facebook.com/daas.daas.370177",
    "[INFO]: MOUTDM~2021 |- FREEROAM -| Full House :p",
    "[INFO]: MOUTDM~2021 |- Full House -| Stunt/Freeroam/Drift",
    "[INFO]: MOUTDM~2021 Version [0.3.7]",
    "[INFO]: Freeroam 2021",
    "[INFO]: Thanks all, enjoy!!",
    "[INFO]: MOUTDM~2021 has over 10,000 stunt objects!",
    "[INFO]: Looking for a race track? Use /lroad for a long road!",
    "[INFO]: Want to know about the scripter? Type: /lowner",
    "[INFO]: Visit our website: www.sahraouimouataz.wixsite.com/mgamesnetwork",
    "[INFO]: You can find our site in the server's web URL!",
    "[INFO]: Want your own city and zone? Try /challenge",
    "[INFO]: Travel to cities with /ls, /lv, /sf",
    "[INFO]: See our latest updates with /news",
    "[INFO]: Check server ranks with /ranks",
    "[INFO]: View new teleport commands with /telelist"
};

public OnFilterScriptInit()
{
    SetTimer("sendmessage", 70000, true); // Send message every 70 seconds
    return 1;
}

public OnPlayerConnect(playerid)
{
    g_ReceiveMsgs[playerid] = true; // Enable auto-messages by default
    return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
    g_ReceiveMsgs[playerid] = false;
    return 1;
}

public sendmessage()
{
    new rand = random(sizeof(gRandomMessages));
    for(new i = 0; i < MAX_PLAYERS; i++)
    {
        if(IsPlayerConnected(i) && g_ReceiveMsgs[i])
        {
            SendClientMessage(i, COLOR_INFO, gRandomMessages[rand]);
        }
    }
    return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
    if(strcmp(cmdtext, "/togglemsg", true) == 0)
    {
        g_ReceiveMsgs[playerid] = !g_ReceiveMsgs[playerid];
        if(g_ReceiveMsgs[playerid])
            SendClientMessage(playerid, COLOR_INFO, "[INFO]: Auto-messages enabled.");
        else
            SendClientMessage(playerid, COLOR_INFO, "[INFO]: Auto-messages disabled.");
        return 1;
    }
    return 0;
}
