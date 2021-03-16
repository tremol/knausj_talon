## Modified
# added cmd-tab and keyboard shortcuts

(app next | swick): key(cmd-tab)

window (new|open): app.window_open()
(window next | gibby): app.window_next()
(window last | shibby): app.window_previous()
window close: app.window_close()
(focus | fox) <user.running_applications>: user.switcher_focus(running_applications)
running list: user.switcher_toggle_running()
launch <user.launch_applications>: user.switcher_launch(launch_applications)

snap <user.window_snap_position>: user.snap_window(window_snap_position)
snap next [screen]: user.move_window_next_screen()
snap last [screen]: user.move_window_previous_screen()
snap screen <number>: user.move_window_to_screen(number)
snap <user.running_applications> <user.window_snap_position>:
    user.snap_app(running_applications, window_snap_position)
snap <user.running_applications> [screen] <number>:
    user.move_app_to_screen(running_applications, number)


# window snap to grid (keyboard shortcuts)
key(ctrl-alt-left): user.snap_window_explicit('left')
key(ctrl-alt-right): user.snap_window_explicit('right')
key(ctrl-alt-up): user.snap_window_explicit('top')
key(ctrl-alt-down): user.snap_window_explicit('bottom')
key(ctrl-alt-enter): user.snap_window_explicit('full')
