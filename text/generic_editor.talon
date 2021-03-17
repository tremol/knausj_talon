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
    key(backspace)

((clear | delete) right | spunk):
    key(delete)

(clear | delete) up:
    edit.extend_line_up()
    edit.delete()

(clear | delete) down:
    edit.extend_line_down()
    edit.delete()

((clear | delete) word | slurpies):
    edit.delete_word()

((clear | delete) word left | trough):
    edit.extend_word_left()
    edit.delete()

((clear | delete) word right | kite):
    edit.extend_word_right()
    edit.delete()

((clear | delete) way left | snipple):
    edit.extend_line_start()
    edit.delete()

((clear | delete) way right | snipper):
    edit.extend_line_end()
    edit.delete()

(clear | delete) way up:
    edit.extend_file_start()
    edit.delete()

(clear | delete) way down:
    edit.extend_file_end()
    edit.delete()

(clear | delete) all:
    edit.select_all()
    edit.delete()

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
