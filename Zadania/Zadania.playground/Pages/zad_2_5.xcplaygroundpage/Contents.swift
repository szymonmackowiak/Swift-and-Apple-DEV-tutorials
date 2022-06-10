/* Zadanie 2.5
 Napisz program, w którym utworzysz krotkę, przechowującą zestaw pięciu czteroznakowych kluczy dostępu. Wyświetl jej pierwszy element. Wyświetl informację ile wszystkich elementów jest w krotce. Ćwiczenie wykonaj deklarując krotkę zarówno za pomocą polecenia var i let. Spróbuj podmienić lub usunąć wartość dowolnego elementu w krotce (korzystając np. z instrukcji krotka.indeks = inna_wartosc oraz krotka.remove(jakas_wartosc)). Sprawdź jakie metody możesz wykonać na krotce, a jakie nie. Uwaga: Krotki w Swift działają nieco inaczej niż w Pythone (można zmieniać jej zawartość lub nie, w zależności od tego, czy przy jej deklaracji użyjemy polecenia var czy let), niemniej raz utworzona krotka pilnuje swojego rozmiaru oraz typu danych elementów.
 */

print("Krotka deklarowana poleceniem var")
var varKeys = ("AAAAA", "BBBBB", "CCCCC", "DDDDD")
let howManyElementsVarKeys = Mirror(reflecting: varKeys).children.count - 1
print("The tuple has \(howManyElementsVarKeys) elements")
print("First element: \(varKeys.0)")
print("Let us set the first element to XXX")
varKeys.0 = "XXXX"
print("First element: \(varKeys.0)\n")

print("Krotka deklarowana poleceniem let")
let letKeys = ("AAAAA", "BBBBB", "CCCCC", "DDDDD")
let howManyElementsLetKeys = Mirror(reflecting: letKeys).children.count - 1
print("The tuple has \(howManyElementsLetKeys) elements")
print("First element: \(letKeys.0)")
print("Let us set the first element to XXX")
//letKeys.0 = "XXXX"
print("First element: \(letKeys.0)")





