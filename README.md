# Toolstack
A Utility Minecraft Data Pack

- [Installation](#installation)
- [Usage](#usage)
  - [Stacking Tools](#stacking-tools)
  - [Unstacking Tools](#unstacking-tools)
  - [Toolsatck Modes](#toolstack-modes)
- [Future Plans](#future-plans)

## Installation

To install Toolstack into your world, go to
[releases](https://github.com/Andrew-LLL1210/ToolStack/releases)
and place the latest release into your world's `datapacks` folder.
No need to unzip.

## Usage

Summary video:



https://user-images.githubusercontent.com/84987448/209611109-754ee3e6-831d-47b5-958d-5d1d6fe0cd79.mp4



### Stacking Tools

To place your tools in a toolstack,
1. Place a tool (or toolstack) in your offhand
2. Place another tool in your mainhand
3. Sneak

To stack many tools at once, simply hold sneak with the tool in your offhand
and scroll through multiple tools on your toolbar.

### Unstacking Tools

To unstack your tools,
1. Place the toolstack in your offhand
2. Go to an empty slot in your toolbar
3. Sneak

To unstack many tools at once, simply hold sneak with the toolstack in your offhand
and scroll through multiple empty slots on your toolbar.

### Toolstack Modes

There are two modes of the toolstack: Block Mode and Utility Mode.
Block Mode is the default.
To switch between modes,
1. Hold a toolstack in your mainhand
2. Hold sneak
3. Press the "swap mainhand and offhand" key (default `F`)

While in Block Mode, the toolstack will only detect full blocks and half-blocks
(stairs are approximated to half-blocks). This avoids the common annoyance of attempting
to mine blocks through doors, trapdoors, ladders, or other thin blocks.

While in Utility Mode, the toolstack will detect any block that has a registered tool,
including doors, trapdoors, etc. It will also round stairs up to full blocks, so that you
can mine them on the tab that sticks up.
Furthermore, Utility Mode changes the tool used for some blocks. Blocks that can be tilled
will switch to the hoe instead of the shovel, and campfires will use the shovel.

In summary, Block and Utility Mode are designed to minimize the amount of mode switching
required during the use of the toolstack. There is error in detecting what block the
player is looking at, so Block Mode rounds semi-blocks down, while Utility Mode rounds
them up. Utility Mode also uses the secondary tool for blocks that have one. The result is
that if the toolstack gives you the wrong tool in any circumstance, a single mode swich
_should_ correct it.

_(Obviously this is not foolproof. You cannot, for instance, till a block of dirt through
a door.)_

## Future Plans

If you have any suggestions for this datapack, please leave an issue!
Here are my current directions:

- Reduce error in block detection and thereby reduce the amount of mode switching required
