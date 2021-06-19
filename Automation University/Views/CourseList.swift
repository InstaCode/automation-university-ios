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
        List{
            CourseRow(course: courses[0])
            CourseRow(course: courses[1])
        }
    }
}

struct CourseList_Previews: PreviewProvider {
    static var previews: some View {
        CourseList()
    }
}
