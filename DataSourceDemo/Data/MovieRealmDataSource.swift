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

class MovieRealmDataSource: DataSource {
    
    private let realm = try! Realm()
    
    func getAllItems() -> [Movie] {
        return realm.objects(RealmMovie.self).map{ $0.entity }
    }
    
    func getItemById(id: String) -> Movie {
        let predicate = NSPredicate(format: "imdbId = %@", id)
        return realm.objects(RealmMovie.self).filter(predicate).first!.entity
    }
    
    func insert(item: Movie) {
        try! realm.write {
            realm.add(RealmMovie(movie: item))
        }
    }
    
    func update(item: Movie) {
        try! realm.write {
            realm.add(RealmMovie(movie: item), update: true)
        }
    }
    
    func clean() {
        try! realm.write {
            realm.delete(realm.objects(RealmMovie.self))
        }
    }
    
    func deleteItemById(id: String) {
        let predicate = NSPredicate(format: "imdbId = %@", id)
        let item = realm.objects(RealmMovie.self).filter(predicate).first
        try! realm.write {
            realm.delete(item!)
        }
    }
}

