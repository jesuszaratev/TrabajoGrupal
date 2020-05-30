#Revisamos la variable
View(PoliticalParticipation)
str(PoliticalParticipation)

#Eliminamos la "," y la sustituimos por "." 
PoliticalParticipation$`PoliticalParticipation(2006)` =gsub(",", ".", PoliticalParticipation$`PoliticalParticipation(2006)`)
PoliticalParticipation$`PoliticalParticipation(2010)` =gsub(",", ".", PoliticalParticipation$`PoliticalParticipation(2010)`)
PoliticalParticipation$`PoliticalParticipation(2015)` =gsub(",", ".", PoliticalParticipation$`PoliticalParticipation(2015)`)
PoliticalParticipation$`PoliticalParticipation(2019)` =gsub(",", ".", PoliticalParticipation$`PoliticalParticipation(2019)`)

#Transformamos a numérico
PoliticalParticipation[2:5]=lapply(PoliticalParticipation[2:5], as.numeric)
#Recodificamos los nombres
names(PoliticalParticipation) = c("Pais", "Participacion_Politica(2006)","Participacion_Politica(2010)","Participacion_Politica(2015)","Participacion_Politica(2019)")
str(PoliticalParticipation)