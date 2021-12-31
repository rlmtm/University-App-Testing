//
//  LawDetailView.swift
//  Login Screen
//
//  Created by MILLER, Maximilian on 29/12/2021.
//  Copyright © 2021 Balaji. All rights reserved.
//

import SwiftUI

struct LawDetailView: View {
    var body: some View {
        Text("What makes a good applicant?")
        
        Text("""
             Evidence of a strong
             academic profile with
             challenging subjects;
             evidence of strong oral
             and written communication
             skills; evidence of strong
             reading skills; knowledge
             of current affairs; interest in
             fairness and justice; understanding of basics of justice
             system; enjoyment of
             debate; negotiation skills;
             critical thinking skills; work
             experience.
            """)
        
        Text("Suggestions for extra / super / curricular activities")
        
        Text("""
             Extended Essay in subject
             where you deal with primary
             sources (English Lit, History,
             Economics); read quality
             newspapers regularly; read
             Law books in Careers section
             of library; read widely;
             Student Council; CAS: MUN;
             Amnesty International;
             Refugee Camp; Tafel;
             student newspaper.
            """)    }
}

struct LawDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LawDetailView()
    }
}
