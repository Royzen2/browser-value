forward Response(player_id);

public OnPlayerSpawn(playerid)
{
  cef_create_browser(player_id, browser_id, "ccылка на пустую страницу с кодом кнопки M", false, false);

}
public OnGameModeInit(playerid)
{
  cef_subscribe(playerid, "browser:on_start", "Response");
}
public Response(player_id)
{
  cef_create_browser(player_id, browser_id, "ccылка на браузер", false, true);
  cef_emit_event(player_id, "browser:button_on", CEFINT(0));
  return true;
}
