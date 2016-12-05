global.enemy = ds_list_create();

for (i=0;i<argument1;i+=1){
 
    ds_list_add(global.enemy,(instance_create(150-(i*20),100*i+80,argument0)));
    
}

/*

argument0 = enemy to spawn
argument1 = amount of enemies to spawn