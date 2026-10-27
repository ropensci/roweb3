---
title: "Using dittodb to test database queries"
reporter: "Gordon Shotwell"
date: 2021-01-25
resource: "[dittodb](https://docs.ropensci.org/dittodb)"
original_url: "https://discuss.ropensci.org/t/using-dittodb-to-test-database-queries/2322"
language: [English]
---

#### rOpenSci package or resource used*

[dittodb](https://docs.ropensci.org/dittodb/)

#### What did you do?

I have a few functions in an internal package which basically wrap up some database queries. These are tricky to test because my CI system is not allowed to connect directly to the databases.  dittodb let's me do two things with these functions:

1) Test them in an automated way
2) Have a record of what the 'correct' database response looked like in case the data source changes down the road

#### URL or code snippet for your use case*
 ```
getData <- function(date) {
  cred <- .getMyCredentials("mydb")
  con <- DBI::dbConnect(
    RPostgreSQL::PostgreSQL(),
    user = cred["user"],
    password = cred["password"],
    dbname = cred["dbname"],
    host = cred["host"],
    port = cred["port"]
  )
  on.exit(DBI::dbDisconnect(con))
  
  out <- tbl(con, "my_table") %>% 
    dplyr::filter(.data$date > local(date))
  return(out)
}

dittodb::with_mock_db({
  test_that("getData", {
    results <- getData("2010-01-01")
    expect_s3_class(results, "data.frame")
    expect_named(results, c("date", "value", "state"))
  })
})
```

