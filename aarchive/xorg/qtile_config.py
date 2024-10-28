import os
import subprocess
import psutil
import iwlib

from libqtile import bar, layout, widget, hook, extension, qtile
from libqtile.config import Click, Drag, Group, Key, Match, Screen, ScratchPad, DropDown
from libqtile.lazy import lazy

mod = "mod4"
terminal = "kitty"
browser = "firefox"

keys = [

    # SCHRATCHPADS
    Key([mod], 'x', lazy.group['0'].dropdown_toggle('term_spt')),
    Key([mod], 's', lazy.group['0'].dropdown_toggle('term')),
    Key([mod], 'a', lazy.group['0'].dropdown_toggle('todo')),
    Key([mod], 'y', lazy.group['0'].dropdown_toggle('cal')),

    # APPLICATIONS
    Key([mod], "c", lazy.spawn("flatpak run com.brave.Browser")),
    Key([mod], "Return", lazy.spawn(terminal)),
    Key([mod], "d", lazy.spawn(terminal)),
    Key([mod], "r", lazy.spawn("launcher_t1")),
    Key([mod], "b", lazy.spawn(browser)),
    Key([mod], "v", lazy.spawn("code")),
    Key([mod], "g", lazy.spawn("surf https://chat.openai.com/auth/login")),
    Key([mod], "o", lazy.spawn('flatpak run com.spotify.Client')),
    Key([mod], "n", lazy.spawn('flatpak run md.obsidian.Obsidian')),
    Key([mod], "w", lazy.spawn('whatsapp-for-linux')),
    Key([mod], "m", lazy.spawn('morgen')),
    Key([mod], "u", lazy.spawn("chromium")),
    Key([mod], "i", lazy.spawn("discord")),
    #Key([mod], "e", lazy.spawn("thunar /home/hartmut/Documents/JKU")),
    Key([mod], "e", lazy.spawn("nautilus --new-window /home/hartmut/Documents/JKU")),

    # BASIC COMMANDS
    Key([mod], "h", lazy.layout.left(), desc="Move focus to left"),
    Key([mod], "l", lazy.layout.right(), desc="Move focus to right"),
    Key([mod], "j", lazy.layout.down(), desc="Move focus down"),
    Key([mod], "k", lazy.layout.up(), desc="Move focus up"),
    Key([mod], "space", lazy.layout.next(), desc="Move window focus to other window"),
    Key([mod, "shift"], "h", lazy.layout.shuffle_left(), desc="Move window to the left"),
    Key([mod, "shift"], "l", lazy.layout.shuffle_right(), desc="Move window to the right"),
    Key([mod], "left", lazy.to_screen(0)),
    Key([mod], "right", lazy.to_screen(1)),
    Key([mod, "shift"], "j", lazy.layout.shuffle_down(), desc="Move window down"),
    Key([mod, "shift"], "k", lazy.layout.shuffle_up(), desc="Move window up"),
    Key([mod, "control"], "h", lazy.layout.grow_left(), desc="grow window to the left"),
    Key([mod, "control"], "l", lazy.layout.grow_right(), desc="grow window to the right"),
    Key([mod, "control"], "j", lazy.layout.grow_down(), desc="Grow window down"),
    Key([mod, "control"], "k", lazy.layout.grow_up(), desc="Grow window up"),
    Key([mod], "z", lazy.layout.normalize(), desc="Reset all window sizes"),
    Key([mod, "shift"], "Return", lazy.layout.toggle_split(), desc="Toggle between split and unsplit sides of stack", ),
    Key([mod], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    Key([mod], "q", lazy.window.kill(), desc="Kill focused window"),
    Key([mod], "f", lazy.window.toggle_fullscreen(), desc="Toggle fullscreen on the focused window"),
    Key([mod], "t", lazy.window.toggle_floating(), desc="Toggle floating on the focused window"),
    Key([mod, "control"], "r", lazy.reload_config(), desc="Reload the config"),
    Key([mod, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
]


groups = [
    ScratchPad('0', [
    DropDown(
        'term',
        ['kitty'],
        height = 0.92,
        width = 0.92,
        x = 0.04,
        y = 0.04,
        on_focus_lost_hide = True,
        opacity = 1.0,
        warp_pointer = False,
    ),
    DropDown(
        'term_spt',
        ['spotify'],
        height = 0.92,
        width = 0.92,
        x = 0.04,
        y = 0.04,
        on_focus_lost_hide = True,
        opacity = 1.0,
        warp_pointer = False,
    ),
#    DropDown(
#        'todo',
#        ['todoist'],
#        height = 0.92,
#        width = 0.92,
#        x = 0.04,
#        y = 0.04,
#        on_focus_lost_hide = True,
#        opacity = 1.0,
#        warp_pointer = False,
#    ),
    DropDown(
        'todo',
        ['vivaldi.vivaldi-stable'],
        height = 0.92,
        width = 0.92,
        x = 0.04,
        y = 0.04,
        on_focus_lost_hide = True,
        opacity = 1.0,
        warp_pointer = False,
    ),
    DropDown(
        'cal',
        ['morgen'],
        height = 0.92,
        width = 0.92,
        x = 0.04,
        y = 0.04,
        on_focus_lost_hide = True,
        opacity = 1.0,
        warp_pointer = False,
    ),
    ])
]


group_names = ["1", "2", "3", "4", "5", "6", "7"]

group_labels = ["Main", "Web", "IDE", "Notes", "pdf", "Chat", "Term"]

group_layouts = ["columns","columns", "columns", "columns","columns","columns","columns"]

for i in range(len(group_names)):
    groups.append(
        Group(
            name=group_names[i],
            layout=group_layouts[i].lower(),
            label=group_labels[i],
        ))

for i in groups:
    keys.extend(
        [
            # mod1 + letter of group = switch to group
            Key(
                [mod],
                i.name,
                lazy.group[i.name].toscreen(toggle=True),
                desc="Switch to group {}".format(i.name),
            ),
            # mod1 + shift + letter of group = move focused window to group
            Key(
                [mod, "shift"],
                i.name,
                lazy.window.togroup(i.name, switch_group=False),
                desc="Move focused window to group {}".format(i.name),
            ),
        ]
    )



# keys.extend(
#     [
#         Key(
#             [mod],
#             'd',
#             lazy.group['7'].toscreen(toggle=True),
#             desc="Switch to group {}".format('7'),
#         ),
#         Key(
#             [mod, "shift"],
#             'd',
#             lazy.window.togroup('7', switch_group=False),
#             desc="Move focused window to group {}".format('7'),
#         ),
#     ]
# )


layouts = [
    layout.Columns(border_focus='#ff7f00', border_width=4, grow_amount=5, margin=10, margin_on_single=0, single_border_width=0),
    layout.Max(),
]

widget_defaults = dict(
    font="sans",
    fontsize=14,
    padding=3,
)
extension_defaults = widget_defaults.copy()



screens = [
    Screen(
        top=bar.Bar(
            [
                widget.GroupBox(),
                widget.CurrentLayout(fmt='        {}'),
                widget.Spacer(length=bar.STRETCH),
                widget.BatteryIcon(),
                widget.Battery(format='    {percent:2.0%}    |    {hour:d}:{min:02d}h'),
                widget.Spacer(length=bar.STRETCH),
                #widget.Clipboard(),
                #widget.Pomodoro(color_inactive='#FFFFFF', prefix_inactive='Timer'),
                widget.Volume(fmt='󰝚    {}    |   '),
                widget.Backlight(backlight_name='amdgpu_bl1', format='    {percent:2.0%}    |   '),
                widget.CPU(format='    {load_percent}    | '),
                widget.Memory(measure_mem='G'),
                #widget.Wlan(format=' |    󰖩   {percent:2.0%}'),
                widget.Clock(format=" |   %d.%m.  %a   |   %H:%M"),
            ],
            24,
            # border_width=[2, 0, 2, 0],  # Draw top and bottom borders
            # border_color=["ff00ff", "000000", "ff00ff", "000000"]  # Borders are magenta
        ),
        # You can uncomment this variable if you see that on X11 floating resize/moving is laggy
        # x11_drag_polling_rate = 60,
    ),
]



# Drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(), start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(), start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front()),
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: list
follow_mouse_focus = True
bring_front_click = False
floats_kept_above = True
cursor_warp = False
floating_layout = layout.Floating(
    border_focus = '#cc241d',
    border_normal = '#98971a',
    border_width = 0,
    margin = 2,
    float_rules=[
        # Run the utility of `xprop` to see the wm class and name of an X client.
        *layout.Floating.default_float_rules,
        Match(wm_class="confirmreset"),  # gitk
        Match(wm_class="makebranch"),  # gitk
        Match(wm_class="maketag"),  # gitk
        Match(wm_class="ssh-askpass"),  # ssh-askpass
        Match(title="branchdialog"),  # gitk
        Match(title="pinentry"),  # GPG key password entry
    ]
)
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True

# If things like steam games want to auto-minimize themselves when losing
# focus, should we respect this or not?
auto_minimize = False

# When using the Wayland backend, this can be used to configure input devices.
wl_input_rules = None

# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, GitHub issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
#
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
wmname = "LG3D"

@hook.subscribe.startup_once
def autostart():
    home = os.path.expanduser('~/.config/qtile/autostart.sh')
    subprocess.Popen([home])

