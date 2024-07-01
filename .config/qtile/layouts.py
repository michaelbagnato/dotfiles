from libqtile import layout

def get_layouts():
    return [
        layout.Columns(
            border_focus='#d30cb8',
            border_on_single='#d30cb8',
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
