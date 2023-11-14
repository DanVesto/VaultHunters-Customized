
import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.entity.player.interact.RightClickBlockEvent;
import crafttweaker.api.text.TextComponent;
CTEventManager.register<RightClickBlockEvent>((event) => {
    val player = event.player;
    val itemStack = event.itemStack;
    if(<item:the_vault:vault_crystal>.matches(itemStack)){
        if(<item:contenttweaker:vault_key>.matches(player.getOffhandItem())){
            player.getOffhandItem().asIItemStack().asMutable().shrink();
        } 
        else{
            player.sendMessage(new TextComponent("Unlock this vault crystal with a").setStyle(<constant:formatting:red>)+new TextComponent(" Vault Key").setStyle(<constant:formatting:yellow>)+new TextComponent(" in your offhand first.").setStyle(<constant:formatting:red>));
            event.cancel();
        }
    }
});