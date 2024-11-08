library(tidyverse)
masstools::setwd_project()

file1 <- dir("static/tidymass-packages/",  pattern = "tar.gz") %>%
  stringr::str_sort(numeric = TRUE) %>%
  data.frame(file_name = .) %>%
  dplyr::mutate(
    package = stringr::str_replace_all(file_name, "\\_[0-9]{1,2}\\.[0-9]{1,2}\\.[0-9]{1,2}", "")
  ) %>%
  dplyr::mutate(package = stringr::str_replace_all(package, "\\.tar\\.gz", "")) %>%
  dplyr::mutate(version = stringr::str_extract(file_name, "[0-9]{1,2}\\.[0-9]{1,2}\\.[0-9]{1,2}")) %>%
  dplyr::group_by(package) %>%
  dplyr::slice_tail(n = 1) %>%
  dplyr::ungroup()

file2 <- dir("../", pattern = "tar.gz") %>%
  stringr::str_sort(numeric = TRUE) %>%
  data.frame(file_name = .) %>%
  dplyr::mutate(
    package = stringr::str_replace_all(file_name, "\\_[0-9]{1,2}\\.[0-9]{1,2}\\.[0-9]{1,2}", "")
  ) %>%
  dplyr::mutate(package = stringr::str_replace_all(package, "\\.tar\\.gz", "")) %>%
  dplyr::mutate(version = stringr::str_extract(file_name, "[0-9]{1,2}\\.[0-9]{1,2}\\.[0-9]{1,2}")) %>%
  dplyr::group_by(package) %>%
  dplyr::slice_tail(n = 1) %>%
  dplyr::ungroup()

file <-
  file1 %>%
  dplyr::left_join(file2, by = "package")

file <-
  file %>% 
  dplyr::mutate(version.y = 
                  case_when(
                    is.na(version.y) ~ version.x,
                    TRUE ~ version.y
                  ),
                file_name.y =
                  case_when(
                    is.na(file_name.y) ~ file_name.x,
                    TRUE ~ file_name.y
                  ))

###move new package
seq_len(nrow(file)) %>%
  purrr::walk(function(i) {
    message(i)
    if (file$version.x[i] != file$version.y[i]) {
      unlink(file.path("static/tidymass-packages/", file$file_name.x[i]))
      file.copy(from = file.path("..",  file$file_name.y[i]), to = "static/tidymass-packages/")
      file.copy(from = file.path("..",  file$package[i], "/Description"), 
                to = paste0("static/tidymass-packages/", file$package[i], "_Description.txt"))
    }
  })

readr::write_csv(file, file = "static/tidymass-packages/file.csv")
