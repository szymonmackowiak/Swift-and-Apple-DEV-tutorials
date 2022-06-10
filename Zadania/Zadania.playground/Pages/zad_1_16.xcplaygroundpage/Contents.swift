/* Zadanie 1.6
 Napisz program który podliczy wartość zamówienia, na podstawie danych dot. sztuk/ilości produktów (masło [szt.], chleb [szt.], jabłka [kg]) z uwzględnieniem cennika (masło 7.5/szt., chleb: 7 zł/szt. jabłka 3.15 zł/kg).
 */

var howManyButter: Double = 2
var howManyBreads: Double = 3
var howManyApples: Double = 3

var butterPrice: Double = 7.5
var breadPrice: Double = 7
var applesrPrice: Double = 3.15

var totalPrice: Double = howManyButter * butterPrice + howManyBreads * breadPrice + howManyApples * applesrPrice

print("You ordered \(howManyButter) pieces of butter, \(howManyBreads) breads and \(howManyApples) kilos of apples. Your total payment is \(totalPrice) PLN.")


