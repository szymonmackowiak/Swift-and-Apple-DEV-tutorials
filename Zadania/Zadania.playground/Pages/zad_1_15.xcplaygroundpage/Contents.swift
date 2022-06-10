/* Zadanie 1.15
 Napisz program, który będzie pobierać od użytkownika wymiary trzech krawędzi prostopadłościanu, a następnie obliczy i wyświetli na ekranie jego objętość i całkowite pole powierzchni bocznej.
 */


var firstEdge: Double = 10
var secondEdge: Double = 12
var thirdEdge: Double = 14

var volume: Double = firstEdge * secondEdge * thirdEdge
var sideSurface: Double = 2 * firstEdge * secondEdge + 2 * firstEdge * thirdEdge + 2 * secondEdge * thirdEdge

print("The cuboid of edges: \(firstEdge), \(secondEdge), \(thirdEdge) has volume: \(volume), and lateral surface area: \(sideSurface)")

