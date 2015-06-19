# ~/rdb/conf.R
#
# Make sure to make it read only if you're running this on the server:
# chmod 400 ~/db.conf.R
#
oracleJdbcDriver <- "oracle.jdbc.OracleDriver"
oracleJdbcJarFile <- "~/rdb/lib/ojdbc14.jar"

# DBIORES1
ORACLE_DATABASE_HOST <- 'mn4s31058'
ORACLE_DATABASE_PORT <- 1521
ORACLE_DATABASE_NAME <- 'ybiores1'
oracleJdbcUrlDbiores1 <- paste0("jdbc:oracle:thin:@", ORACLE_DATABASE_HOST, ":", ORACLE_DATABASE_PORT, ":", ORACLE_DATABASE_NAME)

oracleJdbcUsername <- "dturner"
oracleJdbcPassword <- "DTURNER2013"

