import Foundation
import SwiftUI

struct DateView: View {
    @EnvironmentObject var quizViewModel: QuizViewModel
    @Binding var navigationPath: NavigationPath
    @State private var date = Date()

    var body: some View {
        ZStack(alignment: .top) {
            VStack {
                Text("WHAT DATE?")
                    .font(.title2)
                    .fontWeight(.bold)
                DatePicker("Start Date", selection: $date, displayedComponents: [.date])
                    .datePickerStyle(.graphical)
                
                // Direct NavigationLink to PeopleCount
                NavigationLink(destination: PeopleCount(navigationPath: $navigationPath).environmentObject(quizViewModel)) {
                    Text("Next")
                        .padding()
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 20, style: .continuous)
                                        .fill(.purple))
                }
            }
        }
    }
}

// Preview
struct DateView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView { // Wrap DateView in NavigationView for preview
            DateView(navigationPath: .constant(NavigationPath()))
                .environmentObject(QuizViewModel())
        }
    }
}
