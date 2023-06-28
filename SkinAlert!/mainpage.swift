//
//  mainpage.swift
//  SkinAlert!
//
//  Created by Tien Thai on 6/28/23.
//

import SwiftUI

struct mainpage: View {
    
    @State private var harmfulIngredients = [ "Formaldehyde", "Diazolidinyl urea”, 3-diol Imidazolidinyl urea”, “DMDM Hydantoin”, “Quaternium-15”, “Nitorpropane-1”,”Formalin, Methanal”, ”Methyl Aldehyde”, ”Methylene Oxide", "Triclosan", "Irgasan DP-300, ”Lexol 300”, ”Ster-Zac”, ”Cloxifenolum", "Parabens", "isopropylparaben”, ”isobutylparaben”, ”phenylparaben”, ”benzylparaben”, ”pentylparaben", "Phthalates", "BBP: butyl benzyl phthalate,” DBP: di-n-butyl phthalate”, ”DEHP: di-(2-ethylhexyl) phthalate", "Lead", "Petroleum", "paraffin wax”, ”mineral oil”, ”toluene”, ”benzene”, ”toluol”, ”phenylmethane”, ”methylbenzene", "Propylene Glycol", "propane-1,2-diol", "Butylated compounds”,”BHT + BHA)", "butylated hydroxyanisole", "BHA", "butylated hydroxytoluene", "BHT", "Sodium Lauryl Sulfate (SLS)", "Sodium Laureth Sulfate”,”SLES","1,4-dioxane", "Ammonium Lauryl Sulfate (ALS)","Ammonium Laureth Sulfate (ALES)", "Ethanolamines", "DEA", "TEA", "MEA", "Toluene", "PEG compounds","Polyethylene Glycol", "Retinyl Palmitate", "Hydroquinone", "Coal Tar", "Hydrogenated Oils", "Synthetic colors”,”FD&C Red No. 40”,” Yellow No. 5", "Formaldehyde-releasing preservatives", "DMDM Hydantoin", "Diazolidinyl Urea", "Oxybenzone", "Octinoxate", "Homosalate", "Nano-sized particles", "Talc", "Aluminum compounds", "Aluminum Chloride", "Aluminum Hydroxide", "Diethanolamine", "DEA", "Triethanolamine","TEA", "Methylisothiazolinone", "Benzalkonium Chloride", "Synthetic fragrances", "Butylparaben", "Ethylparaben", "Propylparaben", "Isopropyl Alcohol", "Benzyl Alcohol", "Polypropylene Glycol", "Synthetic Antioxidants", "BHT", "BHA", "Triclocarban", "Triclocarban Sodium", "Cocamide DEA", "Sodium Hydroxide", "Formaldehyde Donors", "Bronopol", "Quaternium-15", "Methylchloroisothiazolinone" , "Methyl Methacrylate", "Polyacrylamide", "ImidazFormaldehydeolidinyl Urea", "Quaternium-15", "Benzophenone", "Dibutyl Phthalate", "Isopropyl Myristate", "Lanolin", "Ethyl Acetate", "Dioxane", "Lanolin Alcohol", "Methyl Cellosolve", "Mercury and Mercury Compounds", "Paraphenylenediamine", "Silica", "Ammonium Persulfate", "Benzyl Salicylate", "Eugenol", "Methanol", "Nitrosamines", "Polyethylene", "Resorcinol", "Toluene-2,5-Diamine", "Butylene Glycol", "Diethyl Phthalate", "Ethylene Oxide", "Dioxin", "Mineral Oil", "Sodium Chloride", "Acrylamide", "Aluminum Starch Octenylsuccinate", "Benzyl Benzoate", "Butylated Hydroxyanisole", "Butylated Hydroxytoluene", "BHT", "Ethylhexyl Methoxycinnamate", "Methoxydiglycol", "Polyquaterniums", "Propylene Carbonate", "Sodium Bisulfite", "Sodium Lauroyl Sarcosinate", "Sodium Metabisulfite", "Sodium"]
    
    @State private var input = ""
    @State private var output = ""
    
    
    var body: some View {
     
        ZStack {
            Color("pastelPink")
                .ignoresSafeArea()
            
            
            VStack {
                
                Text("Is your ingredient harmful?")
                    .font(.custom("Times New Roman", size: 40))
                    
              

                TextField("Input Ingredients Here!", text: $input)
                    .multilineTextAlignment(.center)
                        .font(.custom("Times New Roman", size: 35))
                        .border(Color.gray, width: 0.5)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                            .fixedSize(horizontal: true, vertical: false)
                            .frame(width: 120)
                            
                            
            Spacer()
                    .frame(height: 35)
                
                
                Button("Check") {
                    for variable in harmfulIngredients {
                        if variable == input {
                            output = "This ingredient is potentially irrating/harmful to your skin."
                        } else {
                            output = "This ingredient should be okay!"
                        }
                        
                            
                    }
                   
                }
                .font(.custom("Times New Roman", size: 30))
                .buttonStyle(.borderedProminent)
                .tint(Color("pastelPurple"))
                
                Text(output)
            }

            
            
            
            
           // yipeeeee 
            
        }
        
        
        
       
        
    }
}

struct mainpage_Previews: PreviewProvider {
    static var previews: some View {
        mainpage()
    }
}
