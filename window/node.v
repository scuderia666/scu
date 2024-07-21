module window

import os
import gg
import gx

pub type FNCb = fn (data voidptr)

pub struct Node {
pub mut:
    tick_func FNCb
}