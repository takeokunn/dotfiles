# -*- coding: utf-8 -*-

import re
from xkeysnail.transform import *

define_conditional_modmap(re.compile(r'Firefox'), {
    Key.CAPSLOCK: Key.LEFT_CTRL,
})

define_keymap(re.compile("Firefox"), {
    # change tab
    K("C-f"): K("C-Tab"),
    K("C-b"): K("C-Shift-Tab"),

    # search
    K("C-s"): K("C-f"),
    K("C-s"): K("C-g"),
    K("C-r"): K("C-Shift-g"),

    # private window
    K("C-Shift-n"): K("C-Shift-p"),

    # up/down
    K("C-n"): K("DOWN"),
    K("C-p"): K("UP"),
    K("C-v"): K("SPACE"),

    K("C-g"): {
        # change page
        K("C-b"): K("C-LEFT_BRACE"),
        K("C-f"): K("C-RIGHT_BRACE"),
    }
}, "Firefox")
