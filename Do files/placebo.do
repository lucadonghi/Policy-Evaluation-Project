//PLACEBO TEST FOR COMMON TREND ASSUMPTION UK
import delimited "italy_uk_plus.csv", clear 
gen lnprice=log(price)
gen after = (year>2015)
gen tr_country = (country=="Italy")
gen causaleffect = after*tr_country
tabulate year, generate(y)

reg lnprice causaleffect tr_country y2 datavolumeincludedmbmonth smartphoneincludedintheoffer if (year==2015 | year==2016) & outlier==0 

//PLACEBO TEST FOR COMMON TREND ASSUMPTION IRELAND
import delimited "italy_ireland_plus.csv", clear 
gen lnprice=log(price)
gen after = (year>2015)
gen tr_country = (country=="Italy")
gen causaleffect = after*tr_country
tabulate year, generate(y)

reg lnprice causaleffect tr_country y2 datavolumeincludedmbmonth smartphoneincludedintheoffer if (year==2015 | year==2016) & outlier==0 


//PLACEBO TEST FOR COMMON TREND ASSUMPTION FINLAND
import delimited "italy_finland_plus.csv", clear 
gen lnprice=log(price)
gen after = (year>2015)
gen tr_country = (country=="Italy")
gen causaleffect = after*tr_country
tabulate year, generate(y)

reg lnprice causaleffect tr_country y2 smartphoneincludedintheoffer if (year==2015 | year==2016) & outlier==0 
