/* Zadanie 1.14
 Wydajność pewnej linii produkcyjnej wynosi 12 sztuk na minutę. Wartość jednego elementu to 0.45 PLN. Napisz program, któru na podstawie czasu w godzinach zwróci dane dotyczące liczby wyprodukowanych sztuk oraz wartości pieniężnej wyprodukowanej partii.
 */

var efficiency: Double = 12
var price: Double = 0.45
var time: Double = 10
var number: Double = efficiency * time * 60
var value: Double = number * price

print("In time \(time) h, the production line will produce \(number) elements, which value is \(value) PLN.")
