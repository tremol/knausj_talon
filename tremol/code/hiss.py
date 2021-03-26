from talon import Module, actions, noise, ctrl
from talon_plugins import eye_mouse, eye_zoom_mouse

mod = Module()
mod.mode("hiss_to_scroll", "mode for commands that are available only when hiss to scroll is active")

all_modes = [ 'scroll' ]

hiss_mode = 'scroll'

@mod.action_class
class Actions:

    def noise_toggle_hiss_mode(mode: str) -> None:
        """toggle the hiss mouse mode"""
        global hiss_mode
        if hiss_mode == mode:
            hiss_mode = ''
        elif mode in all_modes:
            hiss_mode = mode
        else:
            print(mode + ' is not a valid hiss mode.')
            raise

        if hiss_mode == '':
            actions.mode.disable('user.hiss_to_scroll')
        elif hiss_mode == 'scroll':
            actions.mode.enable('user.hiss_to_scroll')

#     def noise_hiss_scroll_reverse():
#         """reverse the direction of the hissing scroll"""
         
currently_hissing = False

def on_hiss(active):

    global hiss_mode
    global currently_hissing

    currently_hissing = not currently_hissing

    if hiss_mode == 'scroll':
        if currently_hissing:
            # actions.speech.disable()
            actions.user.mouse_scroll_down_continuous()
            # print('hiss started')
        else:
            # actions.speech.enable()
            actions.user.mouse_scroll_stop()
            # print('hiss stopped')

noise.register("hiss", on_hiss)
