### read in plain text downloaded and copied from Leo's email ----

# full text of the email saved as attachment
wp1 <- scan("war_peace.txt", what = "", sep = "\n")

wp1 <- paste(wp1, collapse="\n")

# what, of war and peace, leo was able to paste
wp2 <- scan("war_peace_pasted.txt", what = "", sep = "\n")
wp2 <- paste(wp2, collapse="\n")

### clean ----

# remove leo's message from the downloaded part of the email
wp1 <- stringr::str_remove(wp1, "^.+Happy reading:")

# split both by characters
wp1 <- stringr::str_split(wp1, "")[[1]]
wp2 <- stringr::str_split(wp2, "")[[1]]

# what percent of characters did leo paste, rounded to two decimal places?
round(length(wp2) / length(wp1) * 100, 2)