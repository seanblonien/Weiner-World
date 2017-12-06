if(global.clipcount <= 0 && global.reservecount <= 0)
{
    global.reserve[global.weap] = 0;
    global.outofammo[global.weap] = true;
}
else global.outofammo[global.weap] = false;
