/* Zadanie 2.7
 Przypisz do zmiennej dowolne zdanie. Następnie sprawdź jakie metody możesz na nim wykonać. Możesz m. in.
 - dodać do zdania kolejną sekwencję znaków (metoda append)
 - zamienić wszystkie znaki na wielkie litery
 - zamienić wszystkie znaki na małe litery
 - sprawdzić ile liter ma zdanie
 */


var myText: String = "Moje zdanie, takie długie i takie złożone"

print("Zdanie - wersja pierwotna: \(myText)")

myText.append("!!!")

print("Zdanie - wersja z dodatkową frazą: \(myText)")

print("Zdanie - wielkie litery: \(myText.uppercased())")

print("Zdanie - małe litery: \(myText.lowercased())")

print("Liczba znaków w zdaniu: \(myText.count)")

