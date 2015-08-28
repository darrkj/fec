# Build a model here
source('fec_import.R')

library(dplyr)

# first need to pull a dataset togther.

indiv %>% 
  select(CMTE_ID, STATE, NAME, TRANSACTION_DT, TRANSACTION_AMT) %>%
  

  
