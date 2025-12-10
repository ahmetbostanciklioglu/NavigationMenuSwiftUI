import SwiftUI

struct MenuView: View {
    var width: CGFloat
    @Binding var isMenuOpen: Bool
    var body: some View {
        VStack {
            CloseButton
            ForEach(0..<4) { index in
                HStack(spacing: 12) {
                    Image(systemName: Constants.imageList[index])
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 24, height: 24)
                        .symbolRenderingMode(.multicolor)
                    
                    Text(Constants.textList[index])
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding()
            }
            Spacer()
        }
        .frame(maxWidth: width / 1.6, maxHeight: .infinity)
        .background(.white)
    }
    
    @ViewBuilder
    var CloseButton: some View {
        HStack {
            Spacer()
            Button {
                withAnimation(.spring) {
                    isMenuOpen = false
                }
            } label: {
                Image(systemName: Constants.closeIconName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 25, height: 25)
                    .symbolRenderingMode(.multicolor)
                    .padding(.trailing)
            }
            .padding()
            
        }
    }
}

#Preview {
    ContentView()
}
