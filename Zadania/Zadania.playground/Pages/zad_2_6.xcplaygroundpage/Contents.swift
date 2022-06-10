/* Zadanie 2.6
 
 Utwórz krotkę z etykietami danych. Niech zawiera 4 elementy typu tekstowego (String). Odczytaj jej zawartość zarówno korzystając z indektów oraz z etykiet.
 
 */

var myTuple = (label_1: "txt_1", label_2: "txt_2", label_3: "txt_3", label_4: "txt_4")

print("Elements of the tuple: \(myTuple)")

print("List of elements using index:")
print(myTuple.0)
print(myTuple.1)
print(myTuple.2)
print(myTuple.3)

print("List of elements using label:")
print(myTuple.label_1)
print(myTuple.label_2)
print(myTuple.label_3)
print(myTuple.label_4)


