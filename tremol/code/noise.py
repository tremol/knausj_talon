from talon import Module, actions, noise, ctrl
from talon_plugins import eye_mouse, eye_zoom_mouse

mod = Module()

def set_to_false(vardict):
    for k in vardict.keys():
        vardict[k] = False

# defaults. At most one of these should be True, or else all will be set to False
# pop_modes = {
#     "control": True
#     "shift_click": False
#     "drag": False
# }
# if sum(list(pop_modes.values())) > 1:
#     set_to_false(pop_modes)
all_modes = ['control', 'shift_click', 'drag', 'macro']

pop_mode = 'control'

@mod.action_class
class Actions:

    def mouse_toggle_pop_mode(mode: str) -> None:
        """toggle the pop mouse mode"""
        global pop_mode
        if pop_mode == mode:
            pop_mode = ''
        elif mode in all_modes:
            pop_mode = mode
        else:
            print(mode + ' is not a valid mode.')
            raise

#     def mouse_toggle_pop_mode(mode: str) -> None:
#         """toggle the pop mouse mode. Make sure only one is true at any moment."""
#        old = pop_modes[mode]
#        set_to_false(pop_modes)
#        pop_modes[mode] = not old

#     def mouse_toggle_pop_to_control():
#         """use pop to toggle the control of the mouse"""
#        global pop_to_control_mode
#        pop_to_control_mode = not pop_to_control_mode



def eye_mouse_is_on():
    return (
        not eye_zoom_mouse.zoom_mouse.enabled
        and eye_mouse.mouse.attached_tracker is not None
    )

clicked_once = False

def on_pop(active):

    global pop_mode
    global ignore_knausj_click
    global clicked_once

    if pop_mode == 'control':
        ignore_knausj_click = False
        actions.user.mouse_toggle_control_mouse()
        # ctrl.mouse_click(button=0, hold=16000) # unnecessary if the pop click setting is already on

    elif pop_mode == 'shift_click':
        ignore_knausj_click = True

        if not eye_mouse_is_on():
            actions.user.mouse_toggle_control_mouse()
        elif eye_mouse_is_on() and not clicked_once:
            ctrl.mouse_click(button=0, hold=16000)
            clicked_once = True
        elif eye_mouse_is_on() and clicked_once:
            actions.key("shift:down")
            ctrl.mouse_click(button=0, hold=16000)
            actions.key("shift:up")
            actions.user.mouse_toggle_control_mouse()
            clicked_once = False

    elif pop_mode == 'drag':
        ignore_knausj_click = True

        if not eye_mouse_is_on():
            actions.user.mouse_toggle_control_mouse()
        elif eye_mouse_is_on() and not clicked_once:
            actions.user.mouse_drag()
            clicked_once = True
        elif eye_mouse_is_on() and clicked_once:
            actions.user.mouse_drag()
            actions.user.mouse_toggle_control_mouse()
            clicked_once = False

    elif pop_mode == 'macro':
        ignore_knausj_click = True
        actions.user.macro_play()
    


ignore_knausj_click = False

## This has been moved and adapted from knausj/code/mouse.py
## TEMPORARY Clean this up so the two files play nicer together
setting_mouse_enable_pop_click = mod.setting(
    "mouse_enable_pop_click",
    type=int,
    default=0,
    desc="Enable pop to click when control mouse is enabled.",
)
def on_pop_knausj(active):
    if eye_mouse_is_on():
        if setting_mouse_enable_pop_click.get() >= 1:
            global ignore_knausj_click  ### This line has been added
            if not ignore_knausj_click: ### This line has been added
                ctrl.mouse_click(button=0, hold=16000)

noise.register("pop", on_pop_knausj)
noise.register("pop", on_pop)
