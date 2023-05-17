# import libraries
library(ggplot2)
library(cowplot)
library(stringr)

# read in the dataframe
df_aucs <- read.csv('add-file-path.csv', stringsAsFactors = F)

#re-order the columns for the graph
df_aucs$model <- factor(df_aucs$model,
                        levels = c('Educational status', 
                                   '+ Genetic findings',
                                   '+ Handedness', 
                                   '+ MRI bilaterality', 
                                   '+ Num. seiz. types',
                                   '+ Lobe operated',
                                   '+ Spasms hist.',
                                   '+ Spasms pre-op.',
                                   '+ MRI diagnosis',
                                   '+ Age of onset',
                                   '+ Num. ASM trialed',
                                   '+ Surgery type',
                                   '+ NS. predictors'
                        ))

# plot
p <- ggplot(df_aucs, aes(x = model, y = auc, colour = model, group = 1)) +
  scale_colour_manual(values=c("#a30234",#1
                               "#e37c1d",#2 
                               "#e37c1d",#3
                               "#f1b682",#4 
                               "#f1b682",#5 
                               "#ffde75",#6 
                               '#ffde75',#7 
                               "#ffde75",#8
                               '#ffde75',#9 
                               '#ffde75',#10 
                               '#abb47d',#11 
                               '#677719',#12  	
                               '#ffde75')) + #13
  geom_point(size = 4) +
  geom_segment(aes(x = 1, xend = 2, y = 0.60, yend = 0.62), colour = 'grey', linetype = "dashed") +
  geom_segment(aes(x = 2, xend = 3, y = 0.62, yend = 0.63), colour = 'grey', linetype = "dashed") +
  geom_segment(aes(x = 3, xend = 4, y = 0.63, yend = 0.65), colour = 'grey', linetype = "dashed") +
  geom_segment(aes(x = 4, xend = 5, y = 0.65, yend = 0.67), colour = 'grey', linetype = "dashed") +
  geom_segment(aes(x = 5, xend = 6, y = 0.67, yend = 0.69), colour = 'grey', linetype = "dashed") +
  geom_segment(aes(x = 6, xend = 7, y = 0.69, yend = 0.69), colour = 'grey', linetype = "dashed") +
  geom_segment(aes(x = 7, xend = 8, y = 0.69, yend = 0.68), colour = 'grey', linetype = "dashed") +
  geom_segment(aes(x = 8, xend = 9, y = 0.68, yend = 0.69), colour = 'grey', linetype = "dashed") +
  geom_segment(aes(x = 9, xend = 10, y = 0.69, yend = 0.69), colour = 'grey', linetype = "dashed") +
  geom_segment(aes(x = 10, xend = 11, y = 0.69, yend = 0.71), colour = 'grey', linetype = "dashed") +
  geom_segment(aes(x = 11, xend = 12, y = 0.71, yend = 0.72), colour = 'grey', linetype = "dashed") +
  geom_segment(aes(x = 12, xend = 13, y = 0.72, yend = 0.69), colour = 'grey', linetype = "dashed") +
  
  geom_point(aes(x=1, y=0.60), shape = 21, colour = "black", fill = "#a30234", size = 5) +
  geom_point(aes(x=2, y=0.62),shape = 21, colour = "black", fill = "#e37c1d", size = 5) +
  geom_point(aes(x=3, y=0.63), shape = 21, colour = "black", fill = "#e37c1d", size = 5) +
  geom_point(aes(x=4, y=0.65), shape = 21, colour = "black", fill ="#f1b682", size = 5) +
  geom_point(aes(x=5, y=0.67), shape = 21, colour = "black", fill ="#f1b682", size = 5) +
  geom_point(aes(x=6, y=0.69), shape = 21, colour = "black", fill ="#ffde75", size = 5) +
  geom_point(aes(x=7, y=0.69), shape = 21, colour = "black", fill ="#ffde75", size = 5) +
  geom_point(aes(x=8, y=0.68), shape = 21, colour = "black", fill ="#ffde75", size = 5) +
  geom_point(aes(x=9, y=0.69), shape = 21, colour = "black", fill ="#ffde75", size = 5) +
  geom_point(aes(x=10, y=0.69), shape = 21, colour = "black", fill ="#ffde75", size = 5) +
  geom_point(aes(x=11, y=0.71), shape = 21, colour = "black", fill ="#abb47d", size = 5) +
  geom_point(aes(x=12, y=0.72), shape = 21, colour = "black", fill ="#677719", size = 5) +
  geom_point(aes(x=13, y=0.69), shape = 21, colour = "black", fill ="#ffde75", size = 5) +
  
  annotate(geom="text", x=1, y=0.95, label=".60",
           color="#a30234", size=7, fontface="bold") +
  annotate(geom="text", x=2, y=0.95, label=".62",
           color="#e37c1d", size=7, fontface="bold") +
  annotate(geom="text", x=3, y=0.95, label=".63",
           color="#e37c1d", size=7, fontface="bold") +
  annotate(geom="text", x=4, y=0.95, label=".65",
           color="#f1b682", size=7, fontface="bold") +
  annotate(geom="text", x=5, y=0.95, label=".67",
           color="#f1b682", size=7, fontface="bold") +
  annotate(geom="text", x=6, y=0.95, label=".69",
           color="#ffcc29", size=7, fontface="bold") +
  annotate(geom="text", x=7, y=0.95, label=".69",
           color="#ffcc29", size=7, fontface="bold") +
  annotate(geom="text", x=8, y=0.95, label=".68",
           color="#ffcc29", size=7, fontface="bold") +
  annotate(geom="text", x=9, y=0.95, label=".69",
           color="#ffcc29", size=7, fontface="bold") +
  annotate(geom="text", x=10, y=0.95, label=".69",
           color="#ffcc29", size=7, fontface="bold") +
  annotate(geom="text", x=11, y=0.95, label=".71",
           color="#abb47d", size=7, fontface="bold") +
  annotate(geom="text", x=12, y=0.95, label=".72",
           color="#677719", size=7, fontface="bold") +
  annotate(geom="text", x=13, y=0.95, label=".69",
           color="#ffcc29", size=7, fontface="bold") +
  theme_minimal() +
  expand_limits(y=c(0.4, 0.9)) +
  theme(axis.text.y = element_text(size=25, family = 'Calibri')) +
  theme(axis.text.x = element_text(size = 25, family = 'Calibri', angle = 90, vjust = 0.5, hjust=1)) + 
  theme(axis.title.x = element_text(size = 35, family = 'Calibri', face="bold")) + 
  theme(axis.title.y = element_text(size = 35, family = 'Calibri')) + 
  theme(panel.grid.minor = element_blank()) +
  labs(x='', y='AUC', title = '', family = 'Calibri') +
  theme(legend.position = "none", panel.grid.minor.x = element_blank()) 
  

