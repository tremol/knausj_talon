popper click: user.noise_toggle_pop_mode('control')
popper shift: user.noise_toggle_pop_mode('shift_click')
popper drag: user.noise_toggle_pop_mode('drag')
popper macro: user.noise_toggle_pop_mode('macro')
# popper (repeat | creek): user.noise_toggle_pop_to_repeat()

popper shift once: user.noise_toggle_pop_mode('shift_click_once')
popper drag once: user.noise_toggle_pop_mode('drag_once')

(hiss scroll | hissy):
    user.noise_toggle_hiss_mode('scroll')
    # user.noise_hiss_scroll_settings('default')
