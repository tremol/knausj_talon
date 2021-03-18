from talon import actions, Module

mod = Module()

@mod.action_class
class edit_extra_actions:
    """ this adds several new actions for use in generic_editor.talon and elsewhere,
    to extend the functionality of the built in edit module """

    def delete_forward():
        """Deletes one character forward"""

    def delete_up():
        """Deletes one line up"""

    def delete_down():
        """Deletes one line down"""

    def delete_word_left():
        """Deletes the word portion to the left"""

    def delete_word_right():
        """Deletes the word portion to the right"""

    def delete_way_left():
        """Deletes all the way to the left"""

    def delete_way_right():
        """Deletes all the way to the right"""

    def delete_way_up():
        """Deletes all the way up"""

    def delete_way_down():
        """Deletes all the way down"""

    def delete_all():
        """Deletes everything"""
