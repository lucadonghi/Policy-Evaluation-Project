//DIFFERENCE IN DIFFERENCES ITALY UK ON PRICES - treatment anticipation 2018
import delimited "italy_uk_plus.csv", clear 
gen lnprice=log(price)
gen after = (year>2017)
gen tr_country = (country=="Italy")
gen causaleffect = after*tr_country
tabulate year, generate(y)

reg lnprice causaleffect tr_country y2 y4 y5 gdpgrowthrate datavolumeincludedmbmonth smartphoneincludedintheoffer if (year==2015 | year==2016 | year == 2018 | year==2019) & outlier==0 & (basket!=5 & basket != 6)

reg lnprice causaleffect tr_country y2 y4 y5 gdpgrowthrate datavolumeincludedmbmonth smartphoneincludedintheoffer if (year==2015 | year==2016 | year == 2018 | year==2019) & outlier==0 


//DIFFERENCE IN DIFFERENCES ITALY IRELAND ON PRICES - treatment anticipation 2018
import delimited "italy_ireland_plus.csv", clear 
gen lnprice=log(price)
gen after = (year>2017)
gen tr_country = (country=="Italy")
gen causaleffect = after*tr_country
tabulate year, generate(y)

reg lnprice causaleffect tr_country y2 y4 y5 gdpgrowthrate datavolumeincludedmbmonth smartphoneincludedintheoffer if (year==2015 | year==2016 | year == 2018 | year==2019) & outlier==0 & (basket!=5 & basket != 6)

reg lnprice causaleffect tr_country y2 y4 y5 gdpgrowthrate datavolumeincludedmbmonth smartphoneincludedintheoffer if (year==2015 | year==2016 | year == 2018 | year==2019) & outlier==0 

//DIFFERENCE IN DIFFERENCES ITALY FINLAND ON PRICES - treatment anticipation 2018
import delimited "italy_finland_plus.csv", clear 
gen lnprice=log(price)
gen after = (year>2017)
gen tr_country = (country=="Italy")
gen causaleffect = after*tr_country
tabulate year, generate(y)

reg lnprice causaleffect tr_country y2 y4 y5 gdpgrowthrate smartphoneincludedintheoffer if (year==2015 | year==2016 | year == 2018 | year==2019) & outlier==0 & (basket!=5 & basket != 6)

reg lnprice causaleffect tr_country y2 y4 y5 gdpgrowthrate smartphoneincludedintheoffer if (year==2015 | year==2016 | year == 2018 | year==2019) & outlier==0 

