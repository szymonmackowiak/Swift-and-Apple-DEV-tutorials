/* Zadanie 2.2
 Utwórz listę i wprowadź do niej 5 wartości całkowitych. Następnie, za pomocą polecenia print i konstrukjci \() wyświetl pierwszy i ostatni element. Zaproponuj dwa sposoby wykonania tego zadania.
 */

var values: [Int] = []

values.append(1)
values.append(22)
values.append(333)
values.append(4444)
values.append(55555)

print("The first value: \(values[0])")
print("The first value: \(values[values.startIndex])")

print("The last value: \(values[values.count-1])")
print("The last value: \(values[values.endIndex-1])")

values.startIndex


