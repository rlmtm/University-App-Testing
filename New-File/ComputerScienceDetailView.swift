//
//  ComputerScienceDetailView.swift
//  Login Screen
//
//  Created by MILLER, Maximilian on 29/12/2021.
//  Copyright © 2021 Balaji. All rights reserved.
//

import SwiftUI

struct ComputerScienceDetailView: View {
    var body: some View {
        Text("What makes a good applicant?")
        
        Text("""
             Strong science and Maths
             background with evidence
             of logical thinking and
             problem-solving skills;
             IT skills; teamwork and good
             communication /negotiation
             skills; evidence of interest
             outside the classroom;
             work experience.
            """)
        
        Text("Suggestions for extra / super / curricular activities")
        
        Text("""
             Extended Essay; online
             courses; reputable websites;
             CAS: any activity that
             demands working closely
             with other people and builds
             awareness of the broader
             society; work experience in
             engineering firms.
            """)
        
    }
}

struct ComputerScienceDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ComputerScienceDetailView()
    }
}
