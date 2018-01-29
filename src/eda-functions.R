checkJoinSQL <- function(tableA, tableB, joiningConditions, whereCondition){
  
query <- sprintf(
"select count(1) total 
from %s  
left join %s 
on %s  
where %s", tableA, tableB, joiningConditions, whereCondition)
df <- sqldf(query)

df$total == 0

} 