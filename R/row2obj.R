#' @export
row2obj <- function(df, row_ix = 1) {
  checkmate::assert_data_frame(df)
  checkmate::assert_int(row_ix)
  df |> dplyr::slice(row_ix) |> purrr::transpose() |> purrr::pluck(1)
}		
