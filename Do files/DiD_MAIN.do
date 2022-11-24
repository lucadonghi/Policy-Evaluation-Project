//DIFFERENCE IN DIFFERENCES ITALY UK ON PRICES
import delimited "italy_uk_plus.csv", clear 
gen lnprice=log(price)
gen after = (year>2018)
gen tr_country = (country=="Italy")
gen causaleffect = after*tr_country
tabulate year, generate(y)

reg lnprice causaleffect tr_country y2 y5 gdpgrowthrate datavolumeincludedmbmonth smartphoneincludedintheoffer if (year==2015 | year==2016 | year==2019) & outlier==0 

reg lnprice causaleffect tr_country y2 y5 gdpgrowthrate datavolumeincludedmbmonth smartphoneincludedintheoffer if (year==2015 | year==2016 | year==2019) & outlier==0 & (basket==1)

reg lnprice causaleffect tr_country y2 y5 gdpgrowthrate datavolumeincludedmbmonth smartphoneincludedintheoffer if (year==2015 | year==2016 | year==2019) & outlier==0 & (basket==2)

reg lnprice causaleffect tr_country y2 y5 gdpgrowthrate datavolumeincludedmbmonth smartphoneincludedintheoffer if (year==2015 | year==2016 | year==2019) & outlier==0 & (basket==3)

reg lnprice causaleffect tr_country y2 y5 gdpgrowthrate datavolumeincludedmbmonth smartphoneincludedintheoffer if (year==2015 | year==2016 | year==2019) & outlier==0 & (basket==4)

reg lnprice causaleffect tr_country y2 y5 datavolumeincludedmbmonth smartphoneincludedintheoffer if (year==2015 | year==2016 | year==2019) & outlier==0 & (basket==5)

//main
reg lnprice causaleffect tr_country y2 y5 gdpgrowthrate datavolumeincludedmbmonth smartphoneincludedintheoffer if (year==2015 | year==2016 | year==2019) & outlier==0 & (basket==1 | basket==2 | basket==3| basket==4)


//DIFFERENCE IN DIFFERENCES ITALY IRELAND ON PRICES
import delimited "italy_ireland_plus.csv", clear 
gen lnprice=log(price)
gen after = (year>2018)
gen tr_country = (country=="Italy")
gen causaleffect = after*tr_country
tabulate year, generate(y)

reg lnprice causaleffect tr_country y2 y5 gdpgrowthrate datavolumeincludedmbmonth smartphoneincludedintheoffer if (year==2015 | year==2016 | year==2019) & outlier==0 

reg lnprice causaleffect tr_country y2 y5 gdpgrowthrate datavolumeincludedmbmonth smartphoneincludedintheoffer if (year==2015 | year==2016 | year==2019) & outlier==0 & (basket==1)

reg lnprice causaleffect tr_country y2 y5 gdpgrowthrate datavolumeincludedmbmonth smartphoneincludedintheoffer if (year==2015 | year==2016 | year==2019) & outlier==0 & (basket==2)

reg lnprice causaleffect tr_country y2 y5 gdpgrowthrate datavolumeincludedmbmonth smartphoneincludedintheoffer if (year==2015 | year==2016 | year==2019) & outlier==0 & (basket==3)

reg lnprice causaleffect tr_country y2 y5 gdpgrowthrate datavolumeincludedmbmonth smartphoneincludedintheoffer if (year==2015 | year==2016 | year==2019) & outlier==0 & (basket==4)

reg lnprice causaleffect tr_country y2 y5 datavolumeincludedmbmonth smartphoneincludedintheoffer if (year==2015 | year==2016 | year==2019) & outlier==0 & (basket==5)

//main
reg lnprice causaleffect tr_country y2 y5 gdpgrowthrate datavolumeincludedmbmonth smartphoneincludedintheoffer if (year==2015 | year==2016 | year==2019) & outlier==0 & (basket==1 | basket==2 | basket==3| basket==4)



//DIFFERENCE IN DIFFERENCES ITALY FINLAND ON PRICES
import delimited "italy_finland_plus.csv", clear 
gen lnprice=log(price)
gen after = (year>2018)
gen tr_country = (country=="Italy")
gen causaleffect = after*tr_country
tabulate year, generate(y)

reg lnprice causaleffect tr_country y2 y5 gdpgrowthrate smartphoneincludedintheoffer if (year==2015 | year==2016 | year==2019) & outlier==0 

reg lnprice causaleffect tr_country y2 y5 gdpgrowthrate smartphoneincludedintheoffer if (year==2015 | year==2016 | year==2019) & outlier==0 & (basket==1)

reg lnprice causaleffect tr_country y2 y5 gdpgrowthrate smartphoneincludedintheoffer if (year==2015 | year==2016 | year==2019) & outlier==0 & (basket==2)

reg lnprice causaleffect tr_country y2 y5 gdpgrowthrate smartphoneincludedintheoffer if (year==2015 | year==2016 | year==2019) & outlier==0 & (basket==3)

reg lnprice causaleffect tr_country y2 y5 gdpgrowthrate smartphoneincludedintheoffer if (year==2015 | year==2016 | year==2019) & outlier==0 & (basket==4)

reg lnprice causaleffect tr_country y2 y5 smartphoneincludedintheoffer if (year==2015 | year==2016 | year==2019) & outlier==0 & (basket==5)

//main
reg lnprice causaleffect tr_country y2 y5 gdpgrowthrate smartphoneincludedintheoffer if (year==2015 | year==2016 | year==2019) & outlier==0 & (basket==1 | basket==2 | basket==3| basket==4)


