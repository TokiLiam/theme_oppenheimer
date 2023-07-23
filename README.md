## Oppenheimer theme for ggplot2

Inspired by the Barbie theme created by Matthew B Jane I adapted it to an Oppenheimer theme.
### APA:
Jané, M.B. (2023). barbie_theme: ggplot theme for the Barbie movie (Version 0.0.1) [Source Code]. https://github.com/MatthewBJane/theme_barbie

## Use
```
library('devtools')
source_url("https://raw.githubusercontent.com/TokiLiam/theme_oppenheimer/main/theme_oppenheimer.R")
```
<img width="534" alt="image" src="https://github.com/TokiLiam/theme_oppenheimer/blob/main/Oppenheimer_example.png">

## Create example plot
```
x1 <- seq(0, 5, 0.1)
y <- 2*(1-exp(-1*(x1-1)))^2

df1 <- data.frame("x" = x1, "y" = y, "z"=seq(0, 5, 0.1))
df2 <- data.frame("x"=seq(0,6,0.1), "y"==seq(0,6,0.1))
ggplot(data=df1, aes(x=x, y=y, color=z))+
  geom_segment(aes(x=0, y=0.25,xend=5, yend=0.25), color=text_color_oppenheimer)+
  geom_segment(aes(x=0, y=0.5,xend=5, yend=0.5), color=text_color_oppenheimer)+
  geom_segment(aes(x=0, y=0.75,xend=5, yend=0.75), color=text_color_oppenheimer)+
  geom_segment(aes(x=0, y=1,xend=5, yend=1), color=text_color_oppenheimer)+
  geom_segment(aes(x=0, y=1.5,xend=5, yend=1.5), color=text_color_oppenheimer)+
  geom_point()+
  scale_color_oppenheimer_gradient()+
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())+
  theme_oppenheimer()+
  ggtitle("Oppenheimer test")+
  labs(x="Distance", y="Energy")

```
