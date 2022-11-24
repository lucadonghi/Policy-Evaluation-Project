//COMMON TREND ASSUMPTION ITALY UK

import delimited "italy_uk_plus.csv", clear 
//slopes italy
gen lnprice=log(price)

reg lnprice year if country=="Italy" & outlier==0 & (year==2015 | year==2016) 
//graphic slope italy
twoway (lfit price year if country=="Italy" & outlier==0 & (year==2015 | year==2016)) (scatter price year if country=="Italy" & outlier==0 & (year==2015 | year==2016))
//slopes UK
reg lnprice year if country=="United_Kingdom" & outlier==0 & (year==2015 | year==2016)
//graphic slope uk
twoway (scatter price year if country=="United_Kingdom" & outlier==0 & (year==2015 | year==2016), mcolor(yellow)) (lfit price year if country=="United_Kingdom" & outlier==0 & (year==2015 | year==2016), lcolor(yellow))
//graphic slopes IT UK
twoway (lfit price year if country=="Italy" & outlier==0 & (year==2015 | year==2016), lcolor(magenta)) (scatter price year if country=="Italy" & outlier==0 & (year==2015 | year==2016), mcolor(magenta)) (scatter price year if country=="United_Kingdom" & outlier==0 & (year==2015 | year==2016), mcolor(yellow)) (lfit price year if country=="United_Kingdom" & outlier==0 & (year==2015 | year==2016), lcolor(yellow))

//COMMON TREND ASSUMPTION ITALY IREALND
import delimited "italy_ireland_plus.csv", clear 
//slopes italy
gen lnprice=log(price)

reg lnprice year if country=="Italy" & outlier==0 & (year==2015 | year==2016)
//graphic slope italy
 twoway (lfit price year if country=="Italy" & outlier==0 & (year==2015 | year==2016)) (scatter price year if country=="Italy" & outlier==0 & (year==2015 | year==2016))
//slopes ireland
reg lnprice year if country=="Ireland" & outlier==0 & (year==2015 | year==2016)
//graphic slope ireland
twoway (scatter price year if country=="Ireland" & outlier==0 & (year==2015 | year==2016), mcolor(yellow)) (lfit price year if country=="Ireland" & outlier==0 & (year==2015 | year==2016), lcolor(yellow))
//graphic slopes IT IE
twoway (lfit price year if country=="Italy" & outlier==0 & (year==2015 | year==2016), lcolor(magenta)) (scatter price year if country=="Italy" & outlier==0 & (year==2015 | year==2016), mcolor(magenta)) (scatter price year if country=="Ireland" & outlier==0 & (year==2015 | year==2016), mcolor(yellow)) (lfit price year if country=="Ireland" & outlier==0 & (year==2015 | year==2016), lcolor(yellow))

//COMMON TREND ASSUMPTION ITALY FINLAND
import delimited "italy_finland_plus.csv", clear 
//slopes italy
gen lnprice=log(price)

reg lnprice year if country=="Italy" & outlier==0 & (year==2015 | year==2016) 
//graphic slope italy
 twoway (lfit price year if country=="Italy" & outlier==0 & (year==2015 | year==2016)) (scatter price year if country=="Italy" & outlier==0 & (year==2015 | year==2016))
//slopes finland
reg lnprice year if country=="Finland" & outlier==0 & (year==2015 | year==2016)
//graphic slope finland
twoway (scatter price year if country=="Finland" & outlier==0 & (year==2015 | year==2016), mcolor(yellow)) (lfit price year if country=="Finland" & outlier==0 & (year==2015 | year==2016), lcolor(yellow))
//graphic slopes IT FI
twoway (lfit price year if country=="Italy" & outlier==0 & (year==2015 | year==2016), lcolor(magenta)) (scatter price year if country=="Italy" & outlier==0 & (year==2015 | year==2016), mcolor(magenta)) (scatter price year if country=="Finland" & outlier==0 & (year==2015 | year==2016), mcolor(yellow)) (lfit price year if country=="Finland" & outlier==0 & (year==2015 | year==2016), lcolor(yellow))
