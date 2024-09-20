scurvy <- read.table("scurvy.csv", sep = ",", header = TRUE)
scurvy

summary(scurvy)

gum_rot <- as.numeric(substr(scurvy$gum_rot_d6, start = 1, stop = 1))
gum_rot

skin_sores <- as.numeric(substr(scurvy$skin_sores_d6, start = 1, stop = 1))
skin_sores

weakness <- as.numeric(substr(scurvy$weakness_of_the_knees_d6, start = 1, stop = 1))
weakness

lassitude <- as.numeric(substr(scurvy$lassitude_d6, start = 1, stop = 1))
lassitude

fit_for_duty <- as.numeric(substr(scurvy$fit_for_duty_d6, start = 1, stop = 1))
fit_for_duty

overall_score <- gum_rot + skin_sores + weakness + lassitude - fit_for_duty
overall_score

boxplot(overall_score ~ scurvy$treatment)
