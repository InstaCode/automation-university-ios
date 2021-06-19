//
//  CourseDetail.swift
//  Automation University
//
//  Created by Jason Edstrom on 6/17/21.
//

import SwiftUI


struct CourseDetail: View {
    var course: Course
    
        var body: some View {
        VStack{
            Divider()
            HStack {
                VStack(alignment: .leading) {
                    Text("Course Name").font(.title)
                    Text("Course Identifier").font(.subheadline)
                }

                Spacer()
                VStack {
                    Text(course.credits).font(.largeTitle)
                    Text("CREDITS").font(.subheadline)
                }
            }
            Divider()
            VStack {
                Text("Course Description").italic().bold()
            }
        }
        .eraseToAnyView()
    
    
    }

    #if DEBUG
        @ObservedObject var iO = injectionObserver
    #endif
}

struct CourseDetail_Previews: PreviewProvider {
    static var previews: some View {

        let course = Course(credits: 4, departmentId: "ICS", courseCode: 499, courseTitle: "Capstone Project", courseDescription: "<ICS-499 Capstone Description>", professorName: "Jim Jordan", locationName: "Walser Hall", roomNumber: "234")

        CourseDetail(course: course)
    }
}
