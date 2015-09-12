options(stringsAsFactors = FALSE)
library(dplyr)
# Data comes from
# http://www.fec.gov/finance/disclosure/ftpdet.shtml

fec_data_ingest <- function(str, newest = F) {
  str %>%
    #paste0('http://www.fec.gov/finance/disclosure/metadata/', ., '_header_file.csv') %>%
    paste0('names/', ., '_header_file.csv') %>%
    read.csv() %>% 
    names -> data_names
  
  list.files('data') %>%
    grep(str, ., value = T) %>%
    grep('txt', ., value = T) %>%
    `if`(newest, grep('16', ., value = T), .)  %>%
    paste0('data/', .) %>%
    lapply(function(x) {print(x); read.csv(x, sep = '|', header = F)}) %>%
    bind_rows %>%
    `names<-`(data_names)
}



# The individual contributions file contains each contribution from an 
# individual to a federal committee if the contribution was at least $200.

indiv <- fec_data_ingest('indiv', T)


# The contributions to committees from committees file contains each 
# contribution or independent expenditure made by a PAC, party committee, 
# candidate committee, or other federal committee to another committee during 
# the two-year election cycle.

cm2cm <- fec_data_ingest('oth', T) 

# The contributions to candidates from committees file contains each 
# contribution or independent expenditure made by a PAC, party committee, 
# candidate committee, or other federal committee to a candidate during the 
# two-year election cycle.


cm2cd <- fec_data_ingest('pas2', T)

# The Operating Expenditures file contains disbursements reported on FEC 
# Form 3 Line 17, FEC Form 3P Line 23and FEC Form 3X Lines 21(a)(i), 21(a)(ii) 
# and 21(b). Operating expenditures disclosed by electronic filers are 
# available for the current election cycle and for election cycles through 
# 2004. Operating expenditures disclosed by paper filers, excluding Form 3P, 
# are available for the current election cycle and for election cycles through 
# 2006. Please note, operating expenditures disclosed by paper filers during 
# the 2006 cycle are only available from reports filed in October 2005 and 
# later. 
oppexp <- fec_data_ingest('oppexp', T)



# This file contains one record for each candidate to committee linakge.
link <- fec_data_ingest('ccl', T)

# This file contains one record for each committee registered with the Federal 
# Election Commission. This includes federal political action committees and 
# party committees, campaign committees for presidential, house and senate 
# candidates, as well as groups or organizations who are spending money for or 
# against candidates for federal office. The file contains basic information 
# about the committees. The ID number the Commission assigned to the committee 
# is first, along with the name of the committee, the sponsor, where 
# appropriate, the treasurer's name and the committee's address. The file also 
# includes information about what type of committee is being described, along 
# with the candidate's ID number if it is a campaign committee.

committee <- fec_data_ingest('cm', T)


# This file contains one record for each candidate who has filed the FEC 
# Form 2 for the upcoming election. In addition, this file includes candidates 
# who have active campaign committees without regard to election year and 
# candidates who are referenced as part of a draft committee or a nonconnected 
# committtee that registers as supporting or opposing a particular candidate. 
# The file contains basic information about the candidate including the 
# candidate's identification number, candidate's name, office, election year 
# and address.

candidate <- fec_data_ingest('cn', T) 



#####

