popper click: user.noise_toggle_pop_mode('click')
popper shift: user.noise_toggle_pop_mode('shift_click')
popper drag: user.noise_toggle_pop_mode('drag')
popper macro: user.noise_toggle_pop_mode('macro')
# popper (repeat | creek): user.noise_toggle_pop_to_repeat()

#settings():
#    #stop continuous scroll/gaze scroll with a pop
#    user.mouse_enable_pop_stops_scroll = 0
#   #enable pop click with 'control mouse' mode
#   user.mouse_enable_pop_click = 0

popper shift once: user.noise_toggle_pop_mode('shift_click_once')
popper drag once: user.noise_toggle_pop_mode('drag_once')

(hiss scroll | hissy):
    user.noise_toggle_hiss_mode('scroll')
    # user.noise_hiss_scroll_settings('default')
