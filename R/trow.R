#' @description
#' `r lifecycle::badge("deprecated")`
#' 
#' @export
row2obj <- function(df, row_ix = 1) {
	lifecycle::warn("1.0.0", "row2obj()", "trow()")
  checkmate::assert_data_frame(df)
  checkmate::assert_int(row_ix)
  df |> dplyr::slice(row_ix) |> purrr::transpose() |> purrr::pluck(1)
}		


#' @description
#' `r lifecycle::badget("deprecated")`
#' 
#' @export
row_as_dict <- function(df, row_ix = 1) {
	lifecycle::warn("1.0.0", "row_as_dict()", "trow()")
	row2obj(df, row_ix)
}


#' @export
trow <- function(df, row_ix = 1, default = NULL) {
  checkmate::assert_data_frame(df)
  checkmate::assert_int(row_ix)
  df |>
    dplyr::slice(row_ix) |>
    purrr::transpose() |>
    purrr::pluck(1, .default = default)
}
