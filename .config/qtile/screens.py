from libqtile import bar, widget
from libqtile.config import Screen

def get_screens():
    return [
        Screen(
            wallpaper="~/Wallpaper.png",
            wallpaper_mode="stretch",
            top=bar.Bar(
                [
                    widget.CurrentLayout(padding=10),
                    widget.GroupBox(),
                    widget.WindowName(
                        scroll = True,
                        scroll_clear = True
                    ),
                    widget.Spacer(),
                    widget.Clock(format="%d/%m/%Y %a %I:%M %p"),
                    widget.Spacer(),
                    widget.Wttr(
                        location={"Melbourne": "Melbourne"} 
                    ),
                    widget.Sep(),
                    widget.BatteryIcon(),
                    widget.Battery(
                        format='{percent:2.0%}',
                        notify_below=10,
                    ),
                    widget.Sep(),
                    widget.Volume(
                        device='pipewire',
                        fmt='🔊 {}',
                        mute_format='🔇'
                    ),
                    widget.Sep(),
                    widget.StatusNotifier()
                ],
                32,
                background="#570296",
                margin=[10, 5, 5, 5],
            ),
        ),
    ]
