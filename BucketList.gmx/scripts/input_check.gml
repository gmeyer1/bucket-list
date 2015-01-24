var player;

switch (argument0)
{
case PLAYER.PLAYER1:
    player = 0;
    break;
    
case PLAYER.PLAYER2:
    player = 1;
    break;
}

switch (argument1)
{
case INPUT.RIGHT:
    if (keyboard_check(ord('D')) || gamepad_button_check(player, gp_padr))
    {
        return true;
    }
    break;

case INPUT.LEFT:
    if (keyboard_check(ord('A')) || gamepad_button_check(player, gp_padl))
    {
        return true;
    }
    break;

case INPUT.UP:
    if (keyboard_check(ord('W')) || gamepad_button_check(player, gp_padu))
    {
        return true;
    }
    break;

case INPUT.DOWN:
    if (keyboard_check(ord('S')) || gamepad_button_check(player, gp_padd))
    {
        return true;
    }
    break;
    
case INPUT.A:
    if ((player == 0 && keyboard_check(vk_lshift)) || (player == 1 && keyboard_check(vk_rshift)) || gamepad_button_check(player, gp_face1))
    {
        return true;
    }
    break;
}

return false;