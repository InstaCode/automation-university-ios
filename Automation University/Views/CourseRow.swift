//
//  CourseRow.swift
//  Automation University
//
//  Created by Jason Edstrom on 6/19/21.
//  Copyright © 2021 InstaCode. All rights reserved.
//

import SwiftUI

struct CourseRow: View {
    var course: Course
    var body: some View {
        HStack{
            Text("\(course.department)-\(course.code)")
            Text(course.title)
            Spacer()
        }.eraseToAnyView()
        
    }
}

struct CourseRow_Previews: PreviewProvider {
    static var previews: some View {
        
        Group{
            CourseRow(course: courses[0])
            CourseRow(course: courses[1])
            CourseRow(course: courses[2])
        }.previewLayout(.fixed(width: 400, height: 70))
       
    }
}
