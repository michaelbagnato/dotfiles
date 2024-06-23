from libqtile import layout

def get_layouts():
    return [
        layout.Columns(
            border_focus_stack=["#d75f5f", "#8f3d3d"], 
            border_width=2, 
            margin=5,
            margin_on_single=10
        ),
        layout.Max(margin=10),
        layout.Floating(margin=10),
        # Try more layouts by unleashing below layouts.
        # layout.Stack(num_stacks=2),
        # layout.Bsp(),
        # layout.Matrix(),
        # layout.MonadTall(),
        # layout.MonadWide(),
        # layout.RatioTile(),
        # layout.Tile(),
        layout.TreeTab(),
        # layout.VerticalTile(),
        layout.Zoomy(),
    ]
