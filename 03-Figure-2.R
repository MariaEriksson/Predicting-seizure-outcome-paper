# import libraries
library(reshape2)
library(ggplot2)

# read in the dataframe
df_stats_tests <- read.csv('/home/maria/Desktop/PhD/Predicting-outcome-clinical-paper/Dataframes/grid_results_holm.csv', stringsAsFactors = F)

# remove the index column
m <- as.matrix(df_stats_tests[, -1])
row.names(m) <- df_stats_tests[, 1]

# re-shape the dataframe
df_stats_tests_long <-melt(m)
df_stats_tests_long <-df_stats_tests_long[df_stats_tests_long$value!=0,]

# change column name
names(df_stats_tests_long)[names(df_stats_tests_long) == 'value'] <- 'Relationship'

#re-order the columns for the graph
df_stats_tests_long$Relationship <- factor(df_stats_tests_long$Relationship,
                                           levels = c('Significant after correction', 
                                                      'Significant before correction',
                                                      'Non-significant',
                                                      ''))

# plot the data
ggplot(df_stats_tests_long, aes(x = Var1, y = Var2, fill = Relationship)) +
  geom_tile(colour = "white") +
  theme(axis.text.x = element_text(size = 18, angle = 45, hjust = 1, vjust = 1, family='Calibri')) +
  theme(axis.text.y = element_text(size = 18, angle = 00, family='Calibri')) +
  theme(legend.text = element_text(size = 18, colour = 'grey30', family='Calibri')) +
  xlab(" ") + 
  ylab(" ") +
  scale_x_discrete(expand = c(0,0)) +
  scale_y_discrete(expand = c(0,0)) +
  scale_fill_manual(values = c("#677719","#abb47d","#B3B3B3","white")) +
  labs(title = "") +
  theme(legend.position = c(0.67, 0.85)) +
  theme(legend.key.size = unit(1, 'cm')) +
  labs(fill = "") +
  theme(plot.title = element_text(size = 18, hjust = 0.5, family='Calibri'), plot.subtitle = element_text(size = 18, hjust = 0.5, family='Calibri')) +
  guides(fill = guide_legend(label.position = "left", label.hjust = 1)) +
  geom_rect(aes(xmin = 1.04 - 0.5, xmax = 1 + 0.5, ymin = 1 - 0.5, ymax = 15.97 + 0.5),
            fill = "transparent", color = "#ffde75", size = 1.3)


