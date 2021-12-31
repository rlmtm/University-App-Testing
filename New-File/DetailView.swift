//
//  DetailView.swift
//  Loading View
//
//  Created by MILLER, Maximilian on 26/12/2021.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        ZStack {
        /*Image("Image3")
            .resizable()
            .frame(maxWidth: 400, minHeight: 920)*/
        ScrollView  {
            Rectangle()
                .frame(width: 400, height: 60, alignment: .center)
                .opacity(0)
            VStack(alignment: .leading, spacing: 8) {
                Image("1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 128.0)
                    .frame(maxWidth: .infinity)
                Text("General Information")
                    .font(.title)
                    .fontWeight(.bold)
                Text("This section will explain about the information needed for universities...")
                    .lineLimit(2)
                    .opacity(0.7)
                Text("10 sections - 3 hours")
                    .opacity(0.7)
            }
            .foregroundColor(.white)
            .padding(20)
            .background(LinearGradient(gradient: Gradient(colors: [.purple, .pink]), startPoint: .topTrailing, endPoint: .bottom))
            
            VStack(alignment: .leading, spacing: 10) {
                Text("This information refers to the 24 Russell Group universities, the 24 top large research institutions, in the UK but is a good rough guide to requirements generally.")
                    .font(.system(size: 12))
                    .font(.headline)
                
                ZStack {
                    Rectangle()
                        .frame(width: 370, height: 30, alignment: .leading)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                    Text("Which Subjects?")
                        .font(.title2).bold()
                        .frame(width: 360, height: 60, alignment: .leading)

                }
                
                ZStack {
                    Rectangle()
                    .frame(width: 370, height: 60, alignment: .center)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    
                    Text("Entrance requirements for individual courses vary and this table should be used in conjunction with more detailed information on university websites.")
                        .font(.system(size: 14))
                        .frame(width: 360, height: 60, alignment: .center)
                }
                    
                ZStack {
                    Rectangle()
                    .frame(width: 370, height: 90, alignment: .center)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    
                    Text("IMPORTANT: Universities may require a minimum of grade 4 MYP in Mathematics, English and (sometimes) Science for entry to Bachelor degree courses. These requirements are sometimes higher and it is always important to check this when researching courses.")
                        .font(.system(size: 13))
                        .frame(width: 360, height: 110, alignment: .center)
                }
                
                ZStack {
                    Rectangle()
                    .frame(width: 370, height: 140, alignment: .center)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    
                    Text("STUDENTS WHO WANT TO KEEP THEIR OPTIONS OPEN: The following subjects have been called “facilitating subjects.” They are required morethan any other subjects in university  applications: Mathematics HL / SL; English Literature / Language and Literature; Physics,Biology, Chemistry, Geography, History, Modern Languages. A selection of these is advisable in any IB Diploma subject package.")
                        .font(.system(size: 13))
                        .frame(width: 360, height: 160, alignment: .center)
                }
                
                ZStack {
                    Rectangle()
                    .frame(width: 370, height: 140, alignment: .center)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    
                    Text("IT’S NOT JUST A NUMBERS GAME: Increasingly, universities are looking for academic rigour. This is particularly the case in the U.S. and competitive UK universities which may prefer slightly lower grades in more demanding courses to high grades in “easy” ones. The London School of Economics, for example, prefers students with “significant prior knowledge” of a language to take Language A rather than Language B options.")
                        .font(.system(size: 13))
                        .frame(width: 360, height: 160, alignment: .center)
                }
                
                ZStack {
                    Rectangle()
                    .frame(width: 370, height: 140, alignment: .center)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    
                    Text("""
                         To maintain the best academic record of which you are capable;
                         ● To carry out the detailed research necessary to make an informed and appropriate choice of course or career path;
                         ● To consult with your parents and ensure that they are informed of your plans and support them;
                         ● To take advantage of the many opportunities offered by BIS to meet university representatives and career experts by attending fairs, BIS college visits and Career Day (advertised via email on ManageBac, IB assemblies and University Updates);
                         ● To register and practise for any tests required by universities, such as SAT, TOEFL or TSA;
                         ● To build a strong personal profile to support your personal development and create the basis for excellent applications;
                         ● To plan your applications, fulfil ZAST requirements and check German language requirements if you plan to study in Germany, and allow yourself and your university counsellor plenty of time to complete all requirements;
                         ● To keep all appointments and deadlines, both those set by the counsellors and by the universities;
                         ● To assist your referees by talking to them about your plans, filling in any required forms and informing them of your offers;
                         ● To request documents at least three weeks in advance of need
                         """)
                        .font(.system(size: 13))
                        .frame(width: 360, height: 420, alignment: .center)
                }
                
                ZStack {
                    Rectangle()
                    .frame(width: 370, height: 140, alignment: .center)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    
                    Text("""
                         University Qualifications:
                         ● Degree: a qualification earned at university.
                         ● Associate’s degree (United States): awarded after two years of study at
                         university.
                         ● Bachelor degree: awarded after three or four years of full time study at
                         university.
                         ● Bachelor of Arts (BA): the qualification most often awarded after completing a degree course in the arts, humanities and some social sciences.
                         ● Bachelor of Science (BSc.): the qualification most often awarded after completing
                         a degree course in sciences and some social sciences.
                         ● Honours degree: Bachelor degree qualifications that include a dissertation
                         (research essay) or research project in the final year.
                         ● Joint Honours or Combined Honours degree: awarded if you have studied two
                         subjects often divided 50/50 in terms of workload.
                         ● Double degree: awarded to students who have completed two degrees in
                         parallel.
                         ● LLB: Bachelor of Law degree that will enable you to continue Law training to
                         become a barrister or solicitor.
                         ● MB ChB (UK): Bachelor of Medicine / Bachelor of Surgery.
                         ● Foundation Degree (UK): a two-year, work related qualification often designed in
                         collaboration with employers. You can “top up” to a full degree by spending
                         another year at university.
                         ● Sandwich degree (UK): a degree course which includes a year of (paid) internships.
                         """)
                        .font(.system(size: 13))
                        .frame(width: 360, height: 550, alignment: .center)
                }
                
                ZStack {
                    Rectangle()
                    .frame(width: 370, height: 140, alignment: .center)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    
                    Text("Three essential areas for successful university applications: Successful university applications are rarely just about academic grades – although these are obviously important.")
                        .font(.system(size: 13))
                        .frame(width: 360, height: 70, alignment: .center)
                }
                
                ZStack {
                    Rectangle()
                    .frame(width: 370, height: 140, alignment: .center)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    
                    Text("""
                        ● Your academic profile: be responsible for your transcript
                        ● Your interest profile: “super – curricular activities”
                        ● Your personal profile: CAS programme and hobbies
                        """)
                        .font(.system(size: 13))
                        .frame(width: 360, height: 100, alignment: .center)
                }
                /*
                ZStack {
                    Rectangle()
                    .frame(width: 370, height: 140, alignment: .center)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    
                    Text("Universities around the world")
                        .font(.system(size: 13))
                        .frame(width: 360, height: 160, alignment: .center)
                }
                
                ZStack {
                    Rectangle()
                    .frame(width: 370, height: 140, alignment: .center)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    
                    Text("""
                         Asia:
                         The Japanese Government is sponsoring the Global 30 project which offers high scoring
                         international students an inexpensive and high- quality education in English; see the
                         Ministry of Foreign Affairs website below. Hong Kong universities offer world-class
                         education, with the chance of learning Chinese. Some of the Hong Kong Universities
                         are ranked highly on the “Times Higher Education Supplement” listings.
                        """)
                        .font(.system(size: 13))
                        .frame(width: 360, height: 160, alignment: .center)
                }
                
                ZStack {
                    Rectangle()
                    .frame(width: 370, height: 140, alignment: .center)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    
                    Text("""
                         Australia/New Zealand:
                         Application to Australian universities is done through the educational authorities of the
                         various territories. A student applies to the territory where the university is situated for
                         admissions consideration. The school year in Australia begins in February. Work needs to
                         begin on applications no later than September for the February entry date. The first step
                         in applying to an Australian university if you are a non–Australian national is to contact
                         International Development Program (IDP) Education Australia. IDP provides a “one stop
                         shop” for Australian education.
                         Applications for New Zealand need to be submitted in September for the March entry
                         date. The Embassy provides information and applications.
                        """)
                        .font(.system(size: 13))
                        .frame(width: 360, height: 160, alignment: .center)
                }
                
                ZStack {
                    Rectangle()
                    .frame(width: 370, height: 140, alignment: .center)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    
                    Text("""
                         Canada:
                         Canada universities are very IB friendly, and many offer opportunities for scholarships.
                         Compared to the US, there is a real distinction between a “college” and a “university”.
                         Generally speaking, “colleges” offer technical and vocational training while “universities”
                         is the term used to refer to schools offering Bachelor degrees and beyond. Applications
                         are usually due between January and April prior to the September entry date. There is an
                         application portal for schools in Ontario. SATs are generally not required (but may be
                         helpful); TOEFL or IELTS may be required.
                        """)
                        .font(.system(size: 13))
                        .frame(width: 360, height: 160, alignment: .center)
                }
                
                ZStack {
                    Rectangle()
                    .frame(width: 370, height: 140, alignment: .center)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    
                    Text("""
                         Europe:
                         Most universities in Germany and Austria expect applications to be completed after
                         school has finished in June. You need to have a clear understanding of what documentation you need before applying for admission for all European universities.
                        """)
                        .font(.system(size: 13))
                        .frame(width: 360, height: 160, alignment: .center)
                }
                
                ZStack {
                    Rectangle()
                    .frame(width: 370, height: 140, alignment: .center)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    
                    Text("""
                         United Kingdom:
                         Applications for the UK must be completed by BIS students by the beginning of December.
                         However, for Medicine, Veterinary Sciences and Dentistry as well as applications to Oxford
                         and Cambridge, students must apply by the beginning of October in Grade 12 if they wish
                         to be considered for a place the following September. For universities in the UK, you are
                         required to indicate your course of study at the time you apply. If you decide to change
                         your course of study after your first year, you will probably have to reapply through UCAS
                         for the new course. Offers of admission in the UK are contingent upon meeting certain
                         conditions. The major factor in UK admissions is how well you have done on your external
                         examinations
                        """)
                        .font(.system(size: 13))
                        .frame(width: 360, height: 160, alignment: .center)
                }
                
                ZStack {
                    Rectangle()
                    .frame(width: 370, height: 140, alignment: .center)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    
                    Text("""
                         USA:
                         There are three application times for the USA. Early Decision or Early Action: applications
                         generally need to be made between October and November. Documentation must be
                         completed online, with some documents sent by mail. Regular Decision: most applications to US universities are made between December and February for acceptance on
                         courses starting in September of the same year. For some courses, students can begin
                         classes at the start of the second semester, which is January of the year following IB
                         graduation. Whether a University or College has an admissions entry point in the second
                         trimester needs to be checked on each individual university website.
                        """)
                        .font(.system(size: 13))
                        .frame(width: 360, height: 160, alignment: .center)
                }
                
                ZStack {
                    Rectangle()
                    .frame(width: 370, height: 140, alignment: .center)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    
                    Text("Question to ask yourself to choose the right university:")
                        .font(.system(size: 13))
                        .frame(width: 360, height: 160, alignment: .center)
                }
                
                ZStack {
                    Rectangle()
                    .frame(width: 370, height: 140, alignment: .center)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    
                    Text("""
                        1. Do you need/want to live at home while studying at university?
                        2. How far away from home are you prepared to go?
                        3. Which of the following locations would you find most attractive?
                        4. How much would it cost to travel to and from home/intended residence to the different universities you are interested in?
                        5. Would you prefer a self-contained campus or one with buildings spread over a town
                        / city?
                        6. Would you prefer a small (under 2,500), medium (up to 15,000) or large (over 15,000)
                        college or university?
                        7. Do you want to live on campus in a student dorm for the first year or two of university?
                        8. Is the opportunity to work in small classes with regular personal access to lecturers /
                        professors important to you?
                        9. Do you prefer coursework assessment, examination assessment or a mix of both?
                        Would you prefer a more theoretical or a more practice-based course
                        10.What kind of intellectual environment would you prefer? Demanding and competitive?
                        More supportive and collegial?
                        11. Are you interested in a career-related major (e.g. engineering, nursing, business, hotel
                        or event management)?
                        12. Would you like internship, study abroad or work abroad opportunities to be included
                        in your Bachelor programme?
                        13. How important is an internationally diverse environment to you?
                        14.What specific extra- curricular opportunities are you looking for (e.g. sports, music,
                        drama, art, student journalism, political / religious clubs)? Give details.
                        15.Do you require a scholarship? This may guide your application process.
                        16.Are you climate sensitive or can you adapt to any climate?
                        17. Do you have any health considerations that require you to be near a sophisticated
                        health centre or allergies that may be improved or worsened by the location?
                        18.Do you need special support services for learning disabilities (e.g. dyslexia)?
                        19.Do you have certain cultural or religious requirements? For example, a church /
                        synagogue / mosque / temple?
                        20. Do your parents have any requirements? Do consult with them!
                        """)
                        .font(.system(size: 13))
                        .frame(width: 360, height: 160, alignment: .center)
                }
                */
                
                /*Rectangle()
                    .frame(width: 300, height: 60, alignment: .center)
                    .opacity(0)*/
            }
            .foregroundColor(.black)
            .padding(15)
        }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
