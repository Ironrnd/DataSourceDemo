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
import RealmSwift

class RealmMovie: Object {
    
    dynamic var title: String = ""
    dynamic var originalTitle: String = ""
    dynamic var releaseDate: String = ""
    dynamic var adult: Bool = false
    dynamic var video: Bool = false
    dynamic var budget: Int = 0
    dynamic var genres: Genres?
    dynamic var homePage: String = ""
    dynamic var imdbId: String = ""
    dynamic var productionCompanies: ProductionCompanies?
    dynamic var productionCountries: ProductionCountries?
    dynamic var revenue: Int = 0
    dynamic var runtime: Int = 0
    dynamic var spokenLanguages: SpokenLanguages?
    dynamic var status: String = ""
    dynamic var tagline: String = ""
    
    var entity: Movie {
        
        return Movie(title: title,
                     originalTitle: originalTitle,
                     releaseDate: releaseDate,
                     adult: adult,
                     video: video,
                     budget: budget,
                     genres: genres,
                     homePage: homePage,
                     imdbId: imdbId,
                     productionCompanies: productionCompanies,
                     productionCountries: productionCountries,
                     revenue: revenue,
                     runtime: runtime,
                     spokenLanguages: spokenLanguages,
                     status: status,
                     tagline: tagline)
    }
    
    convenience init(movie: Movie) {
        
        self.init()
        
        title = movie.title
        originalTitle = movie.originalTitle
        releaseDate = movie.releaseDate
        adult = movie.adult
        video = movie.video
        budget = movie.budget
        genres = movie.genres
        homePage = movie.homePage
        imdbId = movie.imdbId
        productionCompanies = movie.productionCompanies
        productionCountries = movie.productionCountries
        revenue = movie.revenue
        runtime = movie.runtime
        spokenLanguages = movie.spokenLanguages
        status = movie.status
        tagline = movie.tagline
        
    }
}
