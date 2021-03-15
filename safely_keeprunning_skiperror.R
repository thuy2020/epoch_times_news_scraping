library(tidyverse)

mymean <- function(v) {
  stopifnot(is.numeric(v))
  mean(v, na.rm = TRUE)
}

l <- list(c(32, 14, 4), "a", c(4, 2, 19))

# results in error for entire loop
map(l, mymean)

# use purrr::safely instead
safe_mean <- safely(mymean)

# below runs now
out <- map(l, safe_mean)

# get just contents (discard errors)

# discard errors
# check for first element of the list
is.null(out[[1]]$error)

# do the same thing but for all list elements
has_output <- map_lgl(out, ~is.null(.x$error))

final_out <- map_dbl(out[has_output], "result")
final_out
