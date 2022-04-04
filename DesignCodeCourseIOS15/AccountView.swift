//
//  AccountView.swift
//  DesignCodeCourseIOS15
//
//  Created by Sergiy Brotsky on 04.04.2022.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        NavigationView {
            List {
                VStack(spacing: 8){
                    Image(systemName: "person.crop.circle.fill.badge.checkmark")
                        .symbolVariant(.circle.fill)
                        .font(.system(size: 32))
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.blue, .black)
                        .padding()
                        .background(Circle().fill(.ultraThinMaterial))
                        .background(
                            Image(systemName: "hexagon")
                                .symbolVariant(.fill)
                                .foregroundStyle(.blue)
                                .font(.system(size: 200))
                                .padding()
                                .offset(x: -50, y: -100)
                        )
                    Text("Serginy Brotsky")
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
                Section {
                    NavigationLink(destination: ContentView()) {
                        Label("Settings", systemImage: "gear")
                    
                    }
                    NavigationLink {ContentView()} label: {
                        Label("Billing", systemImage: "creditcard")
                    }
                    NavigationLink {ContentView()} label: {
                        Label("Help", systemImage: "questionmark")
                            .imageScale(.small)
                    }
                }
                .accentColor(.primary)
                .listRowSeparator(.hidden)
                
                Section {
                    Link(destination: URL(string: "https://apple.com")!){
                        HStack {
                            Label("WebSite", systemImage: "house")
                            Spacer()
                            Image(systemName: "link")
                                .foregroundColor(.secondary)
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
                }
                .accentColor(.primary)
                
                
            }
            .listStyle(.automatic)
            .navigationTitle("Account")
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
