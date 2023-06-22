TYPE_I = ["Age", "Number.of.sexual.partners", "Num.of.pregnancies"]
TYPE_II = ["First.sexual.intercourse", "Smokes", "Smokes..years.", "Hormonal.Contraceptives", "Hormonal.Contraceptives..years.", "IUD", "IUD..years."]
TYPE_III = ["STDs..number.", "STDs.condylomatosis", "STDs.syphilis", "STDs.pelvic.inflammatory.disease", "STDs.genital.herpes", "STDs.molluscum.contagiosum", "STDs.AIDS", "STDs.HIV", "STDs.Hepatitis.B", "STDs.HPV", "STDs..Number.of.diagnosis"]
TYPE_IV = ["Dx.Cancer", "Dx.CIN", "Dx.HPV", "Hinselmann", "Schiller", "Citology", "Biopsy"]

for iv in TYPE_IV:
    for ii in TYPE_II:
        for iii in TYPE_III:
            print(f'print("{iv}")\nmodel <- aov( {iv} ~ {ii} * {iii}, data = cervical_cancer)\nsummary(model)\n')
            
