val lab Product_Quality Service_Quality
1=Poor, 2=Fair, 3=Average, 4=Good, 5=Excellent.

val lab Satisfaction
1=Very dissatisfied 
5=Very satisfied.

**************************************************************************
* PROJECT: Customer Satisfaction Analysis Demo
* AUTHOR: Manzer Ehsan
* PURPOSE: Showcase SPSS skills using sample survey dataset (100 records)
**************************************************************************.

* 1️⃣ DESCRIPTIVE STATISTICS.
DESCRIPTIVES VARIABLES=Age Income Product_Quality Service_Quality Satisfaction
  /STATISTICS=MEAN STDDEV MIN MAX.

* 2️⃣ FREQUENCY DISTRIBUTION (for categorical variables).
FREQUENCIES VARIABLES=Gender Recommend
  /FORMAT=DFREQ TABLE
  /BARCHART FREQ
  /ORDER=ANALYSIS.

* 3️⃣ CROSSTABS with CHI-SQUARE TEST.
CROSSTABS
  /TABLES=Gender BY Recommend
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ
  /CELLS=COUNT ROW COLUMN TOTAL
  /COUNT ROUND CELL.

* 4️⃣ CORRELATION ANALYSIS.
CORRELATIONS
  /VARIABLES=Product_Quality Service_Quality Satisfaction Income
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.

* 5️⃣ SIMPLE LINEAR REGRESSION (predict Satisfaction from Service_Quality).
REGRESSION
  /DEPENDENT Satisfaction
  /METHOD=ENTER Service_Quality
  /STATISTICS=COEFF R ANOVA.

* 6️⃣ CHARTS (optional visuals for LinkedIn screenshots).
GRAPH /BAR(GROUPED)=COUNT BY Gender BY Recommend.
GRAPH /HISTOGRAM(NORMAL)=Satisfaction.
GRAPH /SCATTERPLOT(BIVAR)=Service_Quality WITH Satisfaction.

**************************************************************************
* END OF SYNTAX FILE
**************************************************************************.

