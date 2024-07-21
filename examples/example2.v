import window { App, Node }

import os
import gg
import gx

pub type FNCb = fn (data voidptr)

fn main() {
    mut app := App{}

    mut triangle := Node{triangle_tick}
    mut square := Node{square_tick}
    
    app.add(triangle)
    app.add(square)
    
    app.run()
}

fn triangle_tick(mut ctx gg.Context) {
    ctx.draw_triangle_filled(450, 142, 530, 280, 370, 280, gx.red)
}

fn square_tick(mut ctx gg.Context) {
    ctx.draw_convex_poly([f32(100.0), 100.0, 200.0, 100.0, 300.0, 200.0, 200.0, 300.0, 100.0, 300.0],
		gx.blue)
}