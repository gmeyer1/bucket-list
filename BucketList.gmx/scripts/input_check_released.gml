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
    if ((player == 0 && keyboard_check_released(ord('D'))) || (player == 1 && keyboard_check_released(vk_right)) || gamepad_button_check_released(player, gp_padr))
    {
        return true;
    }
    break;

case INPUT.LEFT:
    if ((player == 0 && keyboard_check_released(ord('A'))) || (player == 1 && keyboard_check_released(vk_left)) || gamepad_button_check_released(player, gp_padl))
    {
        return true;
    }
    break;

case INPUT.UP:
    if ((player == 0 && keyboard_check_released(ord('W'))) || (player == 1 && keyboard_check_released(vk_up)) || gamepad_button_check_released(player, gp_padu))
    {
        return true;
    }
    break;

case INPUT.DOWN:
    if ((player == 0 && keyboard_check_released(ord('S'))) || (player == 1 && keyboard_check_released(vk_down)) || gamepad_button_check_released(player, gp_padd))
    {
        return true;
    }
    break;
    
case INPUT.A:
    if ((player == 0 && keyboard_check_released(vk_lshift)) || (player == 1 && keyboard_check_released(vk_rshift)) || gamepad_button_check_released(player, gp_face1))
    {
        return true;
    }
    break;
}

return false;
