module window

import os
import gg
import gx

pub type FNCb = fn (data voidptr)

pub struct App {
mut:
    nodes []Node
}

pub fn (mut a App) add(n Node) {
    a.nodes << n
}

pub fn (a App) run() {
    mut context := gg.new_context(
        bg_color: gx.rgb(174, 198, 255)
        width: 600
        height: 400
        window_title: 'Polygons'
        frame_fn: a.tick
    )
    context.run()
}

pub fn (a App) tick(mut ctx gg.Context) {
    ctx.begin()

    for node in a.nodes {
        node.tick_func(ctx)
    }

    ctx.end()
}