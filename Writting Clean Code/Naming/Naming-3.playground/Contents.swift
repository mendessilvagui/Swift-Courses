import UIKit

func copyCharacters(source: Array<Character>, destination: inout Array<Character>) {
    for char in source {
        destination.append(char)
    }
}

var copiedCharacters: Array<Character> = []
copyCharacters(source: ["a", "b", "c", "d"], destination: &copiedCharacters)

struct Product {}

struct ProductInfo {}

struct ProductData {}

struct Customer {}

struct CustomerObject {} // Don't use OBJECT as name

struct CustomerData {}

func getPublishedArticle() {}
func getPublishedArticles() {}
func getPublishedArticleInfo() {}

let nameString: String = "" // String not necessary when naming the variable
