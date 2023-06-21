cervical_cancer <- read.csv("cervical_cancer.csv", na.strings = "?")
cervical_cancer

TYPE_I = c("Age", "Number.of.sexual.partners", "Num.of.pregnancies")
TYPE_II = c("First.sexual.intercourse", "Smokes", "Smokes..years.", "Hormonal.Contraceptives", "Hormonal.Contraceptives..years.", "IUD", "IUD..years.")
TYPE_III = c("STDs..number.", "STDs.condylomatosis", "STDs.syphilis", "STDs.pelvic.inflammatory.disease", "STDs.genital.herpes", "STDs.molluscum.contagiosum", "STDs.AIDS", "STDs.HIV", "STDs.Hepatitis.B", "STDs.HPV", "STDs..Number.of.diagnosis")
TYPE_IV = c("Dx.Cancer", "Dx.CIN", "Dx.HPV", "Hinselmann", "Schiller", "Citology", "Biopsy")

for (IV in TYPE_IV) {
  for (II in TYPE_II){
    for (III in TYPE_III){
      model <- aov(as.formula(paste(IV, "~", II, "*", III)), data = cervical_cancer)
      summary(model)
    }
  }
}
