orderly_id <- tryCatch(orderly::orderly_run_info()$id,
                       error = function(e) "<id>")

rmarkdown::render("produce_report_phylo.Rmd", clean = FALSE,
                  output_format = "all")
knitr::knit("produce_report_phylo.Rmd", "produce_report_phylo.md")

## TODO: there is a better way of doing this grotesque hack, but this
## will do for now.
##
## I think better would be to write a knitr hook that rewrites the
## path, or save the figures to a sensible path then rewrite with a
## less awful regular expression.
txt <- readLines("produce_report_phylo.md")
re <- "(!\\[.+\\])\\((.+)\\)"
repl <- sprintf("\\1({{ site.url }}/reports/%s/\\2)", orderly_id)
txt <- sub(re, repl, txt)
stopifnot(any(grepl("{{ site.url }}", txt, fixed = TRUE)))
writeLines(txt, "produce_report_phylo.md")

# MAKING NEW MD FILE WITH NICE HEADER
line_with_location <- txt[grepl("Location: ", txt, fixed = TRUE)]
line_with_sample <- txt[grepl("Most recent sample: ", txt, fixed = TRUE)]

location <- sapply(strsplit(line_with_location,"\\: "), `[`, 2)
mr_sample_date <- sapply(strsplit(line_with_sample,"\\: "), `[`, 2)

file.copy("produce_report_phylo.md", paste0(Sys.Date(), "-", location, "-", format(as.Date(mr_sample_date), "%B-%d"), ".md"))


