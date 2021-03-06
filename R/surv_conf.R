#
# Configurations for different studies
# 

# For PISA
pisa_conf <- list(variables = list(pvlabelpref = "PV",
                                   pvlabelsuff = "READ",
                                   weightFinal = "W_FSTUWT",
                                   weightBRR = "W_FSTR"),
                  parameters = list(cutoffs = c(357.77, 420.07, 482.38, 544.68, 606.99, 669.30),
                                    percentiles = c(5, 10, 25, 75, 90, 95),
                                    PVreps = 5,
                                    BRRreps = 80,
                                    weights = "BRR",
                                    replication_scheme = 'pisa')
)

# For PISA_2015
pisa2015_conf <- list(variables = list(pvlabelpref = "PV",
                                   pvlabelsuff = "READ",
                                   weightFinal = "W_FSTUWT",
                                   weightBRR = "W_FSTURWT"),
                  parameters = list(cutoffs = c(357.77, 420.07, 482.38, 544.68, 606.99, 669.30),
                                    percentiles = c(5, 10, 25, 75, 90, 95),
                                    PVreps = 10,
                                    BRRreps = 80,
                                    weights = "BRR",
                                    replication_scheme = 'pisa')
)

# For PIAAC
# http://vs-web-fs-1.oecd.org/piaac/puf-data/SPSS/
piaac_conf <- list(variables = list(pvlabelpref = "PV",
                                  pvlabelsuff = "",
                                  weightFinal = "SPFWT0",
                                  weightBRR = "SPFWT",
                                  countryID = "CNTRYID"),
                 parameters = list(cutoffs = c(175.99, 225.99, 275.99, 325.99, 375.99),
                                   percentiles = c(5, 10, 25, 75, 90, 95),
                                   PVreps = 10,
                                   BRRreps = 80,
                                   weights = "mixed_piaac",
                                   replication_scheme = 'piaac'),
                 input = list(type = "OECD",
                              prefixes = "prg",
                              type_part = c(-11, -9),
                              cnt_part = c(-8, -6))
)

# For TIMSS
timss4_conf <- list(variables = list(pvlabelpref="BSMMAT", 
                                    pvlabelsuff = "",
                                    weight="TOTWGT",
                                    jackknifeZone = "JKZONE",
                                    jackknifeRep = "JKREP"),
                   parameters = list(cutoffs = c(400, 475, 550, 625),
                                     percentiles = c(5, 10, 25, 75, 90, 95),
                                     weights = "JK",
                                     PVreps = 5),
                   input = list(type = "IEA",
                                prefixes = c("asg", "ash", "acg", "ast", "atg"),
                                student = "asg",
                                student_colnames1 = c("IDCNTRY", "IDSCHOOL", "IDCLASS", "IDSTUD"),
                                student_colnames2 = c("JKREP","JKZONE", "HOUWGT", "SENWGT", "TOTWGT"),
                                student_pattern = "^AS.*0[0-5]$", 
                                home = "ash",
                                home_colnames = c("IDCNTRY", "IDSTUD"),
                                school = "acg",
                                school_colnames = c("IDCNTRY", "IDSCHOOL", "SCHWGT"),
                                teacher = c("ast","atg"),
                                teacher_colnames = c("IDCNTRY", "IDTEALIN"),
                                student_ids = c("IDCNTRY", "IDSTUD"),
                                school_ids = c("IDCNTRY", "IDSCHOOL"),
                                type_part = c(-11, -9),
                                cnt_part = c(-8, -6))
)
timss8_conf <- list(variables = list(pvlabelpref="BSMMAT", 
                                     pvlabelsuff = "",
                                     weight="TOTWGT",
                                     jackknifeZone = "JKZONE",
                                     jackknifeRep = "JKREP"),
                    parameters = list(cutoffs = c(400, 475, 550, 625),
                                      percentiles = c(5, 10, 25, 75, 90, 95),
                                      weights = "JK",
                                      PVreps = 5),
                    input = list(type = "IEA",
                                 prefixes = c("bsg", "bcg", "bst", "btm", "bts"),
                                 student = "bsg",
                                 student_colnames1 = c("IDCNTRY", "IDSCHOOL", "IDCLASS", "IDSTUD"),
                                 student_colnames2 = c("JKREP","JKZONE", "HOUWGT", "SENWGT", "TOTWGT"),
                                 student_pattern = "^BS.*0[0-5]$", 
                                 school = "bcg",
                                 school_colnames = c("IDCNTRY", "IDSCHOOL", "SCHWGT"),
                                 teacher = c("bst","btm"),
                                 teacher_colnames = c("IDCNTRY", "IDTEALIN"),
                                 student_ids = c("IDCNTRY", "IDSTUD"),
                                 school_ids = c("IDCNTRY", "IDSCHOOL"),
                                 type_part = c(-11, -9),
                                 cnt_part = c(-8, -6))
)

# For PIRLS
pirls_conf <- list(variables = list(pvlabelpref = "ASRREA0",
                                  pvlabelsuff = "",
                                  weight="TOTWGT",
                                  jackknifeZone = "JKZONE",
                                  jackknifeRep = "JKREP"),
                 parameters = list(cutoffs = c(400, 475, 550, 625),
                                   percentiles = c(5, 10, 25, 75, 90, 95),
                                   weights = "JK",
                                   PVreps = 5),
                 input = list(type = "IEA",
                              prefixes = c("asg", "ash", "ast", "acg", "atg"),
                              student = "asg",
                              student_colnames1 = c("IDCNTRY", "IDSCHOOL", "IDCLASS", "IDSTUD"),
                              student_colnames2 = c("JKREP","JKZONE", "HOUWGT", "SENWGT", "TOTWGT"),
                              student_pattern = "^ASR.*0[0-5]$", 
                              home = "ash",
                              home_colnames = c("IDCNTRY", "IDSTUD"),
                              school = "acg",
                              school_colnames = c("IDCNTRY", "IDSCHOOL", "SCHWGT"),
                              teacher = c("ast","atg"),
                              teacher_colnames = c("IDCNTRY", "IDTEALIN"),
                              student_ids = c("IDCNTRY", "IDSTUD"),
                              school_ids = c("IDCNTRY", "IDSCHOOL"),
                              type_part = c(-11, -9),
                              cnt_part = c(-8, -6))
)

# ICILS
icils_conf <- list(variables = list(pvlabelpref="BSMMAT", 
                                     pvlabelsuff = "",
                                     weight="TOTWGTS",
                                     jackknifeZone = "JKZONES",
                                     jackknifeRep = "JKREPS"),
                    parameters = list(cutoffs = c(400, 475, 550, 625),
                                      percentiles = c(5, 10, 25, 75, 90, 95),
                                      weights = "JK",
                                      PVreps = 5),
                    input = list(type = "IEA",
                                 prefixes =c("bsg", "bcg", "btg"),
                                 student = "bsg",
                                 student_colnames1 = c("IDCNTRY", "IDSCHOOL", "IDSTUD"),
                                 student_colnames2 = c("JKREPS","JKZONES", "TOTWGTS"),
                                 student_pattern = "^PV[0-5]CIL$", 
                                 school = "bcg",
                                 school_colnames = c("IDCNTRY", "IDSCHOOL", "TOTWGTC"),
                                 teacher = c("btg","btg"),
                                 teacher_colnames = c("IDCNTRY", "IDTEALIN"),
                                 student_ids = c("IDCNTRY", "IDSTUD"),
                                 school_ids = c("IDCNTRY", "IDSCHOOL"),
                                 type_part = c(-11, -9),
                                 cnt_part = c(-8, -6))
)

