library(dplyr)
data(diamonds, package = 'ggplot2')
diamonds

head(diamonds)
head(diamonds, n=3)
tail(diamonds, n =3)

head(diamonds)

diamonds %>% head()

head(diamonds, n=3)
diamonds %>% head(n=3)

tail(head(diamonds, n =4 ), n=2)


diamonds %>% head(n=4) %>% tail (n=2)

select(diamonds, carat, price)

diamonds %>%  select (carat, price)

diamonds %>%  filter(carat>1)

diamonds %>%  filter (cut == 'Ideal')

diamonds %>%  filter (cut == 'Ideal' & carat >1)
diamonds %>%  filter (carat >1 | carat <= 0.4)
diamonds %>%  filter (cut != 'Ideal')

diamonds %>%  mutate (carat/price)
diamonds

diamonds %>% mutate (Ratio=carat/price)

diamonds %>% mutate(Ratio = carat/price) %>% filter(Ratio > .0007)

diamonds %>% summarise(mean(price))

diamonds %>% summarise(mean(price),sum(carat))
diamonds %>% summarise(AvgPrice = mean(price), TotalSize=sum(carat))

diamonds %>% group_by(cut)
diamonds %>% group_by(cut) %>%  summarize(AvgPrice=mean(price))

diamonds %>%
    group_by(cut) %>% 
    summarise(AvgPrice=mean(price), TotaSize=sum(carat))
diamonds %>% 
    group_by(cut,colour) %>% 
    summarise(AvgPrice = mean(price), TotalSize=sum(carat))

diamonds %>% 
    select(carat, price, cut) %>% 
    filter(carat >1 ) %>% 
    group_by(cut) %>% 
    summarise(AvgPrice= mean(price), TotalSize=sum(carat)) %>% 
    arrange(AvgPrice)
