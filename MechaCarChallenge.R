# Deliverable 1
library(dplyr)
MCmpg <- read.csv(file='Resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MCmpg)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MCmpg))

# Deliverable 2
SC <- read.csv(file='Resources/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# write rscript that creates total_summary using summarize()
total_summary <- SC %>% summarize(Mean= mean(PSI), Median= median(PSI), Variance= var(PSI),SD = sd(PSI), .groups = 'keep')

# Create a lot_summary using group_by and summarize to group each lot by total_summary
lot_summary <- SC %>% group_by(Manufacturing_Lot)%>%summarize(Mean= mean(PSI), Median= median(PSI), Variance= var(PSI),SD = sd(PSI), .groups = 'keep')

#Deliverable 3
t.test(SC$PSI, mu=1500)

# t test for each lot
t.test(subset(SC, Manufacturing_Lot == "Lot1")$PSI, mu=1500)
t.test(subset(SC, Manufacturing_Lot == "Lot2")$PSI, mu=1500)
t.test(subset(SC, Manufacturing_Lot == "Lot3")$PSI, mu=1500)