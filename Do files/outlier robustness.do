//CONTROLLO OUTLIER ITALY UK - with outliers
import delimited "italy_uk_plus.csv", clear 
gen lnprice=log(price)
gen after = (year>2018)
gen tr_country = (country=="Italy")
gen causaleffect = after*tr_country
tabulate year, generate(y)


reg lnprice causaleffect tr_country y2 y5 gdpgrowthrate datavolumeincludedmbmonth smartphoneincludedintheoffer if (year==2015 | year==2016 | year==2019) & (basket==1 | basket==2 | basket==3| basket==4)

reg lnprice causaleffect tr_country y2 y5 gdpgrowthrate datavolumeincludedmbmonth smartphoneincludedintheoffer if (year==2015 | year==2016 | year==2019)


//CONTROLLO OUTLIER ITALY IRELAND - with outliers
import delimited "italy_ireland_plus.csv", clear 
gen lnprice=log(price)
gen after = (year>2018)
gen tr_country = (country=="Italy")
gen causaleffect = after*tr_country
tabulate year, generate(y)

reg lnprice causaleffect tr_country y2 y5 gdpgrowthrate datavolumeincludedmbmonth smartphoneincludedintheoffer if (year==2015 | year==2016 | year==2019) & (basket==1 | basket==2 | basket==3| basket==4)

reg lnprice causaleffect tr_country y2 y5 gdpgrowthrate datavolumeincludedmbmonth smartphoneincludedintheoffer if (year==2015 | year==2016 | year==2019)



//CONTROLLO OUTLIER ITALY FINLAND - with outliers
import delimited "italy_finland_plus.csv", clear 
gen lnprice=log(price)
gen after = (year>2018)
gen tr_country = (country=="Italy")
gen causaleffect = after*tr_country
tabulate year, generate(y)

reg lnprice causaleffect tr_country y2 y5 gdpgrowthrate smartphoneincludedintheoffer if (year==2015 | year==2016 | year==2019) & (basket==1 | basket==2 | basket==3| basket==4)

reg lnprice causaleffect tr_country y2 y5 gdpgrowthrate smartphoneincludedintheoffer if (year==2015 | year==2016 | year==2019)
