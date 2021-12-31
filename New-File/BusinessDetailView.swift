//
//  BusinessDetailView.swift
//  Login Screen
//
//  Created by MILLER, Maximilian on 29/12/2021.
//  Copyright © 2021 Balaji. All rights reserved.
//

import SwiftUI

struct BusinessDetailView: View {
    var body: some View {
        Text("What makes a good applicant?")
        
        Text("""
             Evidence of genuine interest
             in subjects outside the
             classroom; awareness of
             global affairs and how they
             affect economy; some
             knowledge of organisations
             and how they work; good
             maths skills; communication,
             teamwork and leadership
             skills; work experience
            """)
        
        Text("Suggestions for extra / super / curricular activities")
        
        Text("""
             Extended Essay and interesting coursework projects;
             Read around the subject e.g.
             The Economist; The Financial
             Times and business pages of
             quality newspapers; online
             courses.
             CAS: MUN, International
             Award; Refugee Camp; Tafel;
             Young Enterprise; Team
             sports; at least one but
             preferably two work
             experience projects in a
             company, bank or business
             organisation
            """)
    }
}

struct BusinessDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BusinessDetailView()
    }
}
