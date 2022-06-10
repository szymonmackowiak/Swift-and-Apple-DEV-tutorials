/* Zadanie 1.12
Napisz skrypt, który na podstawie danych dot. pokonanej drogi oraz średniego spalania samochodu (w litrach na 100 km) będzie wyświetlać informację na temat przewidywanego zużycia paliwa oraz o szacowanych kosztach podróży (cena paliwa 6 zł / l).
 */

var distance: Double = 200
var fuelConsumption: Double = 8.5
var fuelPrice: Double = 3.6

var consumption: Double = (distance / 100) * fuelConsumption
var totalCost: Double = consumption * fuelPrice

print("Your trip will consume \(consumption) liters of the fuel and will cost: \(totalCost) PLN.")
