black="#3b3228"
white="#AFD2E9"
red="#E86045"
orange="#E68D53"
lightblue="#3ECCBE"
mossgreen="#92a650"
celadon="#ace1af"
sandbrown="#C1A387"

BACKGROUND = black # background color of the app
BAR_BACKGROUND = black # background color of bar
WORKSPACES_BACKGROUND = black # background color for workspaces pane
TODOS_BACKGROUND = black # background color for todos pane
BORDER_DIM = sandbrown + " 50%" # color for non-focused pane
BORDER_LIT = lightblue # color for focused pane

#unfocused pane = foreground, background
BORDER_TITLE_DIM = sandbrown, black

#focused pane = foreground, background
BORDER_TITLE_LIT = orange, black

SEARCH_COLOR = red # highlight color when searching
YANK_COLOR = lightblue # a color flash for yanking a todo/workspace/description
SAVE_ON_ESCAPE = False # whether to cancel the todo or save it when esc is pressed. `False` means cancel
USE_DATE_FIRST = True # whether to use dd-mm or mm-dd. True means day first

# This defines how the date is referenced in the Due Column
# See here: https://strftime.org/
DATE_FORMAT = "%d %h"
TIME_FORMAT = "%H:%M" # use this format for time if time is non zero

WORKSPACE = {
    "editing": orange,
    "pointer": "󰝾  ",
}

TODO = {
    "editing": orange,
    "pointer": "󰝾  ", # cursor pointer
    "urgency1_icon": ".", # icon for urgency 1 (lowest)
    "urgency2_icon": "!",
    "urgency3_icon": "!!",
    "urgency4_icon": "!!!",
}
