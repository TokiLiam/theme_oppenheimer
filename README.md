## Oppenheimer theme for ggplot2

Inspired by the Barbie theme created by Matthew B Jane I adapted it to an Oppenheimer theme.
### APA:
Jané, M.B. (2023). barbie_theme: ggplot theme for the Barbie movie (Version 0.0.1) [Source Code]. https://github.com/MatthewBJane/theme_barbie

## Use
```
library('devtools')
source_url("https://raw.githubusercontent.com/TokiLiam/theme_oppenheimer/main/theme_oppenheimer.R")
```
<img width="534" alt="image" src="https://github.com/TokiLiam/theme_oppenheimer/blob/main/Oppenheimer_test.png?raw=true">

## Create example plot
```
df1 <- data.frame("x" = sample(1:50, 20), "y" = sample(1:50, 20), "z" = runif(20, 0, 1))

ggplot(data=df1, aes(x=x, y=y, color=z))+
  geom_point()+
  geom_segment(aes(x=0, y=0,xend=50, yend=30), color=text_color_oppenheimer)+
  scale_color_oppenheimer_gradient()+
  theme_oppenheimer()+
  ggtitle("Oppenheimer test")+
  labs(x="Variable X", y="Variable y")
```
