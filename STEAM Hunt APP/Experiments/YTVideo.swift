//
//  YTVideo.swift
//  STEAM Hunt APP
//
//  Created by Pari Gulati on 1/8/24.
//

import SwiftUI
import WebKit

struct VideoView: UIViewRepresentable {
    //let videoID: String
    let experiment: Experiment
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let youtubeURL = URL(string: "https://www.youtube.com/watch?v=\(experiment.video!)") else {return}
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: youtubeURL))
        }
    }
