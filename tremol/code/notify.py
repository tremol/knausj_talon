from talon import Module, Context, app, speech_system, actions

ctx = Context()
mod = Module()

def on_phrase(j):
    global do_notify
    phrase = getattr(j["parsed"], "_unmapped", j["phrase"])
    phrase = " ".join(word.split("\\")[0] for word in phrase)
    if do_notify:
        app.notify(phrase)

speech_system.register('post:phrase', on_phrase)

# above enables notifications. Below supports toggling them.
# the unregistering doesn't seem to work though, hence the if statement above.

do_notify = True

@mod.action_class
class Actions:
    def notify_toggle():

        """Toggle OS notifications"""

        global do_notify

#         if do_notify:
#             speech_system.unregister('post:phrase', on_phrase)
#         else:
#             speech_system.register('post:phrase', on_phrase)

        do_notify = not do_notify

    def notify_on():

        """Toggle OS notifications ON"""

        global do_notify
        # speech_system.register('post:phrase', on_phrase)
        do_notify = True

    def notify_off():

        """Toggle OS notifications OFF"""

        global do_notify
        # speech_system.unregister('post:phrase', on_phrase)
        do_notify = False

