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
                    Text(course.title).font(.title)
                    Text("\(course.departmentId)-\(String(course.code))").font(.subheadline)
                }

                Spacer()
                VStack {
                    Text(String(course.credits)).font(.largeTitle)
                    Text("CREDITS").font(.subheadline)
                }
            }
            Divider()
            VStack {
                Text(course.description).italic().bold()
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

        let course = Course(credits: 4, departmentId: "ICS", code: 499, title: "Capstone Project", description: "<ICS-499 Capstone Description>", professorName: "Jim Jordan", locationName: "Walser Hall", roomNumber: "234")

        CourseDetail(course: course)
    }
}
