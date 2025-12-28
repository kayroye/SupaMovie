//
//  HomeView.swift
//  SupaMovie
//
//  Created by Kay Roye on 2025-12-27.
//

import SwiftUI

struct HomeView: View {
    var heroTestTitle = Constants.testTitleURL
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: heroTestTitle)) { image in
                image
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                ProgressView()
            }
            
            HStack {
                Button {
                    
                } label: {
                    Text(Constants.playString)
                        .ghostButton()
                }
                
                Button {
                    
                } label: {
                    Text(Constants.downloadString)
                        .ghostButton()
                }
            }
            
            HorizontalListView(header: Constants.trendingMovieString)
            HorizontalListView(header: Constants.trendingTVString)
            HorizontalListView(header: Constants.topRatedMovieString)
            HorizontalListView(header: Constants.topRatedTVString)
        }
    }
}

#Preview {
    HomeView()
}
