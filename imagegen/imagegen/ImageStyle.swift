//
//  ImageStyle.swift
//  imagegen
//
//  Created by Danyal Nemati on 11/1/23.
//

import Foundation

enum ImageStyle: String,CaseIterable {
    case realism
    case Anime
    case threeDRender
    case surrealism
    case retro
    
    var title: String{
        switch self {
        case .realism:
            return "Realism"
        case .Anime:
            return "Anime"
        case .threeDRender:
            return "3D Render"
        case .surrealism:
            return "Surrealism"
        case .retro:
            return "Retro"        }
            
        }
    }

