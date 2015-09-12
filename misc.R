options(stringsAsFactors = FALSE)


x1 <- read.csv('2014/itcont.txt', sep = '|', header = F)

names(x1) <- c('CMTE_ID', 'AMNDT_IND', 'RPT_TP', 'TRANSACTION_PGI',
               'IMAGE_NUM', 'TRANSACTION_TP', 'ENTITY_TP', 'NAME', 
               'CITY', 'STATE', 'ZIP_CODE', 'EMPLOYER', 'OCCUPATION',
               'TRANSACTION_DT', 'TRANSACTION_AMT', 'OTHER_ID',
               'TRAN_ID', 'FILE_NUM', 'MEMO_CD', 'MEMO_TEXT', 'SUB_ID')



pos_x1 <- x1[x1$TRANSACTION_AMT > 0, ]

x2 <- read.csv('2014/itoth.txt', sep = '|', header = F)

names(x2) <- c('CMTE_ID', 'AMNDT_IND', 'RPT_TP', 'TRANSACTION_PGI',
               'IMAGE_NUM', 'TRANSACTION_TP', 'ENTITY_TP', 'NAME',
               'CITY', 'STATE', 'ZIP_CODE', 'EMPLOYER',
               'OCCUPATION', 'TRANSACTION_DT', 'TRANSACTION_AMT',
               'OTHER_ID', 'TRAN_ID', 'FILE_NUM', 'MEMO_CD',
               'MEMO_TEXT', 'SUB_ID')


x3 <- read.csv('2014/itpas2.txt', sep = '|', header = F)


names(x3) <- c('CMTE_ID', 'AMNDT_IND', 'RPT_TP', 'TRANSACTION_PGI',
               'IMAGE_NUM', 'TRANSACTION_TP', 'ENTITY_TP',
               'NAME', 'CITY', 'STATE', 'ZIP_CODE',
               'EMPLOYER', 'OCCUPATION', 'TRANSACTION_DT',
               'TRANSACTION_AMT', 'OTHER_ID', 'CAND_ID', 'TRAN_ID',
               'FILE_NUM', 'MEMO_CD', 'MEMO_TEXT', 'SUB_ID')

x4 <- read.csv('2014/oppexp.txt', sep = '|', header = F)


names(x4) <- c('CMTE_ID', 'AMNDT_IND', 'RPT_TP', 'RPT_YR',
               'TRANSACTION_PGI', 'IMAGE_NUM', 'LINE_NUM',
               'FORM_TP_CD', 'SCHED_TP_CD', 'NAME', 'CITY',
               'STATE', 'ZIP_CODE', 'TRANSACTION_DT',
               'TRANSACTION_AMT', 'TRANSACTION_PGI', 'PURPOSE',
               'CATEGORY', 'CATEGORY_DESC', 'MEMO_CD',
               'MEMO_TEXT', 'ENTITY_TP', 'SUB_ID', 'FILE_NUM',
               'TRAN_ID', 'BACK_REF_TRAN_ID')


x5 <- read.csv('2014/ccl.txt', sep = '|', header = F)


names(x5) <- c('CAND_ID', 'CAND_ELECTION_YR', 'FEC_ELECTION_YR',
               'CMTE_ID', 'CMTE_TP', 'CMTE_DSGN', 'LINKAGE_ID')


x6 <- read.csv('2014/cm.txt', sep = '|', header = F)

names(x6) <- c('CMTE_ID', 'CMTE_NM',  'TRES_NM', 'CMTE_ST1',
               'CMTE_ST2', 'CMTE_CITY', 'CMTE_ST', 'CMTE_ZIP',
               'CMTE_DSGN', 'CMTE_TP', 'CMTE_PTY_AFFILIATION',
               'CMTE_FILING_FREQ', 'ORG_TP', 'CONNECTED_ORG_NM',
               'CAND_ID')

x7 <- read.csv('2014/cn.txt', sep = '|', header = F)

names(x7) <- c('CAND_ID', 'CAND_NAME', 'CAND_PTY_AFFILIATION', 
               'CAND_ELECTION_YR', 'CAND_OFFICE_ST', 'CAND_OFFICE',
               'CAND_OFFICE_DISTRICT', 'CAND_ICI', 'CAND_STATUS',
               'CAND_PCC', 'CAND_ST1', 'CAND_ST2', 'CAND_CITY',
               'CAND_ST', 'CAND_ZIP')


#


fec <- list(x1 = head(x1), 
            x2 = head(x2), 
            x3 = head(x3),
            x4 = head(x4),
            x5 = head(x5),
            x6 = head(x6),
            x7 = head(x7))

schema <- Learn.Schema(fec)





library(igraph)


s <- Learn.Schema(list(x1, x2, x3, x4, x5, x6, x7))





###








#

