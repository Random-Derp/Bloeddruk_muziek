file <- readLines("Bloeddruk_en_muziek/diff_calc/diff_calc_input.csv")
result <- ""
for (line in file) {
  if ("id" %in% line) {
    result <- line
  } else {
    split_line <- strsplit(line, ",")[[1]]
    boven_diff <- as.integer(split_line[5]) - as.integer(split_line[3])
    onder_diff <- as.integer(split_line[6]) - as.integer(split_line[4])
    bpm_diff <- as.integer(split_line[8]) - as.integer(split_line[7])
    line <- gsub("\n", "", line)
    result <- paste0(result, line, boven_diff, ",", onder_diff, ",", bpm_diff, "\n")
  }
}
cat(result)
