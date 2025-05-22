# Fire Emblem: Monshō no Nazo

This is a disassembly of Fire Emblem: Monshō no Nazo, also known as Fire Emblem: Mystery of the Emblem. It is the third installment in the Fire Emblem series.

It builds the following ROM:

- **fe3.sfc** `sha1: 3ee8cbe6638da64f1d91df9b81b1478498a5999f`

## Setting up

You need to have those tools available in your `PATH`:
- `wla-65816` and `wlalink` from [wla-dx](https://github.com/vhelin/wla-dx)
- [fe3-text](https://github.com/minirop/fe3-text)
- `make`
- `sha1sum` if you want to check the generated ROM is correct

## Building

Just type `make`.

## Help needed

- Writing a compressor. See [documentation](docs/compression.md), the decompressor can be found inside [fe3-png](https://github.com/minirop/fe3-png/).
- Understanding the map format (tilemap, enemies placements, cutscenes, etc.).
- Understanding the format of `EV_COMMAND_09`.

## See also

* [**StanHash/fe1**](https://github.com/StanHash/fe1), a disassembly of Fire Emblem: Ankoku Ryu to Hikari no Tsurugi
* [**ZaneAvernathy/FireEmblem5**](https://github.com/ZaneAvernathy/FireEmblem5), a disassembly of Fire Emblem: Thracia 776
* [**FireEmblemUniverse/fireemblem6j**](https://github.com/FireEmblemUniverse/fireemblem6j), a decompilation of Fire Emblem: Fūin no Tsurugi
* [**MokhaLeee/FireEmblem7J**](https://github.com/MokhaLeee/FireEmblem7J), a decompilation of Fire Emblem: Rekka no Ken
* [**StanHash/fe7_us**](https://github.com/StanHash/fe7_us), a decompilation of Fire Emblem: The Blazing Blade
* [**FireEmblemUniverse/fireemblem8u**](https://github.com/FireEmblemUniverse/fireemblem8u), a decompilation of Fire Emblem: The Sacred Stones
* [**Eebit/fe11-us**](https://github.com/Eebit/fe11-us), a decompilation of Fire Emblem: Shadow Dragon

## Thanks

[RobertTheSable](https://github.com/RobertTheSable/), Unknown Japanese hackers, [people on FEU](https://feuniverse.us/t/fe3-japanese-documentation-nightmare-modules-event-editing-patches-fixed-growths-and-more/5963) that backed up the Japanese documentation, [FireEmblem wiki](https://fireemblemwiki.org), [IsoFrieze](https://www.youtube.com/@RGMechEx).
