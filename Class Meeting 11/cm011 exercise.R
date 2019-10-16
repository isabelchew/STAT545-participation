library(tidyverse)
library(gapminder)

gapminder
write.csv(gapminder, './gampminder.csv')
view(gapminder)

gapminder_sum<-gapminder %>%
  group_by(continent)%>%
  summarize(ave_life=mean(lifeExp))

view(gapminder_sum)
write_csv(gapminder_sum, './gapminder_sum.csv')

gapminder_sum%>%
  ggplot(aes(x=continent, y=ave_life))+
  geom_point()+
  theme_bw()

library("tidyverse")
gapminder_csv<-read.csv('./gapminder_sum.csv')

view(gapminder_csv)
ls()
list=list()
remove(list=ls())
ls()

install.packages("here")
library(here)


data_url<-"http://gattonweb.uky.edu/sheather/book/docs/datasets/GreatestGivers.xls"

filename<-basename(data_url)
download.file(url=data_url, destfile=here::here("STAT545-participation", filename))

library(readxl)
philanthropists<-read_excel(here::here("STAT545-participation", filename))

mri_file=here::here("STAT545-participation", "Firas-MRI.xlsx")
mri<-read_excel(mri_file, range="A1:L12")
View(mri)
mri<-mri[, -10]

mri%>%
  pivot_longer(cols='Slice 1':'Slice 8', 
               names_to='slice_no', 
               values_to='value')

mri


