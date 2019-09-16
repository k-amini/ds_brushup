# Show all of the commands that have been run
history
# Most of the time though, this is really long, so "pipe" it to less
history | less
# This allows you to navigate up and down with the arrows, and quit with q
# You can also just look at the first few lines, by piping it to head:
history | head
# Or just look at the last few lines, by piping it to tail:
history | tail
# You can also use grep to search history for a command:
history | grep ssh
# And, from the command history, you can run a numbered line by prefacing it with a !
!1
# this will run the first line again.