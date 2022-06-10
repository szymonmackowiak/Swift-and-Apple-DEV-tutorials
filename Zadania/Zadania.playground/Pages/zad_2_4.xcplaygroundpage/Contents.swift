/* Zadanie 2.4
 Rozważ następującą listę:
 
 data = [1, 1, 3, 2, 4, 6, 5, 3, 2, 1, 6, 50, 2, 3]
 
 Napisz program, który:
 - wyświetli utworzoną listę
 - określi i wyświetli długość listy (liczbę przechowywanych elementów) (atrybut count),
 - wyświetli 4 pierwsze wartości (operator ... lub ..<),
 - sprawdzi czy lista zawiera wartość 6 (metoda contains),
 - wstawi na miejsce po trzecim elemencie wartość -100 (metoda insert) i wyświetli zaktualizowaną listę,
 - usunie ostatni element w liście (metoda removeLast()) i wyświetli zaktualizowaną listę,
 - usunie pierwszy element z listy (metoda removeFirst()) i wyświetli zaktualizowaną listę,
 - utworzy kopię listy dane i odwróci ich kolejność (metoda reverse()) i wyświetli otrzymaną listę,
 - utworzy kopię listy dane i posortuje jej elementy (metoda sort()) i wyświetli otrzymaną listę.
 */

var data: [Int] = [1, 1, 3, 2, 4, 6, 5, 3, 2, 1, 6, 50, 2, 3]

print("Stored data: \(data)")
print("List size: \(data.count)")
print("Fist 4 elements (version 1): \(data[0...3])")
print("Fist 4 elements (version 2): \(data[..<4])")
data.contains(6)
data.insert(-100, at: 3)
print("-100 added: \(data)")
data.removeLast()
print("Last removed: \(data)")
data.removeFirst()
print("First removed: \(data)")

var dataFirstCopy = data
dataFirstCopy.reverse()
print("Reversed copy: \(dataFirstCopy)")

var dataSecondCopy = data
dataSecondCopy.sort()
print("Sorted copy: \(dataSecondCopy)")

