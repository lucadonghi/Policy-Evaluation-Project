//DIFFERENCE IN DIFFERENCES ITALY UK ON DATA VOLUME
import delimited "italy_uk_plus.csv", clear 
gen lnprice=log(price)
gen after = (year>2018)
gen tr_country = (country=="Italy")
gen causaleffect = after*tr_country
tabulate year, generate(y)

reg datavolumeincludedmbmonth causaleffect tr_country y2 y5 gdpgrowthrate smartphoneincludedintheoffer lnprice if (year==2015 | year==2016 | year==2019) & outlier==0 

reg datavolumeincludedmbmonth causaleffect tr_country y2 y5 gdpgrowthrate smartphoneincludedintheoffer lnprice if (year==2015 | year==2016 | year==2019) & outlier==0 & (basket==1 | basket==2 | basket==3| basket==4)

//DIFFERENCE IN DIFFERENCES ITALY IRELAND ON DATA VOLUME
import delimited "italy_ireland_plus.csv", clear 
gen lnprice=log(price)
gen after = (year>2018)
gen tr_country = (country=="Italy")
gen causaleffect = after*tr_country
tabulate year, generate(y)

reg datavolumeincludedmbmonth causaleffect tr_country y2 y5 gdpgrowthrate smartphoneincludedintheoffer lnprice if (year==2015 | year==2016 | year==2019) & outlier==0 

reg datavolumeincludedmbmonth causaleffect tr_country y2 y5 gdpgrowthrate smartphoneincludedintheoffer lnprice if (year==2015 | year==2016 | year==2019) & outlier==0 & (basket==1 | basket==2 | basket==3| basket==4)
