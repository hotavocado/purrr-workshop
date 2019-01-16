library(tidyverse)
library(repurrrsive)
help(package="repurrrsive")

length(got_chars)

str(got_chars[[9]])

str(got_chars[9])

str(got_chars, max.level = 2, list.len = 3)

View(got_chars)

alias <- tibble(name = map_chr(got_chars, ~.x[["name"]]),
                number = map_int(got_chars, ~length(.x[["aliases"]])),
                aliases = map(got_chars, ~.x[["aliases"]])) %>%
                arrange(number, name)

#naming lists

got_chars_named <- set_names(got_chars, map_chr(got_chars, "name"))

map_lgl(got_chars_named, "alive") %>% enframe()


got_chars[[1]]
