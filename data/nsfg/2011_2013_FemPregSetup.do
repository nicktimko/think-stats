/**************************************************************************
 |                                                                         
 |           NATIONAL SURVEY OF FAMILY GROWTH (NSFG), 2011-2013
 |
 |                     STATA Pregnancy Data Setup File
 |
 |
 |  Please edit this file as instructed below.
 |  To execute, start Stata, change to the directory containing:
 |       - this do file
 |       - the ASCII data file
 |       - the dictionary file
 |
 |  Then execute the do file (e.g., do nsfg_female_setup.do)
 |
 **************************************************************************/

set mem 30m  /* Allocating 30 megabyte(s) of RAM for Stata SE to read the
                 data file into memory. */


set more off  /* This prevents the Stata output viewer from pausing the
                 process */

/****************************************************

Section 1: File Specifications
   This section assigns local macros to the necessary files.
   Please edit:
        "data-filename" ==> The name of data file downloaded from NCHS
        "dictionary-filename" ==> The name of the dictionary file downloaded.
        "stata-datafile" ==> The name you wish to call your Stata data file.

   Note:  We assume that the raw data, dictionary, and setup (this do file) all
          reside in the same directory (or folder).  If that is not the case
          you will need to include paths as well as filenames in the macros.

********************************************************/

local raw_data "data-filename"
local dict "dictionary-filename"
local outfile "stata-datafile"

/********************************************************

Section 2: Infile Command

This section reads the raw data into Stata format.  If Section 1 was defined
properly, there should be no reason to modify this section.  These macros
should inflate automatically.

**********************************************************/

infile using `dict', using (`raw_data') clear


/*********************************************************

Section 3: Value Label Definitions
This section defines labels for the individual values of each variable.
We suggest that users do not modify this section.

**********************************************************/

label data "National Survey of Family Growth (NSFG), 2011-2013"

#delimit ;
 label define PREGORDR
   1 "1ST PREGNANCY"
   2 "2ND PREGNANCY"
   3 "3RD PREGNANCY"
   4 "4TH PREGNANCY"
   5 "5TH PREGNANCY"
   6 "6TH PREGNANCY"
   7 "7TH PREGNANCY"
   8 "8TH PREGNANCY"
   9 "9TH PREGNANCY"
  10 "10TH PREGNANCY"
  11 "11TH PREGNANCY"
  12 "12TH PREGNANCY"
  13 "13TH PREGNANCY"
  14 "14TH PREGNANCY"
  15 "15TH PREGNANCY"
  16 "16TH PREGNANCY";

 label define HOWPREG_N
  99 "Don't know";

 label define HOWPREG_P
   1 "Weeks"
   2 "Months";

 label define MOSCURRP
  99 "Don't know";

 label define NOWPRGDK
   9 "Don't know";

 label define PREGEND1
   1 "Miscarriage"
   2 "Stillbirth"
   3 "Abortion"
   4 "Ectopic or tubal pregnancy"
   5 "Live birth by Cesarean section"
   6 "Live birth by vaginal delivery"
   8 "Refused"
   9 "Don't know";

 label define PREGEND2
   1 "Miscarriage"
   2 "Stillbirth"
   3 "Abortion"
   4 "Ectopic or tubal pregnancy"
   5 "Live birth by Cesarean section"
   6 "Live birth by vaginal delivery";

 label define HOWENDDK
   1 "Live birth"
   5 "Some other way"
   8 "Refused"
   9 "Don't know";

 label define NBRNALIV
   1 "1 BABY"
   2 "2 BABIES"
   3 "3 OR MORE BABIES"
   9 "Don't know";

 label define MULTBRTH
   1 "Yes"
   5 "No";

 label define BORNALIV
   1 "1 BABY"
   2 "2 BABIES"
   3 "3 OR MORE BABIES";

 label define DATPRGEN_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define DATPRGEN_Y
9998 "Refused"
9999 "Don't know";

 label define CMOTPREG
9998 "Refused"
9999 "Don't know";

 label define AGEATEND
  98 "Refused"
  99 "Don't know";

 label define HPAGEEND
  98 "Refused"
  99 "Don't know";

 label define GESTASUN_M
  98 "Refused"
  99 "Don't know";

 label define GESTASUN_W
  98 "Refused"
  99 "Don't know";

 label define WKSGEST
9998 "Refused"
9999 "Don't know";

 label define MOSGEST
  98 "Refused"
  99 "Don't know";

 label define DK2GEST
   1 "Yes"
   5 "No";

 label define DK3GEST
   1 "Less than 3 months"
   2 "3 months or more, but less than 6 months"
   8 "Refused"
   9 "Don't know";

 label define BPA_BDSCHECK1
   0 "Baby born alive and named"
   1 "Baby unnamed and placed for adoption"
   2 "Baby unnamed and died soon after birth";

 label define BABYSEX1
   1 "Male"
   2 "Female";

 label define BIRTHWGT_LB1
   6 "6 POUNDS"
   7 "7 POUNDS"
   8 "8 POUNDS"
  99 "Don't know";

 label define BIRTHWGT_OZ1
  99 "Don't know";

 label define LOBTHWGT1
   1 "5 1/2 pounds or more"
   2 "Less than 5 1/2 pounds"
   9 "Don't know";

 label define BABYSEX2
   1 "Male"
   2 "Female"
   9 "Don't know";

 label define BIRTHWGT_LB2
   6 "6 POUNDS"
   7 "7 POUNDS"
  99 "Don't know";

 label define LOBTHWGT2
   2 "Less than 5 1/2 pounds";

 label define BABYSEX3
   1 "Male"
   2 "Female";

 label define BABYDOB_M
  98 "Refused"
  99 "Don't know";

 label define BABYDOB_Y
9998 "Refused"
9999 "Don't know";

 label define CMBABDOB
9998 "Refused"
9999 "Don't know";

 label define HPAGELB
  98 "Refused"
  99 "Don't know";

 label define BIRTHPLC
   1 "In a hospital"
   2 "In a birthing center"
   3 "In your home"
   4 "Some other place";

 label define PAYBIRTH1
   1 "Insurance"
   2 "Co-payment or out-of-pocket payment"
   3 "Medicaid"
   4 "No payment required"
   5 "Some other way"
   8 "Refused"
   9 "Don't know";

 label define PAYBIRTH2
   1 "Insurance"
   2 "Co-payment or out-of-pocket payment"
   3 "Medicaid"
   5 "Some other way";

 label define PAYBIRTH3
   1 "Insurance"
   2 "Co-payment or out-of-pocket payment"
   3 "Medicaid"
   5 "Some other way";

 label define CSECPRIM
   1 "Yes"
   5 "No";

 label define CSECMED1
   1 "Labor was taking too long"
   2 "Maternity care provider concerned that baby was too big"
   3 "Baby was in the wrong position (e.g, breech)"
   4 "Maternity care provider concerned about your health"
   5 "Maternity care provider concerned about your baby's health"
   6 "Some other medical reason"
   7 "There was no medical reason";

 label define CSECMED2
   1 "Labor was taking too long"
   2 "Maternity care provider concerned that baby was too big"
   3 "Baby was in the wrong position (e.g, breech)"
   4 "Maternity care provider concerned about your health"
   5 "Maternity care provider concerned about your baby's health"
   6 "Some other medical reason";

 label define CSECMED3
   1 "Labor was taking too long"
   2 "Maternity care provider concerned that baby was too big"
   3 "Baby was in the wrong position (e.g, breech)"
   4 "Maternity care provider concerned about your health"
   5 "Maternity care provider concerned about your baby's health"
   6 "Some other medical reason";

 label define CSECMED4
   4 "Maternity care provider concerned about your health"
   5 "Maternity care provider concerned about your baby's health"
   6 "Some other medical reason";

 label define CSECMED5
   5 "Maternity care provider concerned about your baby's health";

 label define CSECMED6
   6 "Some other medical reason";

 label define CSECPLAN
   1 "Yes"
   5 "No";

 label define KNEWPREG
  98 "Refused"
  99 "Don't know";

 label define TRIMESTR
   1 "Less than 3 months,"
   2 "At least 3 months, but less than 6 months"
   8 "Refused";

 label define PRIORSMK
   0 "None"
   1 "About one cigarette a day or less"
   2 "Just a few cigarettes a day (2-4)"
   3 "About half a pack a day (5-14)"
   4 "About a pack a day (15-24)"
   5 "About 1 1/2 packs a day (25-34)"
   6 "About 2 packs a day (35-44)"
   7 "More than 2 packs a day (45 or more)"
   8 "Refused";

 label define POSTSMKS
   1 "Yes"
   5 "No"
   8 "Refused";

 label define NPOSTSMK
   1 "About one cigarette a day or less"
   2 "Just a few cigarettes a day (2-4)"
   3 "About half a pack a day (5-14)"
   4 "About a pack a day (15-24)"
   5 "About 1 1/2 packs a day (25-34)"
   6 "About 2 packs a day (35-44)"
   7 "More than 2 packs a day (45 or more)"
   9 "Don't know";

 label define GETPRENA
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BGNPRENA
  98 "Refused"
  99 "Don't know";

 label define PNCTRIM
   1 "Less than 3 months,"
   2 "At least 3 months , but less than 6 months"
   9 "Don't know";

 label define LPNCTRI
   1 "Less than 3 months";

 label define LIVEHERE1
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define ALIVENOW1
   1 "Yes"
   5 "No";

 label define WHENLEFT_M1
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define WHENLEFT_Y1
9998 "Refused"
9999 "Don't know";

 label define CMKIDLFT1
9998 "Refused"
9999 "Don't know";

 label define WHERENOW1
   1 "With biological father"
   2 "With other relatives"
   3 "With adoptive family"
   4 "Away at school/college"
   5 "Living on own"
   6 "Other"
   9 "Don't know";

 label define LEGAGREE1
   1 "Yes"
   5 "No";

 label define PARENEND1
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define ANYNURSE1
   1 "Yes"
   5 "No"
   8 "Refused";

 label define FEDSOLID1
   1 "Yes"
   5 "No";

 label define FRSTEATD_N1
 999 "Don't know";

 label define FRSTEATD_P1
   1 "Months"
   2 "Weeks"
   3 "Days";

 label define FRSTEATD1
   0 "LESS THAN 1 MONTH"
   1 "1 MONTH"
   2 "2 MONTHS"
   3 "3 MONTHS"
   4 "4 MONTHS"
   5 "5 MONTHS"
   6 "6 MONTHS";

 label define QUITNURS1
   1 "Yes"
   5 "No";

 label define AGEQTNUR_N1
 996 "Still breastfeeding this child"
 998 "Refused"
 999 "Don't know";

 label define AGEQTNUR_P1
   1 "Months"
   2 "Weeks"
   3 "Days"
   7 "Not ascertained"
   9 "Don't know";

 label define AGEQTNUR1
   0 "LESS THAN 1 MONTH OLD"
   1 "1 MONTH OLD"
   2 "2 MONTHS OLD"
   3 "3 MONTHS OLD"
  97 "Not ascertained";

 label define LIVEHERE2
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define ALIVENOW2
   1 "Yes"
   5 "No";

 label define WHENLEFT_M2
  16 "Fall"
  99 "Don't know";

 label define LASTAGE2
 997 "Not Ascertained";

 label define WHERENOW2
   1 "With biological father"
   2 "With other relatives"
   3 "With adoptive family";

 label define LEGAGREE2
   1 "Yes"
   5 "No";

 label define PARENEND2
   1 "Yes";

 label define ANYNURSE2
   1 "Yes"
   5 "No";

 label define FEDSOLID2
   1 "Yes";

 label define FRSTEATD_P2
   1 "Months"
   2 "Weeks"
   3 "Days";

 label define FRSTEATD2
   0 "LESS THAN 1 MONTH"
   1 "1 MONTH"
   2 "2 MONTHS"
   3 "3 MONTHS"
   4 "4 MONTHS"
   5 "5 MONTHS"
   6 "6 MONTHS";

 label define QUITNURS2
   1 "Yes"
   5 "No";

 label define AGEQTNUR_P2
   1 "Months"
   2 "Weeks"
   3 "Days";

 label define AGEQTNUR2
   0 "LESS THAN 1 MONTH OLD"
   1 "1 MONTH OLD"
   2 "2 MONTHS OLD"
   3 "3 MONTHS OLD";

 label define ANYNURSE3
   1 "Yes"
   5 "No";

 label define FRSTEATD_P3
   3 "Days";

 label define FRSTEATD3
   0 "LESS THAN 1 MONTH";

 label define AGEQTNUR_P3
   1 "Months";

 label define PRGOUTCOME
   1 "LIVE BIRTH"
   2 "PREGNANCY LOSS OR ABORTION"
   3 "CURRENT PREGNANCY";

 label define OUTCOM_S
   1 "LIVE BIRTH"
   2 "PREGNANCY LOSS OR ABORTION"
   3 "CURRENT PREGNANCY";

 label define NBRNLV_S
   1 "1 BABY"
   2 "2 BABIES"
   3 "3 BABIES";

 label define CMPRGEND
9998 "Refused"
9999 "Don't know";

 label define CMENDP_S
9998 "Refused"
9999 "Don't know";

 label define CMPRGBEG
9998 "Refused"
9999 "Don't know";

 label define CMPBEG_S
9998 "Refused"
9999 "Don't know";

 label define CMLASTLB
9998 "Refused"
9999 "Don't know";

 label define CMLSTPRG
9998 "Refused"
9999 "Don't know";

 label define CMFSTPRG
9998 "Refused"
9999 "Don't know";

 label define CMPG1BEG
9998 "Refused"
9999 "Don't know";

 label define CMINTSTR
9998 "Refused"
9999 "Don't know";

 label define CMINTFIN
9998 "Refused"
9999 "Don't know";

 label define CMINTSTROP
9998 "Refused"
9999 "Don't know";

 label define CMINTSTRCR
9998 "Refused";

 label define ANYUSINT
   1 "Yes"
   5 "No";

 label define EVUSEINT
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define STOPDUSE
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define WHYSTOPD
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define WHATMETH01
   1 "No method used"
   3 "Birth control pills"
   4 "Condom"
   5 "Partner's vasectomy"
   6 "Female sterilizing operation, such as tubal sterilization and hysterectomy"
   7 "Withdrawal, pulling out"
   8 "Depo-Provera, injectables"
   9 "Hormonal implant (Norplant or Implanon)"
  10 "Rhythm or safe period by calendar"
  11 "Safe period by temperature or cervical mucus test, natural family planning"
  12 "Diaphragm"
  14 "Foam"
  15 "Jelly or cream"
  17 "Suppository, insert"
  18 "Today sponge"
  19 "IUD, coil, or loop"
  20 "Emergency contraception"
  21 "Other method"
  24 "Lunelle injectable (monthly shot)"
  25 "Contraceptive patch"
  26 "Vaginal contraceptive ring"
  98 "Refused"
  99 "Don't know";

 label define WHATMETH02
   1 "No method used"
   3 "Birth control pills"
   4 "Condom"
   5 "Partner's vasectomy"
   6 "Female sterilizing operation, such as tubal sterilization and hysterectomy"
   7 "Withdrawal, pulling out"
   8 "Depo-Provera, injectables"
   9 "Hormonal implant (Norplant or Implanon)"
  10 "Rhythm or safe period by calendar"
  11 "Safe period by temperature or cervical mucus test, natural family planning"
  12 "Diaphragm"
  13 "Female condom, vaginal pouch"
  14 "Foam"
  15 "Jelly or cream"
  17 "Suppository, insert"
  18 "Today sponge"
  19 "IUD, coil, or loop"
  20 "Emergency contraception"
  21 "Other method"
  25 "Contraceptive patch"
  26 "Vaginal contraceptive ring";

 label define WHATMETH03
   1 "No method used"
   3 "Birth control pills"
   4 "Condom"
   7 "Withdrawal, pulling out"
   8 "Depo-Provera, injectables"
  10 "Rhythm or safe period by calendar"
  11 "Safe period by temperature or cervical mucus test, natural family planning"
  13 "Female condom, vaginal pouch"
  14 "Foam"
  15 "Jelly or cream"
  17 "Suppository, insert"
  19 "IUD, coil, or loop"
  20 "Emergency contraception"
  25 "Contraceptive patch"
  26 "Vaginal contraceptive ring";

 label define WHATMETH04
   1 "No method used"
   7 "Withdrawal, pulling out"
   8 "Depo-Provera, injectables"
  14 "Foam"
  19 "IUD, coil, or loop";

 label define RESNOUSE
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define WANTBOLD
   1 "Yes"
   5 "No"
   6 "Not sure, Don't know"
   8 "Refused"
   9 "Don't know";

 label define PROBBABE
   1 "Probably yes"
   5 "Probably not"
   6 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define CNFRMNO
   1 "Correct"
   2 "Incorrect";

 label define WANTBLD2
   1 "Yes";

 label define TIMINGOK
   1 "Sooner"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define TOOSOON_N
 998 "Refused"
 999 "Don't know";

 label define TOOSOON_P
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define WTHPART1
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define WTHPART2
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define FEELINPG
   0 "VERY UNHAPPY"
   1 "1"
   2 "2"
   3 "3"
   4 "4"
   5 "5"
   6 "6"
   7 "7"
   8 "8"
   9 "9"
  10 "VERY HAPPY"
  98 "refused"
  99 "DON'T KNOW";

 label define HPWNOLD
   1 "Yes"
   5 "No"
   6 "Not sure, Don't know"
   8 "Refused"
   9 "Don't know";

 label define TIMOKHP
   1 "Sooner"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   9 "Don't know";

 label define COHPBEG
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define COHPEND
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define TELLFATH
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define WHENTELL
   1 "During the pregnancy"
   2 "After the [pregnancy ended/baby was born]"
   9 "Don't know";

 label define TRYSCALE
   0 "0"
   1 "1"
   2 "2"
   3 "3"
   4 "4"
   5 "5"
   6 "6"
   7 "7"
   8 "8"
   9 "9"
  10 "10"
  98 "Refused"
  99 "Don't know";

 label define WANTSCAL
   0 "0"
   1 "1"
   2 "2"
   3 "3"
   4 "4"
   5 "5"
   6 "6"
   7 "7"
   8 "8"
   9 "9"
  10 "10"
  98 "Refused"
  99 "Don't know";

 label define WHYPRG1
   1 "Your birth control method failed"
   2 "You did not use your birth control method properly"
   3 "Respondent wasn t using a method"
   8 "Refused"
   9 "Don't know";

 label define WHYPRG2
   1 "Your birth control method failed"
   2 "You did not use your birth control method properly";

 label define WHYNOUSE1
   1 "You did not expect to have sex"
   2 "You did not think you could get pregnant"
   3 "You didn't really mind if you got pregnant"
   4 "You were worried about the side effects of birth control"
   5 "Your male partner did not want you to use a birth control method"
   6 "Your male partner himself did not want to use a birth control method"
   7 "(IF VOLUNTEERED:)Respondent was using a method"
   8 "You could not get a method"
   9 "You were not taking, or using, your method consistently"
  99 "Don't know";

 label define WHYNOUSE2
   1 "You did not expect to have sex"
   2 "You did not think you could get pregnant"
   3 "You didn't really mind if you got pregnant"
   4 "You were worried about the side effects of birth control"
   5 "Your male partner did not want you to use a birth control method"
   6 "Your male partner himself did not want to use a birth control method"
   7 "(IF VOLUNTEERED:)Respondent was using a method"
   8 "You could not get a method"
   9 "You were not taking, or using, your method consistently";

 label define WHYNOUSE3
   1 "You did not expect to have sex"
   2 "You did not think you could get pregnant"
   3 "You didn't really mind if you got pregnant"
   4 "You were worried about the side effects of birth control"
   5 "Your male partner did not want you to use a birth control method"
   6 "Your male partner himself did not want to use a birth control method"
   8 "You could not get a method"
   9 "You were not taking, or using, your method consistently";

 label define WHYNOUSE4
   5 "Your male partner did not want you to use a birth control method"
   6 "Your male partner himself did not want to use a birth control method"
   9 "You were not taking, or using, your method consistently";

 label define WHYNOUSE5
   8 "You could not get a method"
   9 "You were not taking, or using, your method consistently";

 label define MAINOUSE
   1 "You did not expect to have sex"
   2 "You did not think you could get pregnant"
   3 "You didn't really mind if you got pregnant"
   4 "You were worried about the side effects of birth control"
   5 "Your male partner did not want you to use a birth control method"
   6 "Your male partner himself did not want to use a birth control method"
   8 "You could not get a method"
   9 "You were not taking, or using, your method consistently";

 label define OUTCOME
   1 "LIVE BIRTH"
   2 "INDUCED ABORTION"
   3 "stillbirth"
   4 "miscarriage"
   5 "ECTOPIC PREGNANCY"
   6 "CURRENT PREGNANCY";

 label define BIRTHORD
   1 "1ST BIRTH"
   2 "2ND BIRTH"
   3 "3RD BIRTH"
   4 "4TH BIRTH"
   5 "5TH BIRTH"
   6 "6TH BIRTH"
   7 "7TH BIRTH"
   8 "8TH BIRTH"
   9 "9TH BIRTH";

 label define FMAROUT5
   1 "married"
   2 "divorced"
   3 "widowed"
   4 "separated"
   5 "NEVER MARRIED";

 label define PMARPREG
   1 "yes"
   2 "No";

 label define RMAROUT6
   1 "married"
   2 "divorced"
   3 "widowed"
   4 "separated"
   5 "cohabiting"
   6 "NEVER MARRIED, NOT COHABITING";

 label define FMARCON5
   1 "married"
   2 "divorced"
   3 "widowed"
   4 "separated"
   5 "NEVER MARRIED";

 label define RMARCON6
   1 "married"
   2 "divorced"
   3 "widowed"
   4 "separated"
   5 "cohabiting"
   6 "NEVER MARRIED, NOT COHABITING";

 label define PNCAREWK
  95 "NO PRENATAL CARE FOR THIS PREGNANCY";

 label define PAYDELIV
   1 "OWN INCOME ONLY"
   2 "INSURANCE ONLY"
   3 "OWN INCOME & INSURANCE ONLY"
   4 "MEDICAID/GOVT ASSISTANCE MENTIONED AT ALL"
   5 "ALL OTHER COMBINATIONS OF PAYMENT METHODS";

 label define LBW1
   1 "YES, LOW BIRTH WEIGHT"
   2 "NO, NOT LOW BIRTH WEIGHT";

 label define LIVCHILD
   1 "Child lives with R"
   2 "Child is dead"
   3 "Child lives with adoptive parents/family"
   4 "Child lives with biological father"
   5 "Child lives with other relatives"
   6 "Child's living arrangements are other or unknown";

 label define BFEEDWKS
   0 "Less than 1 week"
 994 "STILL BREASTFEEDING THIS CHILD"
 995 "NEVER BREAST-FED THIS CHILD";

 label define OLDWANTR
   1 "LATER, OVERDUE"
   2 "RIGHT TIME"
   3 "TOO SOON, MISTIMED"
   4 "DIDN'T CARE, INDIFFERENT"
   5 "unwanted"
   6 "DON'T KNOW, NOT SURE";

 label define OLDWANTP
   1 "LATER, OVERDUE"
   2 "RIGHT TIME"
   3 "TOO SOON, MISTIMED"
   4 "DIDN'T CARE, INDIFFERENT"
   5 "UNWANTED"
   6 "DON'T KNOW, NOT SURE";

 label define WANTRESP
   1 "LATER, OVERDUE"
   2 "RIGHT TIME"
   3 "TOO SOON, MISTIMED"
   4 "DIDN'T CARE, INDIFFERENT"
   5 "UNWANTED"
   6 "DON'T KNOW, NOT SURE";

 label define WANTPART
   1 "LATER, OVERDUE"
   2 "RIGHT TIME"
   3 "TOO SOON, MISTIMED"
   4 "DIDN'T CARE, INDIFFERENT"
   5 "UNWANTED"
   6 "DON'T KNOW, NOT SURE";

 label define NEWWANTR
   1 "Later, overdue"
   2 "Right time"
   3 "Too soon: by less than 2 years"
   4 "Too soon: by 2 years or more"
   5 "Didn't care, indifferent"
   6 "Unwanted"
   7 "Don't know, not sure";

 label define AGER
  15 "15 YEARS"
  16 "16 YEARS"
  17 "17 YEARS"
  18 "18 YEARS"
  19 "19 YEARS"
  20 "20 YEARS"
  21 "21 YEARS"
  22 "22 YEARS"
  23 "23 YEARS"
  24 "24 YEARS"
  25 "25 YEARS"
  26 "26 YEARS"
  27 "27 YEARS"
  28 "28 YEARS"
  29 "29 YEARS"
  30 "30 YEARS"
  31 "31 YEARS"
  32 "32 YEARS"
  33 "33 YEARS"
  34 "34 YEARS"
  35 "35 YEARS"
  36 "36 YEARS"
  37 "37 YEARS"
  38 "38 YEARS"
  39 "39 YEARS"
  40 "40 YEARS"
  41 "41 YEARS"
  42 "42 YEARS"
  43 "43 YEARS";

 label define AGESCRN
  15 "15 years"
  16 "16 years"
  17 "17 years"
  18 "18 years"
  19 "19 years"
  20 "20 years"
  21 "21 years"
  22 "22 years"
  23 "23 years"
  24 "24 years"
  25 "25 years"
  26 "26 years"
  27 "27 years"
  28 "28 years"
  29 "29 years"
  30 "30 years"
  31 "31 years"
  32 "32 years"
  33 "33 years"
  34 "34 years"
  35 "35 years"
  36 "36 years"
  37 "37 years"
  38 "38 years"
  39 "39 years"
  40 "40 years"
  41 "41 years"
  42 "42 years"
  43 "43 years"
  44 "44 years"
  97 "Not ascertained";

 label define FMARITAL
   1 "married"
   2 "widowed"
   3 "divorced"
   4 "separated"
   5 "NEVER MARRIED";

 label define RMARITAL
   1 "CURRENTLY MARRIED"
   2 "NOT MARRIED BUT LIVING WITH OPP SEX PARTNER"
   3 "widowed"
   4 "divorced"
   5 "SEPARATED FOR REASONS OF MARITAL DISCORD"
   6 "NEVER BEEN MARRIED";

 label define EDUCAT
   9 "9TH GRADE OR LESS"
  10 "10TH GRADE"
  11 "11TH GRADE"
  12 "12TH GRADE"
  13 "1 YEAR OF COLLEGE/GRAD SCHOOL"
  14 "2 YEARS OF COLLEGE/GRAD SCHOOL"
  15 "3 YEARS OF COLLEGE/GRAD SCHOOL"
  16 "4 YEARS OF COLLEGE/GRAD SCHOOL"
  17 "5 YEARS OF COLLEGE/GRAD SCHOOL"
  18 "6 YEARS OF COLLEGE/GRAD SCHOOL"
  19 "7+ YEARS OF COLLEGE/GRAD SCHOOL";

 label define HIEDUC
   5 "9TH GRADE OR LESS"
   6 "10TH GRADE"
   7 "11TH GRADE"
   8 "12TH GRADE, NO DIPLOMA (NOR GED)"
   9 "HIGH SCHOOL GRADUATE (DIPLOMA OR GED)"
  10 "SOME COLLEGE BUT NO DEGREE"
  11 "ASSOCIATE DEGREE IN COLLEGE/UNIVERSITY"
  12 "BACHELOR'S DEGREE"
  13 "MASTER'S DEGREE"
  14 "DOCTORATE DEGREE"
  15 "PROFESSIONAL DEGREE";

 label define RACE
   1 "black"
   2 "white"
   3 "other";

 label define HISPANIC
   1 "hispanic"
   2 "NON-HISPANIC";

 label define HISPRACE
   1 "Hispanic"
   2 "Non-Hispanic White"
   3 "Non-Hispanic Black"
   4 "Non-Hispanic Other";

 label define HISPRACE2
   1 "Hispanic"
   2 "Non-Hispanic White, Single Race"
   3 "Non-Hispanic Black, Single Race"
   4 "Non-Hispanic Other or Multiple Race";

 label define RCURPREG
   1 "YES (CURRENTLY PREGNANT)"
   2 "NO (NOT CURRENTLY PREGNANT)";

 label define PREGNUM
   1 "1 PREGNANCY"
   2 "2 PREGNANCIES"
   3 "3 PREGNANCIES"
   4 "4 PREGNANCIES"
   5 "5 PREGNANCIES"
   6 "6 PREGNANCIES";

 label define PARITY
   0 "0 BABIES"
   1 "1 BABY"
   2 "2 BABIES"
   3 "3 BABIES"
   4 "4 BABIES";

 label define CURR_INS
   1 "Currently covered by private health insurance or Medi-Gap"
   2 "Currently covered by Medicaid, CHIP, or a state-sponsored health plan"
   3 "Currently covered by Medicare, military health care, or other government health care"
   4 "Currently covered only by a single-service plan, only by the Indian Health Service, or currently not covered by health insurance";

 label define PUBASSIS
   1 "YES (RECEIVED PUBLIC ASSISTANCE IN [INTERVIEW YEAR -1])"
   2 "NO (DID NOT RECEIVE PUBLIC ASSISTANCE IN [INTERVIEW YEAR -1])";

 label define LABORFOR
   1 "WORKING FULL-TIME"
   2 "WORKING PART-TIME"
   3 "WORKING-TEMP ILL/ETC"
   4 "WORKING-MATERNITY OR FAMILY LEAVE"
   5 "NOT WORKING BUT LOOKING FOR WORK"
   6 "school"
   7 "KEEPING HOUSE"
   8 "CARING FOR FAMILY"
   9 "other";

 label define RELIGION
   1 "NO RELIGION"
   2 "catholic"
   3 "protestant"
   4 "OTHER RELIGIONS";

 label define METRO
   1 "Principal city of MSA"
   2 "Other MSA"
   3 "Not MSA";

 label define BRNOUT
   1 "Yes"
   5 "No";

 label define YRSTRUS
9998 "Refused"
9999 "Don't know";

 label define PRGLNGTH_I
   0 "Questionnaire data (not imputed)"
   1 "Model-based imputation"
   2 "Logical imputation";

 label define OUTCOME_I
   0 "Questionnaire data (not imputed)"
   1 "Model-based imputation"
   2 "LOGICAL IMPUTATION";

 label define BIRTHORD_I
   0 "Questionnaire data (not imputed)"
   2 "Logical imputation";

 label define DATEND_I
   0 "Questionnaire data (not imputed)"
   1 "Model-based imputation"
   2 "Logical imputation";

 label define AGEPREG_I
   0 "Questionnaire data (not imputed)"
   1 "Model-based imputation"
   2 "LOGICAL IMPUTATION";

 label define DATECON_I
   0 "Questionnaire data (not imputed)"
   1 "Model-based imputation"
   2 "LOGICAL IMPUTATION";

 label define AGECON_I
   0 "Questionnaire data (not imputed)"
   1 "Model-based imputation"
   2 "LOGICAL IMPUTATION";

 label define FMAROUT5_I
   0 "Questionnaire data (not imputed)"
   1 "Model-based imputation";

 label define PMARPREG_I
   0 "Questionnaire data (not imputed)"
   1 "Model-based imputation";

 label define RMAROUT6_I
   0 "Questionnaire data (not imputed)"
   1 "Model-based imputation"
   2 "LOGICAL IMPUTATION";

 label define FMARCON5_I
   0 "Questionnaire data (not imputed)"
   1 "Model-based imputation";

 label define RMARCON6_I
   0 "Questionnaire data (not imputed)"
   1 "Model-based imputation"
   2 "LOGICAL IMPUTATION";

 label define LEARNPRG_I
   0 "Questionnaire data (not imputed)"
   1 "Model-based imputation"
   2 "Logical imputation";

 label define PNCAREWK_I
   0 "Questionnaire data (not imputed)"
   1 "Model-based imputation"
   2 "Logical imputation";

 label define PAYDELIV_I
   0 "Questionnaire data (not imputed)"
   1 "Model-based imputation";

 label define LBW1_I
   0 "Questionnaire data (not imputed)"
   1 "Model-based imputation"
   2 "Logical imputation";

 label define LIVCHILD_I
   0 "Questionnaire data (not imputed)"
   2 "Logical imputation";

 label define BFEEDWKS_I
   0 "Questionnaire data (not imputed)"
   1 "Model-based imputation"
   2 "Logical imputation";

 label define OLDWANTR_I
   0 "Questionnaire data (not imputed)"
   1 "Model-based imputation";

 label define OLDWANTP_I
   0 "Questionnaire data (not imputed)"
   1 "Model-based imputation"
   2 "LOGICAL IMPUTATION";

 label define WANTRESP_I
   0 "Questionnaire data (not imputed)"
   1 "Model-based imputation";

 label define WANTPART_I
   0 "Questionnaire data (not imputed)"
   1 "Model-based imputation";

 label define TOOSOON_I
   0 "Questionnaire data (not imputed)"
   1 "Model-based imputation";

 label define NEWWANTR_I
   0 "Questionnaire data (not imputed)"
   1 "Model-based imputation"
   2 "LOGICAL IMPUTATION";

 label define AGER_I
   0 "Questionnaire data (not imputed)";

 label define FMARITAL_I
   0 "Questionnaire data (not imputed)";

 label define RMARITAL_I
   0 "Questionnaire data (not imputed)";

 label define EDUCAT_I
   0 "Questionnaire data (not imputed)"
   1 "Model-based imputation";

 label define HIEDUC_I
   0 "Questionnaire data (not imputed)"
   2 "Logical imputation";

 label define RACE_I
   0 "Questionnaire data (not imputed)"
   1 "Model-based imputation";

 label define HISPANIC_I
   0 "Questionnaire data (not imputed)"
   1 "Model-based imputation";

 label define HISPRACE_I
   0 "Questionnaire data (not imputed)"
   2 "LOGICAL IMPUTATION";

 label define HISPRACE2_I
   0 "Questionnaire data (not imputed)"
   2 "LOGICAL IMPUTATION";

 label define RCURPREG_I
   0 "Questionnaire data (not imputed)"
   2 "Logical imputation";

 label define PREGNUM_I
   0 "Questionnaire data (not imputed)";

 label define PARITY_I
   0 "Questionnaire data (not imputed)"
   2 "Logical imputation";

 label define CURR_INS_I
   0 "Questionnaire data (not imputed)"
   1 "Model-based imputation";

 label define PUBASSIS_I
   0 "Questionnaire data (not imputed)"
   1 "Model-based imputation";

 label define POVERTY_I
   0 "Questionnaire data (not imputed)"
   1 "Model-based imputation";

 label define LABORFOR_I
   0 "Questionnaire data (not imputed)";

 label define RELIGION_I
   0 "Questionnaire data (not imputed)"
   1 "Model-based imputation";

 label define METRO_I
   0 "Questionnaire data (not imputed)";

 label define SECU
   1 "1"
   2 "2"
   3 "3"
   4 "4";

 label values PREGORDR PREGORDR ;
 label values HOWPREG_N HOWPREG_N ;
 label values HOWPREG_P HOWPREG_P ;
 label values MOSCURRP MOSCURRP ;
 label values NOWPRGDK NOWPRGDK ;
 label values PREGEND1 PREGEND1 ;
 label values PREGEND2 PREGEND2 ;
 label values HOWENDDK HOWENDDK ;
 label values NBRNALIV NBRNALIV ;
 label values MULTBRTH MULTBRTH ;
 label values BORNALIV BORNALIV ;
 label values DATPRGEN_M DATPRGEN_M ;
 label values DATPRGEN_Y DATPRGEN_Y ;
 label values CMOTPREG CMOTPREG ;
 label values AGEATEND AGEATEND ;
 label values HPAGEEND HPAGEEND ;
 label values GESTASUN_M GESTASUN_M ;
 label values GESTASUN_W GESTASUN_W ;
 label values WKSGEST WKSGEST ;
 label values MOSGEST MOSGEST ;
 label values DK2GEST DK2GEST ;
 label values DK3GEST DK3GEST ;
 label values BPA_BDSCHECK1 BPA_BDSCHECK1 ;
 label values BABYSEX1 BABYSEX1 ;
 label values BIRTHWGT_LB1 BIRTHWGT_LB1 ;
 label values BIRTHWGT_OZ1 BIRTHWGT_OZ1 ;
 label values LOBTHWGT1 LOBTHWGT1 ;
 label values BABYSEX2 BABYSEX2 ;
 label values BIRTHWGT_LB2 BIRTHWGT_LB2 ;
 label values LOBTHWGT2 LOBTHWGT2 ;
 label values BABYSEX3 BABYSEX3 ;
 label values BABYDOB_M BABYDOB_M ;
 label values BABYDOB_Y BABYDOB_Y ;
 label values CMBABDOB CMBABDOB ;
 label values HPAGELB HPAGELB ;
 label values BIRTHPLC BIRTHPLC ;
 label values PAYBIRTH1 PAYBIRTH1 ;
 label values PAYBIRTH2 PAYBIRTH2 ;
 label values PAYBIRTH3 PAYBIRTH3 ;
 label values CSECPRIM CSECPRIM ;
 label values CSECMED1 CSECMED1 ;
 label values CSECMED2 CSECMED2 ;
 label values CSECMED3 CSECMED3 ;
 label values CSECMED4 CSECMED4 ;
 label values CSECMED5 CSECMED5 ;
 label values CSECMED6 CSECMED6 ;
 label values CSECPLAN CSECPLAN ;
 label values KNEWPREG KNEWPREG ;
 label values TRIMESTR TRIMESTR ;
 label values PRIORSMK PRIORSMK ;
 label values POSTSMKS POSTSMKS ;
 label values NPOSTSMK NPOSTSMK ;
 label values GETPRENA GETPRENA ;
 label values BGNPRENA BGNPRENA ;
 label values PNCTRIM PNCTRIM ;
 label values LPNCTRI LPNCTRI ;
 label values LIVEHERE1 LIVEHERE1 ;
 label values ALIVENOW1 ALIVENOW1 ;
 label values WHENLEFT_M1 WHENLEFT_M1 ;
 label values WHENLEFT_Y1 WHENLEFT_Y1 ;
 label values CMKIDLFT1 CMKIDLFT1 ;
 label values WHERENOW1 WHERENOW1 ;
 label values LEGAGREE1 LEGAGREE1 ;
 label values PARENEND1 PARENEND1 ;
 label values ANYNURSE1 ANYNURSE1 ;
 label values FEDSOLID1 FEDSOLID1 ;
 label values FRSTEATD_N1 FRSTEATD_N1 ;
 label values FRSTEATD_P1 FRSTEATD_P1 ;
 label values FRSTEATD1 FRSTEATD1 ;
 label values QUITNURS1 QUITNURS1 ;
 label values AGEQTNUR_N1 AGEQTNUR_N1 ;
 label values AGEQTNUR_P1 AGEQTNUR_P1 ;
 label values AGEQTNUR1 AGEQTNUR1 ;
 label values LIVEHERE2 LIVEHERE2 ;
 label values ALIVENOW2 ALIVENOW2 ;
 label values WHENLEFT_M2 WHENLEFT_M2 ;
 label values LASTAGE2 LASTAGE2 ;
 label values WHERENOW2 WHERENOW2 ;
 label values LEGAGREE2 LEGAGREE2 ;
 label values PARENEND2 PARENEND2 ;
 label values ANYNURSE2 ANYNURSE2 ;
 label values FEDSOLID2 FEDSOLID2 ;
 label values FRSTEATD_P2 FRSTEATD_P2 ;
 label values FRSTEATD2 FRSTEATD2 ;
 label values QUITNURS2 QUITNURS2 ;
 label values AGEQTNUR_P2 AGEQTNUR_P2 ;
 label values AGEQTNUR2 AGEQTNUR2 ;
 label values ANYNURSE3 ANYNURSE3 ;
 label values FRSTEATD_P3 FRSTEATD_P3 ;
 label values FRSTEATD3 FRSTEATD3 ;
 label values AGEQTNUR_P3 AGEQTNUR_P3 ;
 label values PRGOUTCOME PRGOUTCOME ;
 label values OUTCOM_S OUTCOM_S ;
 label values NBRNLV_S NBRNLV_S ;
 label values CMPRGEND CMPRGEND ;
 label values CMENDP_S CMENDP_S ;
 label values CMPRGBEG CMPRGBEG ;
 label values CMPBEG_S CMPBEG_S ;
 label values CMLASTLB CMLASTLB ;
 label values CMLSTPRG CMLSTPRG ;
 label values CMFSTPRG CMFSTPRG ;
 label values CMPG1BEG CMPG1BEG ;
 label values CMINTSTR CMINTSTR ;
 label values CMINTFIN CMINTFIN ;
 label values CMINTSTROP CMINTSTROP ;
 label values CMINTSTRCR CMINTSTRCR ;
 label values ANYUSINT ANYUSINT ;
 label values EVUSEINT EVUSEINT ;
 label values STOPDUSE STOPDUSE ;
 label values WHYSTOPD WHYSTOPD ;
 label values WHATMETH01 WHATMETH01 ;
 label values WHATMETH02 WHATMETH02 ;
 label values WHATMETH03 WHATMETH03 ;
 label values WHATMETH04 WHATMETH04 ;
 label values RESNOUSE RESNOUSE ;
 label values WANTBOLD WANTBOLD ;
 label values PROBBABE PROBBABE ;
 label values CNFRMNO CNFRMNO ;
 label values WANTBLD2 WANTBLD2 ;
 label values TIMINGOK TIMINGOK ;
 label values TOOSOON_N TOOSOON_N ;
 label values TOOSOON_P TOOSOON_P ;
 label values WTHPART1 WTHPART1 ;
 label values WTHPART2 WTHPART2 ;
 label values FEELINPG FEELINPG ;
 label values HPWNOLD HPWNOLD ;
 label values TIMOKHP TIMOKHP ;
 label values COHPBEG COHPBEG ;
 label values COHPEND COHPEND ;
 label values TELLFATH TELLFATH ;
 label values WHENTELL WHENTELL ;
 label values TRYSCALE TRYSCALE ;
 label values WANTSCAL WANTSCAL ;
 label values WHYPRG1 WHYPRG1 ;
 label values WHYPRG2 WHYPRG2 ;
 label values WHYNOUSE1 WHYNOUSE1 ;
 label values WHYNOUSE2 WHYNOUSE2 ;
 label values WHYNOUSE3 WHYNOUSE3 ;
 label values WHYNOUSE4 WHYNOUSE4 ;
 label values WHYNOUSE5 WHYNOUSE5 ;
 label values MAINOUSE MAINOUSE ;
 label values OUTCOME OUTCOME ;
 label values BIRTHORD BIRTHORD ;
 label values FMAROUT5 FMAROUT5 ;
 label values PMARPREG PMARPREG ;
 label values RMAROUT6 RMAROUT6 ;
 label values FMARCON5 FMARCON5 ;
 label values RMARCON6 RMARCON6 ;
 label values PNCAREWK PNCAREWK ;
 label values PAYDELIV PAYDELIV ;
 label values LBW1 LBW1 ;
 label values LIVCHILD LIVCHILD ;
 label values BFEEDWKS BFEEDWKS ;
 label values OLDWANTR OLDWANTR ;
 label values OLDWANTP OLDWANTP ;
 label values WANTRESP WANTRESP ;
 label values WANTPART WANTPART ;
 label values NEWWANTR NEWWANTR ;
 label values AGER AGER ;
 label values AGESCRN AGESCRN ;
 label values FMARITAL FMARITAL ;
 label values RMARITAL RMARITAL ;
 label values EDUCAT EDUCAT ;
 label values HIEDUC HIEDUC ;
 label values RACE RACE ;
 label values HISPANIC HISPANIC ;
 label values HISPRACE HISPRACE ;
 label values HISPRACE2 HISPRACE2 ;
 label values RCURPREG RCURPREG ;
 label values PREGNUM PREGNUM ;
 label values PARITY PARITY ;
 label values CURR_INS CURR_INS ;
 label values PUBASSIS PUBASSIS ;
 label values LABORFOR LABORFOR ;
 label values RELIGION RELIGION ;
 label values METRO METRO ;
 label values BRNOUT BRNOUT ;
 label values YRSTRUS YRSTRUS ;
 label values PRGLNGTH_I PRGLNGTH_I ;
 label values OUTCOME_I OUTCOME_I ;
 label values BIRTHORD_I BIRTHORD_I ;
 label values DATEND_I DATEND_I ;
 label values AGEPREG_I AGEPREG_I ;
 label values DATECON_I DATECON_I ;
 label values AGECON_I AGECON_I ;
 label values FMAROUT5_I FMAROUT5_I ;
 label values PMARPREG_I PMARPREG_I ;
 label values RMAROUT6_I RMAROUT6_I ;
 label values FMARCON5_I FMARCON5_I ;
 label values RMARCON6_I RMARCON6_I ;
 label values LEARNPRG_I LEARNPRG_I ;
 label values PNCAREWK_I PNCAREWK_I ;
 label values PAYDELIV_I PAYDELIV_I ;
 label values LBW1_I LBW1_I ;
 label values LIVCHILD_I LIVCHILD_I ;
 label values BFEEDWKS_I BFEEDWKS_I ;
 label values OLDWANTR_I OLDWANTR_I ;
 label values OLDWANTP_I OLDWANTP_I ;
 label values WANTRESP_I WANTRESP_I ;
 label values WANTPART_I WANTPART_I ;
 label values TOOSOON_I TOOSOON_I ;
 label values NEWWANTR_I NEWWANTR_I ;
 label values AGER_I AGER_I ;
 label values FMARITAL_I FMARITAL_I ;
 label values RMARITAL_I RMARITAL_I ;
 label values EDUCAT_I EDUCAT_I ;
 label values HIEDUC_I HIEDUC_I ;
 label values RACE_I RACE_I ;
 label values HISPANIC_I HISPANIC_I ;
 label values HISPRACE_I HISPRACE_I ;
 label values HISPRACE2_I HISPRACE2_I ;
 label values RCURPREG_I RCURPREG_I ;
 label values PREGNUM_I PREGNUM_I ;
 label values PARITY_I PARITY_I ;
 label values CURR_INS_I CURR_INS_I ;
 label values PUBASSIS_I PUBASSIS_I ;
 label values POVERTY_I POVERTY_I ;
 label values LABORFOR_I LABORFOR_I ;
 label values RELIGION_I RELIGION_I ;
 label values METRO_I METRO_I ;
 label values SECU SECU ;

#delimit cr

/********************************************************************

 Section 4: Save Outfile

  This section saves out a Stata system format file.  There is no reason to
  modify it if the macros in Section 1 were specified correctly.

*********************************************************************/

save `outfile', replace
