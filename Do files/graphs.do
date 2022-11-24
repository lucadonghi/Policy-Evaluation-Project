//finland italy DID graphs
import delimited "italy_finland_plus.csv", clear
gen lnprice=log(price)
gen after = (year>2018)
gen tr_country = (country=="Italy")
gen causaleffect = after*tr_country
tabulate year, generate(y)

didregress (lnprice gdpgrowthrate smartphoneincludedintheoffer) (causaleffect) if (year==2015 | year==2016 | year==2019) & outlier==0 & (basket != 5 & basket != 6), group(tr_country) time(year)

estat trendplots, legendfrom(2) line1opts(lcolor(blue) connect(direct) msymbol(circle)) line2opts(lcolor(gold) msymbol(point))

graph export "did_italy_finland.jpg", as(jpg) name("Graph") quality(100)

//uk italy DID graphs
import delimited "italy_uk_plus.csv", clear
gen lnprice=log(price)
gen after = (year>2018)
gen tr_country = (country=="Italy")
gen causaleffect = after*tr_country
tabulate year, generate(y)

didregress (lnprice gdpgrowthrate datavolumeincludedmbmonth smartphoneincludedintheoffer) (causaleffect) if (year==2015 | year==2016 | year==2019) & outlier==0 & (basket != 5 & basket != 6), group(tr_country) time(year)

estat trendplots, legendfrom(2) line1opts(lcolor(blue) connect(direct) msymbol(circle)) line2opts(lcolor(gold) msymbol(point))

graph export "did_italy_uk.jpg", as(jpg) name("Graph") quality(100)

//ireland italy DID graphs
import delimited "ireland_italy_plus.csv", clear
gen lnprice=log(price)
gen after = (year>2018)
gen tr_country = (country=="Italy")
gen causaleffect = after*tr_country
tabulate year, generate(y)

didregress (lnprice gdpgrowthrate datavolumeincludedmbmonth smartphoneincludedintheoffer) (causaleffect) if (year==2015 | year==2016 | year==2019) & outlier==0 & (basket != 5 & basket != 6), group(tr_country) time(year)

estat trendplots, legendfrom(2) line1opts(lcolor(blue) connect(direct) msymbol(circle)) line2opts(lcolor(gold) msymbol(point))

graph export "did_ireland_italy.jpg", as(jpg) name("Graph") quality(100)

