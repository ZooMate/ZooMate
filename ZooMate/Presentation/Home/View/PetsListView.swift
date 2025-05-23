//
//  PetsListView.swift
//  ZooMate
//
//  Created by Song Kim on 5/23/25.
//

import SwiftUI

struct PetsListView: View {
    @StateObject var viewModel = MainHomeController()
    
    let columns = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(viewModel.dummyPets) { pet in
                    PetCardCell(pet: pet)
                }
            }
            .padding(16)
        }
    }
}


#Preview {
    PetsListView()
}
