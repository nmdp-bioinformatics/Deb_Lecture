library(RJDBC)

# Step1: Load database configuration
source('rdb/deb_conf.R')

# Step2: Load Driver
driver <- JDBC(oracleJdbcDriver, classPath = oracleJdbcJarFile)

# Step3: Connect to the database
connection <- dbConnect(driver, oracleJdbcUrlDbiores1, oracleJdbcUsername, oracleJdbcPassword)


# Step4: Perform queries

#deb example 1
largeSQLQuery <- readLines('sql/deb_example_1.sql')  # Read lines from the sql file
largeSQLQuery <- paste(largeSQLQuery, collapse = ' ')      # Collapse the line into a single string
system.time(
  ex1 <- dbGetQuery(connection, largeSQLQuery)
)
print(largeSQLQuery)
print(ex1)

#deb example 2
largeSQLQuery <- readLines('sql/deb_example_2.sql')  # Read lines from the sql file
largeSQLQuery <- paste(largeSQLQuery, collapse = ' ')      # Collapse the line into a single string
system.time(
  ex2 <- dbGetQuery(connection, largeSQLQuery)
)
print(largeSQLQuery)
print(ex2)


# Make sure to disconnect the database connection after you're done with SQL queries.
dbDisconnect(connection)
