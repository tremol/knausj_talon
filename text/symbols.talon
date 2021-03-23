# question [mark]: "?"
# (downscore | underscore | crunder): "_"
doubledash: "--"
emdash: "---"
triple quote: "'''"
(dot dot | dotdot): ".."
(dot dot dot | dotdotdot | ellipses): "..."
#ellipses: "…"
swipe: ", "
arrow: "->"
dub arrow: "=>"
new line: "\\n"
carriage return: "\\r"
# line feed: "\\r\\n"
empty escaped (dubstring|dub quotes):
    insert('\\"\\"')
    key(left)
    key(left)
(empty string | posh):
    "''"
    key(left)
(empty quotes | coif):
	insert('""')
	key(left)
empty escaped string:
    "\\'\\'"
    key(left)
    key(left)
(empty parens | prex):
	insert("()")
	key(left)
(empty brackets | brisk):
	insert("[]")
	key(left)
prexy:
	insert("()")
empty (squares | brisk): 
	insert("[]") 
	key(left)
empty (braces | kirk): 
	insert("{}") 
	key(left)
angle that: 
    text = edit.selected_text()
    user.paste("<{text}>")
(parens | prex) that: 
    text = edit.selected_text()
    user.paste("({text})")
(square | brisk) that: 
    text = edit.selected_text()
    user.paste("[{text}]")
(brace | kirk) that: 
    text = edit.selected_text()
    user.paste("{{{text}}}")
(string | posh | prime) that:
    text = edit.selected_text()
    user.paste("'{text}'")
(quote | coif) that:
    text = edit.selected_text()
    user.paste('"{text}"')

