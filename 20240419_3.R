#install.packages("tidyverse")
library(tidyverse)
#install.packages("palmerpenguins")
library(palmerpenguins)
#install.packages("ggthemes")
library(ggthemes)
#install.packages("ggplot2")
library(ggplot2)
penguins
ggplot(data = penguins)
ggplot(data = penguins,
       mappin = aes(x= bill_length_mm, y = flipper_length_mm ))

ggplot(data = penguins,
       mappin = aes(x= bill_length_mm, y = flipper_length_mm )) +
  geom_point()

ggplot(data = penguins,
       mappin = aes(x= bill_length_mm, y = flipper_length_mm )) +
  geom_point(na.rm = T)

ggplot(data = penguins,
      mappin = aes(x= bill_length_mm, y = flipper_length_mm , color = species)) +
  geom_point(na.rm = T)


ggplot(data = penguins,
       mappin = aes(x= bill_length_mm, 
                    y = flipper_length_mm , color = species)) +
  geom_point(na.rm = T) + 
  geom_smooth(method = "lm")

ggplot(data = penguins,
       mappin = aes(x= bill_length_mm, 
                    y = flipper_length_mm)) +
  geom_point(mapping=aes(color=species,shape=species), na.rm = T) + 
  geom_smooth(method = "lm")+
  labs(title= "Mi primer plot",
       subtitle = "Subtile abajo de title",
       x = "Bill length",
       y = "Flipper length",
       color = "Species", shape = "Species"
  )+
  scale_color_colorblind()



ggplot(data = penguins,
       mapping = aes(x = year, 
                     y = sex,
                     color = species, 
                     shape = species)) +
  geom_point(na.rm = TRUE) + 
  geom_smooth(method = "lm") +
  labs(title = "Mi primer plot",
       subtitle = "Subtile abajo de title",
       x = "year",
       y = "sex",
       color = "Species", 
       shape = "Species") +
  scale_color_viridis_d()


ggplot(data = penguins,
       mapping = aes(x = bill_length_mm , 
                     y = bill_depth_mm ,
                     color = species, 
                     shape = species)) +
  geom_point(na.rm = TRUE) + 
  geom_smooth(method = "lm") +
  labs(title = "Mi primer plot",
       subtitle = "Subtile abajo de title",
       x = "bill_length_mm ",
       y = "bill_depth_mm ",
       color = "Species", 
       shape = "Species") +
  scale_color_viridis_d()


view(penguins)

ggplot(data = penguins,
       mappin = aes(x= bill_length_mm, 
                    y = flipper_length_mm , color = species)) +
  geom_point(na.rm = T) + 
  geom_smooth(method = "lm")

ggplot()+
  geom_point(data = penguins,
             mappin = aes(x= bill_length_mm, 
                          y = flipper_length_mm , color = species))+
  geom_smooth(data = penguins,
              mappin = aes(x= bill_length_mm, 
                           y = flipper_length_mm , color = species),method = "lm")



ggplot(penguins, aes(x=body_mass_g))+
  geom_histogram(binwidth = 200)

ggplot(penguins, aes(x=body_mass_g,color = island, fill = island))+
  geom_density(alpha = 0.5)

ggplot(penguins, aes(x=island, fill = island))+
  geom_bar()

ggplot(penguins, aes(x= body_mass_g, color=island, fill=island))+   
  geom_histogram(binwidth = 100, alpha=0.5)

ggplot(penguins, aes(x= body_mass_g, color=island, fill=island))+   
  geom_histogram(binwidth = 100, alpha=0.5,position = "fill")



ggplot(data = penguins,aes(x= bill_length_mm, y = flipper_length_mm )) +
  geom_point(aes(color = island,shape = species))+
  labs(title = "2 tipos de datos")

data()
