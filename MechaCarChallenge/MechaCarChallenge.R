Mecha_Car_Mpg <- read.csv('MechaCar_mpg.csv') #import mpg dataset
lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance + AWD,data=Mecha_Car_Mpg) #get coefficients of mechacar variables
summary(lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance + AWD,data=Mecha_Car_Mpg)) #get P values to form analysis
Suspension_Data <- read.csv('Suspension_Coil.csv') #import coils dataset
summarize_coil <- Suspension_Data %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Std_PSI=sd(PSI),Var_PSI=var(PSI)) #Create table with summary statistics for Suspension Coil
population_table<- read.csv('Suspension_Coil.csv') # create population variable for analysis
sample_table <- population_table %>% sample_n(35) #create sample variable with 35 random results
t.test((sample_table$PSI),mu=mean((population_table$PSI))) #compare sample versus population means with appropriate ttest
