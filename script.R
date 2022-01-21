library(MLDataR)

tir <- MLDataR::thyroid_disease

write.csv(tir, file = "dataset_tiroides.csv")

sessioninfo()

#order

head(tir)
sort(tir$patient_age)

tir2 <-  tir[order(tir$patient_age),] 
tir2

# quitar los missing

tir_completo <- tir[complete.cases(tir),]


#aggregate

edad_tir <- aggregate(tir_completo$patient_age, list(tir_completo$ThryroidClass), mean)

edad_tir2 <- aggregate(tir_completo$patient_age, list(tir_completo$ThryroidClass, tir_completo$patient_gender), mean)

?aggregate

#poner nombre a las columnas

names(edad_tir) <- c("Tiroides", "Media")
names(edad_tir)

names(edad_tir2) <- c("Tiroides", "Género", "Media")
edad_tir2
