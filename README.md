# Minecraft Datapacks
A collection of minecraft datapacks I have made (currently there is only one)

## Pyramid Generator

How to use:

```
/scoreboard players set @s pyramid_input 10
/function pyramid:build
```

The pyramid will build towards the south east.

Although the `pyramid_input` scoreboard objective is set manually, it is a "trigger" objective, which allows it to be used indirectly (such as from a book, using tellraw).

The maxium size pyramid you can create is 113x113. This can be increased by setting the `maxCommandChainLength` gamerule and `#max_size` variable to be larger.

This was my first attempt at a datapack, so there are number of comments to try to make things easier to read and understand.
