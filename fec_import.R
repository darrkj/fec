options(stringsAsFactors = FALSE)

# Data comes from
# http://www.fec.gov/finance/disclosure/ftpdet.shtml


# The individual contributions file contains each contribution from an 
# individual to a federal committee if the contribution was at least $200.
indiv <- read.csv('2016/itcont.txt', sep = '|', header = F)

names(indiv) <- c('CMTE_ID', 'AMNDT_IND', 'RPT_TP', 'TRANSACTION_PGI',
               'IMAGE_NUM', 'TRANSACTION_TP', 'ENTITY_TP', 'NAME', 
               'CITY', 'STATE', 'ZIP_CODE', 'EMPLOYER', 'OCCUPATION',
               'TRANSACTION_DT', 'TRANSACTION_AMT', 'OTHER_ID',
               'TRAN_ID', 'FILE_NUM', 'MEMO_CD', 'MEMO_TEXT', 'SUB_ID')


# The contributions to committees from committees file contains each 
# contribution or independent expenditure made by a PAC, party committee, 
# candidate committee, or other federal committee to another committee during 
# the two-year election cycle.

cm2cm <- read.csv('2016/itoth.txt', sep = '|', header = F)

names(cm2cm) <- c('CMTE_ID', 'AMNDT_IND', 'RPT_TP', 'TRANSACTION_PGI',
               'IMAGE_NUM', 'TRANSACTION_TP', 'ENTITY_TP', 'NAME',
               'CITY', 'STATE', 'ZIP_CODE', 'EMPLOYER',
               'OCCUPATION', 'TRANSACTION_DT', 'TRANSACTION_AMT',
               'OTHER_ID', 'TRAN_ID', 'FILE_NUM', 'MEMO_CD',
               'MEMO_TEXT', 'SUB_ID')



# The contributions to candidates from committees file contains each 
# contribution or independent expenditure made by a PAC, party committee, 
# candidate committee, or other federal committee to a candidate during the 
# two-year election cycle.


cm2cd <- read.csv('2016/itpas2.txt', sep = '|', header = F)

names(cm2cd) <- c('CMTE_ID', 'AMNDT_IND', 'RPT_TP', 'TRANSACTION_PGI',
               'IMAGE_NUM', 'TRANSACTION_TP', 'ENTITY_TP',
               'NAME', 'CITY', 'STATE', 'ZIP_CODE',
               'EMPLOYER', 'OCCUPATION', 'TRANSACTION_DT',
               'TRANSACTION_AMT', 'OTHER_ID', 'CAND_ID', 'TRAN_ID',
               'FILE_NUM', 'MEMO_CD', 'MEMO_TEXT', 'SUB_ID')


# The Operating Expenditures file contains disbursements reported on FEC 
# Form 3 Line 17, FEC Form 3P Line 23and FEC Form 3X Lines 21(a)(i), 21(a)(ii) 
# and 21(b). Operating expenditures disclosed by electronic filers are 
# available for the current election cycle and for election cycles through 
# 2004. Operating expenditures disclosed by paper filers, excluding Form 3P, 
# are available for the current election cycle and for election cycles through 
# 2006. Please note, operating expenditures disclosed by paper filers during 
# the 2006 cycle are only available from reports filed in October 2005 and 
# later. 



oppexp <- read.csv('2016/oppexp.txt', sep = '|', header = F)


names(oppexp) <- c('CMTE_ID', 'AMNDT_IND', 'RPT_TP', 'RPT_YR',
               'TRANSACTION_PGI', 'IMAGE_NUM', 'LINE_NUM',
               'FORM_TP_CD', 'SCHED_TP_CD', 'NAME', 'CITY',
               'STATE', 'ZIP_CODE', 'TRANSACTION_DT',
               'TRANSACTION_AMT', 'TRANSACTION_PGI', 'PURPOSE',
               'CATEGORY', 'CATEGORY_DESC', 'MEMO_CD',
               'MEMO_TEXT', 'ENTITY_TP', 'SUB_ID', 'FILE_NUM',
               'TRAN_ID', 'BACK_REF_TRAN_ID')

# This file contains one record for each candidate to committee linakge.

link <- read.csv('2016/ccl.txt', sep = '|', header = F)


names(link) <- c('CAND_ID', 'CAND_ELECTION_YR', 'FEC_ELECTION_YR',
               'CMTE_ID', 'CMTE_TP', 'CMTE_DSGN', 'LINKAGE_ID')

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

committee <- read.csv('2016/cm.txt', sep = '|', header = F)

names(committee) <- c('CMTE_ID', 'CMTE_NM',  'TRES_NM', 'CMTE_ST1',
               'CMTE_ST2', 'CMTE_CITY', 'CMTE_ST', 'CMTE_ZIP',
               'CMTE_DSGN', 'CMTE_TP', 'CMTE_PTY_AFFILIATION',
               'CMTE_FILING_FREQ', 'ORG_TP', 'CONNECTED_ORG_NM',
               'CAND_ID')

# This file contains one record for each candidate who has filed the FEC 
# Form 2 for the upcoming election. In addition, this file includes candidates 
# who have active campaign committees without regard to election year and 
# candidates who are referenced as part of a draft committee or a nonconnected 
# committtee that registers as supporting or opposing a particular candidate. 
# The file contains basic information about the candidate including the 
# candidate's identification number, candidate's name, office, election year 
# and address.

candidate <- read.csv('2016/cn.txt', sep = '|', header = F)

names(candidate) <- c('CAND_ID', 'CAND_NAME', 'CAND_PTY_AFFILIATION', 
               'CAND_ELECTION_YR', 'CAND_OFFICE_ST', 'CAND_OFFICE',
               'CAND_OFFICE_DISTRICT', 'CAND_ICI', 'CAND_STATUS',
               'CAND_PCC', 'CAND_ST1', 'CAND_ST2', 'CAND_CITY',
               'CAND_ST', 'CAND_ZIP')



#####

