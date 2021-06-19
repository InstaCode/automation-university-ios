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
                    Text("4").font(.largeTitle)
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
        CourseDetail()
    }
}
