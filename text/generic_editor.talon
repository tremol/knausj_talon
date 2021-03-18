(find it | marco):
    edit.find()

next one:
    edit.find_next()

(go word left | peg):
    edit.word_left()

(go word right | fran):
    edit.word_right()

(go left | crimp):
    edit.left()

(go right | chris):
    edit.right()

(go up | jeep):
    edit.up()

(go down | doom):
    edit.down()

(go line start | lefty):
    edit.line_start()

(go line end | ricky):
    edit.line_end()

go way left:
    edit.line_start()
    edit.line_start()

go way right:
    edit.line_end()

(go way down | doomway):
    edit.file_end()

(go way up | jeepway):
    edit.file_start()

go page down:
    edit.page_down()

go page up:
    edit.page_up()

# selecting
(select line | shackle):
    edit.select_line()

(select all | olly):
    edit.select_all()

(select left | shrim):
    edit.extend_left()

(select right | shrish):
    edit.extend_right()

(select up | shreep):
    edit.extend_line_up()

(select down | shroom):
    edit.extend_line_down()

select word:
    edit.select_word()

(select word left | scram):
    edit.extend_word_left()

(select word right | skittish):
    edit.extend_word_right()

(select way left | lecksy):
    edit.extend_line_start()

(select way right | ricksy):
    edit.extend_line_end()

(select way up | shreepway):
    edit.extend_file_start()

(select way down | shroomway):
    edit.extend_file_end()

# editing
indent [more]:
    edit.indent_more()

(indent less | out dent):
    edit.indent_less()

# deleting
(clear | delete) line:
    edit.delete_line()

((clear | delete) left | junk):
    edit.delete()

((clear | delete) right | spunk):
    user.delete_forward()

(clear | delete) up:
    user.delete_up()

(clear | delete) down:
    user.delete_down()

((clear | delete) word | slurpies):
    edit.delete_word()

((clear | delete) word left | trough):
    user.delete_word_left()

((clear | delete) word right | kite):
    user.delete_word_right()

((clear | delete) way left | snipple):
    user.delete_way_left()

((clear | delete) way right | snipper):
    user.delete_way_right()

(clear | delete) way up:
    user.delete_way_up()

(clear | delete) way down:
    user.delete_way_down()

(clear | delete) all:
    user.delete_all()

#copy commands
(copy all | allstoosh):
    edit.select_all()
    edit.copy()
#to do: do we want these variants, seem to conflict
# copy left:
#      edit.extend_left()
#      edit.copy()
# copy right:
#     edit.extend_right()
#     edit.copy()
# copy up:
#     edit.extend_up()
#     edit.copy()
# copy down:
#     edit.extend_down()
#     edit.copy()

copy word:
    edit.select_word()
    edit.copy()

copy word left:
    edit.extend_word_left()
    edit.copy()

copy word right:
    edit.extend_word_right()
    edit.copy()

copy line:
    edit.select_line()
    edit.copy()

#cut commands
cut all:
    edit.select_all()
    edit.cut()
#to do: do we want these variants
# cut left:
#      edit.select_all()
#      edit.cut()
# cut right:
#      edit.select_all()
#      edit.cut()
# cut up:
#      edit.select_all()
#     edit.cut()
# cut down:
#     edit.select_all()
#     edit.cut()

cut word:
    edit.select_word()
    edit.cut()

cut word left:
    edit.extend_word_left()
    edit.cut()

cut word right:
    edit.extend_word_right()
    edit.cut()

cut line:
    edit.select_line()
    edit.cut()
