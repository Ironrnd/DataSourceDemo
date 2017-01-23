/**
 MIT License
 
 Copyright (c) 2017 José María Ila
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
 */

import Foundation

typealias Genres = [Int: String]
typealias ProductionCompanies = [Int: String]
typealias ProductionCountries = [String: String]
typealias SpokenLanguages = [String: String]

struct Movie {
    
    let title: String
    let originalTitle: String
    let releaseDate: String
    let adult: Bool
    let video: Bool
    let budget: Int
    let genres: Genres?
    let homePage: String
    let imdbId: String
    let productionCompanies: ProductionCompanies?
    let productionCountries: ProductionCountries?
    let revenue: Int
    let runtime: Int
    let spokenLanguages: SpokenLanguages?
    let status: String
    let tagline: String
}
