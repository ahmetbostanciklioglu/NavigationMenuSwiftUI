import SwiftUI

struct ContentView: View {
    @State private var isMenuOpen: Bool = false
    var body: some View {
        GeometryReader { geometry in
            let drawerWidth = geometry.size.width / 1.6
            ZStack(alignment: .leading) {
                HomeView()
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .offset(x: isMenuOpen ? drawerWidth : 0)
                    .disabled(isMenuOpen)
                
                BlackBackground
                
                MenuView(width: geometry.size.width, isMenuOpen: $isMenuOpen)
                    .offset(x: isMenuOpen ? 0 : -drawerWidth)
                    .frame(width: drawerWidth)
            }
        }
    }
    
    @ViewBuilder
    func HomeView() -> some View {
        NavigationView {
            List (0..<5){ _ in
                Text("Hello")
            }
            .navigationTitle(Text("Home"))
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        withAnimation(.spring) {
                            isMenuOpen = true
                        }
                    } label: {
                        Image(systemName: Constants.menuIconName)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 16)
                            .padding(4)
                            .foregroundStyle(.blue)
                    }
                }
            }
        }
    }
    
    @ViewBuilder
    var BlackBackground: some View {
        if isMenuOpen {
            Color.black
                .opacity(0.3)
                .ignoresSafeArea()
                .onTapGesture {
                    withAnimation(.spring) {
                        isMenuOpen = false
                    }
                }
        }
    }
    
}

#Preview {
    ContentView()
}
