//
//  CourseList.swift
//  Automation University
//
//  Created by Jason Edstrom on 6/19/21.
//  Copyright © 2021 InstaCode. All rights reserved.
//

import SwiftUI

struct CourseList: View {
    var body: some View {
        NavigationView {
            List(courses, id: \.id){ course in
                NavigationLink(
                    destination: CourseDetail(course: course)) {
                    CourseRow(course: course)
                }
            } .navigationTitle("Courses")
        }
    }
}

struct CourseList_Previews: PreviewProvider {
    static var previews: some View {
        CourseList()
    }
}
