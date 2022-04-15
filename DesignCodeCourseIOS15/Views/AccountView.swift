//
//  AccountView.swift
//  DesignCodeCourseIOS15
//
//  Created by Sergiy Brotsky on 04.04.2022.
//

import SwiftUI

struct AccountView: View {
    @State var isDeleted = false
    @State var isPin = true
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView {
            List {
                profile
                menu
                links
            }
            .listStyle(.automatic)
            .navigationTitle("Account")
            .navigationBarItems(trailing: Button{presentationMode.wrappedValue.dismiss()}label: {
                Text("Done").bold()
            })
        }
    }
    
    
    var profile: some View{
        VStack(spacing: 8){
            Image(systemName: "person.crop.circle.fill.badge.checkmark")
                .symbolVariant(.circle.fill)
                .font(.system(size: 32))
                .symbolRenderingMode(.palette)
                .foregroundStyle(.blue, .black)
                .padding()
                .background(Circle().fill(.ultraThinMaterial))
                .background(
                    HexagonView()
                        .offset(x: -50, y: -100)
                )
                .background(
                    BlobView()
                        .offset(x: 200, y:0)
                        .scaleEffect(0.6)
                )
            Text("Sergiy Brotsky")
                .font(.title.weight(.semibold))
            HStack{
                Image(systemName: "location")
                    .imageScale(.large)
                Text("Ukraine")
                    .foregroundColor(.secondary)
            }
        }
        .frame(maxWidth: .infinity)
        .padding()
    }
    var menu: some View{
        Section {
            NavigationLink(destination: HomeView()) {
                Label("Settings", systemImage: "gear")
            
            }
            NavigationLink {HomeView()} label: {
                Label("Billing", systemImage: "creditcard")
            }
            NavigationLink {HomeView()} label: {
                Label("Help", systemImage: "questionmark")
                    .imageScale(.small)
            }
        }
        .accentColor(.primary)
        .listRowSeparator(.hidden)

    }
    
    var links: some View{
        Section {
            if !isDeleted {
                Link(destination: URL(string: "https://apple.com")!){
                    HStack {
                        Label("WebSite", systemImage: "house")
                        Spacer()
                        Image(systemName: "link")
                            .foregroundColor(.secondary)
                    }
                }
                .swipeActions(edge: .leading, allowsFullSwipe: true ) {
                    Button{
                        withAnimation {
                            isDeleted = true
                        }
                        
                    }label: {
                        Label("Delete", systemImage: "trash")
                    }
                    .tint(.red)
                    pinButton
                 
            }
            }
            Link(destination: URL(string: "https://apple.com")!){
                HStack {
                    Label("Youtube", systemImage: "tv")
                    Spacer()
                    Image(systemName: "link")
                        .foregroundColor(.secondary)
                }
            }
            .swipeActions {
                pinButton
            }
        }
        .accentColor(.primary)
    }
    var pinButton: some View{
        Button{
            isPin.toggle()
        }label: {
            if isPin{
                Label("Pin", systemImage: "pin")
            }else{
                Label("Pin", systemImage: "pin.slash")
            }
            
        }
        .tint( isPin ? .gray  : .yellow)
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
