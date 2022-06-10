/* Zadanie 1.7
 Napisz program, w którym do zmiennej imie przypiszesz swoje imię, a do zmiennej dzien przypiszesz aktualny dzień miesiąca, natomiast wynikiem działania programu będzie wyświetlenie komunikatu: „Witaj {Twoje imię} dzisiaj jest {aktualny dzień} dzień tego miesiąca!”. Wykonaj to zadanie na dwa sposoby - wprowadzając do instrukcji print kilka argumentów rozdzielonych przecinkami oraz za pomocą operatora \().
 */

var name = "Szymon"
var day = 4

print("Witaj", name, "!", "Dzisiaj jest", day, "dzień miesiąca!")

print("Witaj " + name + "! " + "Dzisiaj jest " + String(day) + " dzień miesiąca!")

print("Witaj \(name)! dzisiaj jest \(day) dzień miesiąca!")
