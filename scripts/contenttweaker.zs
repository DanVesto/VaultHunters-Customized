#loader contenttweaker
import contenttweaker.builder.vanilla.item.Basic;
val veryBasicItem = <factory:item>.typed<Basic>() 
.rarity(<constant:minecraft:item/rarity:uncommon>)
.build("vault_key");