//
//  MedicineDetailView.swift
//  Login Screen
//
//  Created by MILLER, Maximilian on 29/12/2021.
//  Copyright © 2021 Balaji. All rights reserved.
//

import SwiftUI

struct MedicineDetailView: View {
    var body: some View {
        Text("What makes a good applicant?")
        
        Text("""
             Realistic awareness of what
             medical career involves and
             evidence of strong personal
             motivation; very strong
             academic profile; communitymindedness, cultural
             awareness, responsibility;
             excellent communication and
             negotiation skills, ability to
             listen carefully and consider
             different points of view;
             leadership; knowledge of
             current medical developments; strong ethical sense
             and integrity.
            """)
        
        Text("Suggestions for extra / super / curricular activities")
        
        Text("""
             Extended Essay in Chemistry
             or Biology; at least a month
             of experience in a medical or
             care environment; long term
             commitment to service in a
             care environment; CAS;
             Schoenbrunn; Elderly Home;
             Refugee Camp. Medical
             Reading Group; reading
             quality newspapers /
             magazines for medical
             articles; evidence of leadership and
            responsibility in sports or cultural activities.
            """)

    }
}

struct MedicineDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MedicineDetailView()
    }
}
