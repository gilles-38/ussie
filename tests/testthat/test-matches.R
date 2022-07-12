test_that("multiplication works", {
  expect_equal(2 * 2, 4)
  expect_equal(3 * 3, 9)
})

test_that("interactive works", {
  result0 <- as.integer(42)
  expect_identical(result0, 42L)
  result1 <- "a"
  expect_identical(result1, "a")
  # result2 <- 42.000000001
  # expect_identical(result2, 42)
  result3 <- 42.00000000000000000001
  expect_identical(result3, 42)
  result4 <- 42.1
  expect_identical(result4, 42, tolerance = 0.15)

  # vector of named values
  x <- c(a = 1, 2, c = 3)

  # test whether x has names: no error
  expect_named(x)
  # test if the names are "a", "b", "c": error
  # expect_named(x, c("a", "b", "c"))

  expect_error(sin[1], regexp = "subsettable$")
})

test_that("uss_make_matches works", {

  local_warn_partial_match()

  expect_error(uss_make_matches(3, "Italy"), class = "ussie_error_data")
  expect_error(uss_make_matches(mtcars, "Italy"), class = "ussie_error_cols")

  # is a tibble
  italy <- uss_make_matches(engsoccerdata::italy, "Italy")

  expect_true(tibble::is_tibble(italy))

  # has right names
  expect_named(
    italy,
    c("country", "tier", "season", "date", "home", "visitor", "goals_home",
      "goals_visitor")
  )

  # has right names
  expect_identical(
    names(italy),
    c("country", "tier", "season", "date", "home", "visitor", "goals_home",
      "goals_visitor")
  )

  # is country correct
  expect_identical(italy$country |> unique(), "Italy")

  # test snapshot
  expect_snapshot(dplyr::glimpse(italy))

})



