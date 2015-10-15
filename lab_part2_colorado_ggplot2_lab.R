##################################################################
### лабораторная работа ggplot2:  Часть вторая лабораторная работа
### университета Колорадо 
##################################################################

film_death_counts <- read.csv(file="film_death_counts.csv",header = T)

library(ggplot2)

head(film_death_counts)

ggplot()+
  geom_point(data=film_death_counts,mapping = aes(x=Year, y=IMDB_Rating,
                                                color=MPAA_Rating))+
  ylab("Average IMDB Rating")

ggplot()+
  geom_smooth(data=film_death_counts,mapping = aes(x=Year, y=IMDB_Rating))+
  ylab("Average IMDB Rating")


ggplot(data = subset(film_death_counts, MPAA_Rating %in% c("G", "PG", "PG-13", "R")), aes(x=Body_Count))+
  geom_histogram()+
  facet_grid(.~MPAA_Rating)+
  scale_y_sqrt()+
  xlab("Number of Deaths")+
  ylab("Number of Films")

deathsperminute <- data.frame(film_death_counts$Film, film_death_counts$Body_Count/film_death_counts$Length_Minutes)

ggplot(data=deathsperminute,aes())



