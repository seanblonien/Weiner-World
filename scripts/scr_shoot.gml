if(obj_crosshair.canshoot)
{
    if(global.weap != 1){
        projectile = instance_create(obj_player.x, obj_player.y, obj_shot);
        if(global.dmgup)projectile.speed = 90;
        else if(global.weap = 0){projectile.speed = 60;
            audio_play_sound(snd_ketchup_shoot, 1,0);}
        else if(global.weap = 2){projectile.speed = 15;
            audio_play_sound(snd_mayo_shoot, 1,0);}
        else {
            projectile.speed = 75;
            audio_play_sound(snd_rifle_shoot,0,0);
        }
        projectile.image_angle = global.firedir;
        projectile.direction = global.firedir;
        global.clipcount -= 1;
        global.shotsfired += 1;
    }
    else
    {
        audio_play_sound(snd_mustard_shoot, 1,0);
        projectile1 = instance_create(obj_player.x + 40, obj_player.y, obj_shot);
        projectile2 = instance_create(obj_player.x + 40, obj_player.y, obj_shot);
        projectile3 = instance_create(obj_player.x + 40, obj_player.y, obj_shot);
        projectile4 = instance_create(obj_player.x + 40, obj_player.y, obj_shot);
        projectile5 = instance_create(obj_player.x + 40, obj_player.y, obj_shot);
        if(global.dmgup){
            projectile1.speed = 45;
            projectile2.speed = 45;
            projectile3.speed = 45;
            projectile4.speed = 45;
            projectile5.speed = 45;
        }
        else{
            projectile1.speed = 15;
            projectile2.speed = 15;
            projectile3.speed = 15;
            projectile4.speed = 15;
            projectile5.speed = 15;
        }
        projectile1.image_angle = global.firedir + 8;
        projectile1.direction = global.firedir + 8;
        global.clipcount -= 1;
        global.shotsfired += 1;
        projectile2.image_angle = global.firedir;
        projectile2.direction = global.firedir;
        global.clipcount -= 1;
        global.shotsfired += 1;
        projectile3.image_angle = global.firedir - 8;
        projectile3.direction = global.firedir - 8;
        global.clipcount -= 1;
        global.shotsfired += 1;
        projectile4.image_angle = global.firedir + 4;
        projectile4.direction = global.firedir + 4;
        global.clipcount -= 1;
        global.shotsfired += 1;
        projectile5.image_angle = global.firedir - 4;
        projectile5.direction = global.firedir - 4;
        global.clipcount -= 1;
        global.shotsfired += 1;
    }
}
