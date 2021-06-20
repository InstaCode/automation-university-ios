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
        List(courses, id: \.id){ course in
            CourseRow(course: course)
        }
    }
}

struct CourseList_Previews: PreviewProvider {
    static var previews: some View {
        CourseList()
    }
}
