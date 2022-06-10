# Kurs programowania w Swift - notatki

<b>Autor:</b> 
Szymon Maćkowiak

Literatura: 
1. Podręcznik Apple: "The Swift Programming Language - Swift 5.5 Edition"
2. Strona dokumentacji jezyka Swift: https://docs.swift.org
3. Strona z zasobami Apple dla programistów: https://developer.apple.com
4. Blog: https://www.hackingwithswift.com/
5. Strona: https://www.programiz.com/swift-programming

## Co to jest Swift?

Swift to współczesny język programowania opracowany przez firmę Apple. Umożliwia tworzenie oprogramowania na cały ekosystem urządzeń firmy Apple (iPhone, Mac, iPad, watch). Jednak programy napisane w języku Swift mogą byc wykorzystywane w innych systemach, a nawet na serwerach. Swift uchodzi za język bezpieczny i zoptymalizowany pod kątem wydajności i zastosowań biznesowych. Równocześnie jest przyjazny dla nowych programistów.

Najważniejsze cechy języka (dyktowane praktycznymi względami) to:

- zmienne są zawsze inicjalizowane przed wykorzystaniem,
- indeksy tablic są sprawdzane pod kątem wykraczania poza ich zakres,
- zmienne typu całkowitego są sprawdzane pod kątem przekroczenia zakresu,
- opcje (optionals) zapewniają, że wartości zerowe (nil - pusty zbiór lub lista) są obsługiwane wprost (explicite),
- pamięć jest zarządzana automatycznie,
- obsługa błędów pozwala na unikanie nieoczekiwanych awarii.

---
<b>Zadanie 1.</b>

Otwórz program Xcode i utwórz nowy projekt (Create a new Xcode project). Następnie zaznacz kartę macOS i wybierz opcję "Command Line Tool". W polu "Product Name" nadaj nazwę swojemu programowi, upewnij się, że w polu "Language" masz wybrany język programowania Swift i naciśnij przycisk "Next". Wybierz miejsce, w którym ma zostać zapisany i naciśnij przycisk "Create". W obszarze drzewa projektu po lewej stronie wybierz (przez kliknięcie) plik "main". Zmodyfikuj kod pliku w taki sposób, aby przywitał się ze światem w Twoim ojczystym języku. Uruchom program za pomocą przycisku strzałki i poczekaj na wyświetlenie wyniku na konsoli w dolnej części edytora.

Przykładowe rozwiązanie:
<pre>
import Foundation

print("Witaj Świecie!")
</pre>

---
Tym sposobem dochowaliśmy tradycji i napisaliśmy nasz pierwszy program w języku Swift - tzw. "Hello, World!".

## Komentowanie

Ważnym elementem każdego języka programowania jest możliwość komentowania kodu. W języku Swift możemy stosować komentarze jednoliniowe (//) oraz wieloliniowe (/* ... */). Przykład zastosowania komentarzy możesz zauważyć spoglądając na automatycznie wygenerowany nagłówek w Twoim pierwszym programie. 

## Tworzenie zmiennych

Przez zmienną będziemy rozumieć "słowo, do którego zapisane zostały pewne dane". W języku Swift mamy rozróżnienie na zmienne i stałe. 
Słowo kluczowe let służy do tworzenia stałych, a var do tworzenia zmiennych. Wartość stałej nie musi być znana w momencie kompilacji, ale należy dokonać przypisania do niej tylko raz (możemy z niej korzystać w wielu miejscach programu, ale przypisania wartości dokonujemy tylko raz). 

<pre>
var mojaZmienna = 12
mojaZmienna = 20
let mojaStala = 13
</pre>

Stała musi mieć ten sam typ co dane do niej wprowadzane, aczkolwiek nie zawsze trzeba wpisywać to wprost (explicite). Kompilator może sam się domyślić jakiego typu ma być stała (implicite, domyślnie). Jeżeli chcemy narzucić typ, możemy to zrobić wpisując po nazwie zmiennej (po dwukropku) żądany typ.

<pre>
let domyslnaCalkowita = 70
let domyslnaZmiennoprzecinkowa = 70.0
let wyraznaZmiennoprzecinkowa: Double = 70
</pre>

Zmianę typu możemy dokonać poprzedzając nazwę zmiennej nazwą żądanego typu (Int(), Double(), String(), itd.).

---

<b>Zadanie 2.</b>

W środowisku Xcode utwórz zmienną i stałą. Spróbuj zmienić wartość stałej. Wyniki wyświetl w konsoli. 

Przykładowe rozwiązanie:
<pre>
import Foundation

var myVariable: Double = 42
let zm2 = 50

myVariable = 43

print("Hello, World!", myVariable, zm2)
</pre>

<b>Zadanie 3</b>

Utwórz dwie dowolne zmienne i wyświetl w konsoli wynik następujących operacji (arytmetycznych): +, -, *, /, %. Nazwij operacje realizowane przez kolejne operatory.

Przykładowe rozwiązanie
<pre>
import Foundation

var myFirstVriable = 42
let mySecondVriable = 5

print(myFirstVriable + mySecondVriable) // 
print(myFirstVriable - mySecondVriable)
print(myFirstVriable * mySecondVriable)
print(myFirstVriable / mySecondVriable)
print(myFirstVriable % mySecondVriable)
</pre>

<b>Zadanie 4</b>

Utwórz dwie dowolne zmienne i wyświetl w konsoli wynik następujących operacji (logicznych): ==, !=, >, <, >=, <=. Nazwij operacje realizowane przez kolejne operatory.

Przykładowe rozwiązanie
<pre>
import Foundation

var myFirstVriable = 5
let mySecondVriable = 5

print(myFirstVriable == mySecondVriable) // 
print(myFirstVriable != mySecondVriable)
print(myFirstVriable > mySecondVriable)
print(myFirstVriable < mySecondVriable)
print(myFirstVriable >= mySecondVriable)
print(myFirstVriable <= mySecondVriable)
</pre>

---

Wartości nigdy nie są domyślnie konwertowane na inny typ. Jeżeli musimy dokonać konwersji na inny typ (rzutowanie), należy ustalić wyraźnie (explicite) żądany typ:

<pre>
let label = "Długość wynosi "
let length = 94
let length_label = label + String (length)
</pre>

---

Istnieje prostszy sposób na umieszczanie wartości w łańcuchu znaków - możemy wewnątrz łańcucha znaków użyć operatora "\\()". Wewnątrz opertora "\\()" można wykonywać również obliczenia na zmiennych. Z kolei operator potrójnego cudzysłowu """ umożliwia tworzenie wieloliniowych łańcuchów znaków.

---

<b>Zadanie 5</b>
Utwórz zmienną przechowującą aktualny rok, a następnie wyświetl komunikat o aktualnym roku z wykorzystaniem operatora \\().

Przykładowe rozwiązanie
<pre>
let year = 2022
print("Aktualnie trwa rok \(year)")
</pre>

---

<b>Zadanie 6</b>
Utwórz dwie zmienne przechowujące zawartość koszyka (5 jabłek i 3 banany), a następnie (korzystając z operatora \()) wyświetl zdanie  "W moim koszyku są X jabłka i Y banany." (gdzie X i Y to odpowiednie dane).

Przykładowe rozwiązanie
<pre>
let apples = 5
let bananas = 3
print("W moim koszyku są \(apples) jabłka i \(bananas) banany.")
</pre>

---

Do tworzenia list, tablic i słowników służy operator nawiasu kwadratowego [ ]. Dostęp do elementów listy odbywa się przez indeks, a do elementów słownika przez klucz. Swift indeksuje listy i krotki od 0:

<pre>
var myList = ["apples", "bananas", "potatoes"]
myList[1] = "oranges"
</pre>

<pre>
var romanNumbersDictionary = [
    "I" : 1,
    "II" : 2,
    "X" : 10,
]
romanNumbersDictionary["V"] = 5

</pre>

Kolejne elementy do list możemy dodawać korzystając z metody append. Listy automatycznie rosną w miarę dodawania do nich elementów.

<pre>
myList.append("bread")
print(myList)
</pre>

Tworzenie pustych list umożliwia składnia inicjalizacyjna:

<pre>
let myEmptyArray: [Int] = []
let myEmptyDictionary: [String: Int] = [:]
</pre>

Jeżeli typ danych może być wywnioskowany (np. w sytuacjach: gdy ustawia się nową wartość dla zmiennej lub przekazuje argument do funkcji) puste listy i słowniki można tworzyć korzystając z operatora [] i odpowiednio [:].

<pre>
myList = []
romanNumbersDictionary = [:]
</pre>

---

Sterowanie przepływem
---

W języku Swift do kontroli przepływu w programie możemy wykorzystać instrukcje warunkowe (if) lub przełączniku (switch). Z kolei w kontekście pętli mamy do dyspozycji następujące (for-in, while, repeat-while). Nawiasy wokół warunków lub zmiennych pętli są opcjonalne. Klamry wokół ciał warunków i pętli są obligatoryjne. 

<pre>
let studentScores = [23, 54, 88, 12]
var passingExam = 0

for score in studentScores {
    if score > 50 {
        passingExam = 1
    } else {
        passingExam = 0
    }

print("Liczba punktów \(score), czy zdane? \(passingExam)")
}
</pre>

Warunek w instrukcji if musi być wyrażeniem logicznym. Można korzystać z klauzuli if i let razem do pracy z brakującymi wartościami. Te wartości są reprezentowane jako opcjonalne. Wartość opcjonalna zawiera albo wartość albo obiekt nil aby wskazać, że danej wartości brakuje. Aby skorzystać z typu opcjonalnego należy użyć znaku zapytania (?) po typie wartości. 

Uzupełnienie: w języku Swift nil oznacza brak wartości. Przesłanie danych do nil skutkuje błędem programu.

Porównaj działanie poniższych programów:

<pre>
var myOptionalName: String?
print(myOptionalName == nil)
</pre>

Powyższy program zwraca wartość true.

<pre>
var myOptionalName: String? = "My Name"
print(myOptionalName == nil)
</pre>

Powyższy program zwraca wartość false.

<pre>
var myOptionalName: String? = nil
print(myOptionalName == nil)
</pre>

Powyższy program zwraca wartość true.

Jeżeli opcjonalna wartość w warunku jest równa nil, wartość logiczna warunku wynosi false, a kod bloku warunkowego zostanie pominięty.  

Wartość opcjonalną można zastąpić wartością domyślną. Umożliwia to operator podwójnego znaku zapytania (??). Aby przypisać do wartości opcjonalnej wartość domyślną, należy po jej nazwie użyć operatora ?? a za nim wartość bądź nazwę zmiennej, która ma zostać użyta jako domyślna.

<pre>
let nick: String? = nil
let name: String = "Nowak"
print("Hello \(nick ?? name)")
</pre>

Kolejną konstrukcją, która umożliwia kontrolę przepływu w programie jest instrukcja switch. Wspiera ona każdy rodzaj danych oraz szeroką różnorodność operacji porównania. 

<pre>

let fruit = "strawberry"

switch fruit{

    case "banana":
    print("banana is yellow")

    case "apple":
    print("apple is red")

    case "orange":
    print("oragne is orange")
    
default:
    print("I don't know the color")

}

</pre>

Usunięcie klauzuli default spowoduje wystąpienie błędu. 

Wejście do pasującego bloku i jego wykonanie w konstrukcji switch spowoduje wyjście poza blok i przejście do kolejnych części programu. Kolejne części bloku switch nie są sprawdzane ani wykonywane. Nie ma potrzeby wstawiania instrukcji break (jak np. w językach C / C++).

Ważną instrukcją sterującą jest również guard, która zostanie omówiona w części dot. pętli.

---

Pętle
---

Pętle służą do wykonywania fragmentu programu więcej niż raz. Jeżeli interesuje nas pętla wykonywana po uporządkowanej sekwencji, możemy skorzystać z pętli for:

<pre>
for i in 1...10 {
    print(i)
}
</pre>

Warto zwrócić uwagę, że w języku Swift wykonywany jest zarówno lewy i prawy zakres licznika pętli. 

Aby wykonać iterację po elementach słownika można skorzystać z pętli for-in:

<pre>

let romanNumbers = [
    "I": 1,
    "II": 2,
    "V": 5
]

for (i, j) in romanNumbers{
    print(i, j)
}

</pre>

Kolejną istotną pętlą, jest pętla while. Nie posiada ona wbudowanego licznika. Jest wykonywana o ile spełniony jest jej warunek (logiczny).

<pre>

var counter = 0
while (counter<20){
    print(counter)
    counter+=1
}

</pre>

Istnieje również odpowiednik do konstrukcji do...while znanych z języków C/C++ i nosi ona nazwę repeat:

<pre>

var m = 0
repeat{
    print(m)
    m += 1
} while m < 10

</pre>

W języku Swift instrukcje sterujące i pętle mogą być wzbogacone dodatkowo o instrukcje:
- break
- continue
- fallthrough
- return
- throw

Ważną konstrukcją obecną w języku Swift jest guard, która jest podobna do if - sprawdza ona zadany warunek i jeżeli nie został spełniony, wykonywana jest klauzula else. Jest nazywana instrukcją wczesnego wyjścia (Early Exit) i jest łączona z innymi klauzalami (continue, break, return...), dlatego może stanowić fragment ciała pętli.

<pre>
var x = 0

for i in 1...10 {
    guard i==8 else {
        print("I passed the GUARD \(i)-th time :D")
        continue
    }
    print("The GUARD caught me at \(i)-th time ;(")
    break

}
</pre>

Funkcje
---

Do deklarowania funkcji służy słowo kluczowe func. Funkcja posiada swoją nazwę, listę argumentów oraz informację o zwracanym typie danych (operator strzałki ->). Jeżeli funkcja nie zwraca niczego, można ją zdefiniować na kilka sposobów ( -> Void, {}, (){}):

<pre>

func firstHelloWorld() -> Void {
    print("Hello World no 1!")
}

firstHelloWorld()

func secondHelloWorld() {
    print("Hello World no 2!")
}

secondHelloWorld()

func thirdHelloWorld() -> () {
    print("Hello World no 3!")
}

thirdHelloWorld()

</pre>

Dodając argumenty, należy określić ich typ:

<pre>
func sayDayTo(name: String, day: String) -> String {
    return "\(name), today is \(day)!"
} 

var message = sayDayTo(name: "Simon", day: "Monday")
print(message)
</pre>

Domyślnie funkcje wykorzystują nazwy swoich argumentów jako etykiet, które należy podać przy wywoływaniu funkcji. Możliwe jest zdefiniowane argumentów bez etykiet za pomocą operatora "_" stawianego przed nazwą argumentu (w miejscu deklarowania funkcji).

<pre>
func sayDayTo(_ name: String, _ day: String) -> String {
    return "\(name), today is \(day)!"
}

var message = sayDayTo("Simon", "Monday")
print(message)
</pre>

Funkcja może zwracać więcej niż jedną wartość (obiekt) - w tym celu można skorzystać z krotek. Do elementów zwracanej krotki można odnosić się zarówno przez nawę bądź numer.

<pre>

func simpleStatistics(numbers: [Int]) -> (sum: Int, average: Double){
    
    var sum = 0
    var average = 0.0
    var counter = 0
    
    for i in numbers{
        sum = sum + i
        counter += 1
    }
    
    average = Double(sum)/Double(counter)
    
    return (sum, average)
}

let statistic = simpleStatistics(numbers: [1, 2, 3])

</pre>

Funkcje mogą być zagnieżdżone. Wewnętrzna funkcja ma dostęp do zmiennych i stałych zadeklarowanych we funkcji zewnętrznej. 

<pre>
func addFiveTwoTimes(_ number: Int) -> Int {
    
    var result = number + 5
    
    func addFive() {
        result += 5
    }
    
    addFive()
    
    return result
    
}

print(addFiveTwoTimes(5))
</pre>

Funkcja może zwrócić kolejną funkcję.

<pre>
func doIncrementation() -> ((Int) -> Int){
    func oneAddition(number: Int) -> Int {
        return number + 1
    }
    return oneAddition   
}
var myFunction = doIncrementation()
var result = myFunction(5)
print(result)

</pre>

Funkcja może przyjąć inną funkcję jako argument (np. przyjmowaną jako argument funkcją może być warunek logiczny - patrz przykład poniżej):

<pre>

func matches(numbers: [Int], condition: (Int) -> Bool) -> Bool {
    
    for i in numbers{
        if condition(i){
            return true
        }
    }
    return false
}

func equalZero(value: Int) -> Bool {
    
    if value == 0{
        return true
    }
    return false
    
}

var listOfNumbers = [10, 0, 20, 100, 5]

var result = matches(numbers: listOfNumbers, condition: equalZero)

print(result)

</pre>

W języku Swift istnieje jeszcze jeden istotny typ danych - domknięcie (closure). Domknięcie można rozumieć jako zmienną, która przechowuje kod (funkcja fabryki?). 

Domknięcie można napisać bez nadawania nazwy poprzez otoczenie kodu klamrami ({}). Ogólnie składnię domknięć można przedstawić następująco:

<pre>

{ (parameters) -> returnType in

    statements

}

</pre>

Poniżej przykłady zastosowań domknięć:

<pre>
let sayHello = { (name: String)  in
    print("Hello, \(name).")
}

sayHello("Andrew")
</pre>

Domknięcie może również zwracać wynik:

<pre>

var square = { (number: Int) -> (Int) in
  let result = number * number
  return result
}

var number = 11

print("Square of \(number) is \(square(number))")

</pre>

Klasy
---

Aby utworzyć klasę, należy użyć słowa class a następnie nazwy tworzonej klasy. Atrybuty klasy deklarujemy tak samo jak zmienne i stałe, a metody tak samo jak funkcje. 

<pre>

class Shape {

    var numberOfNodes = 0
    func presentYourself() -> String {
        return "I am a shape with \(numberOfNodes) nodes"
    }

}

</pre>

Tworzenie instancji odbywa się poprzez odwołanie do nazwy klasy z nawiasem:

<pre>

var shapeInstance = Shape()

shape.numberOfNodes = 10
print(shape.presentYourself())

</pre>

Klasy zazwyczaj posiadają specjalną metodę, której zadaniem jest inicjalizacja początkowych wartości poszczególnych atrybutów. W wielu językach tą metodę nazywa się konstruktorem, w języku Swift jest to inicjalizator. Może nadawać początkowe wartości atrybutom i nazywa się init.

<pre>

class DescribedShape {

var numberOfNodes: Int = 0
var description: String

init(description: String) {
    self.description = description
}

func presentYourself() -> String {
        return "I am a shape with \(numberOfNodes) nodes"
    }

}

var shapeInstance = DescribedShape(description: "1010nodes")

shapeInstance.numberOfNodes = 10
print("I am", shapeInstance.description)
print(shapeInstance.presentYourself())

</pre>

Słowo self odnosi się do wnętrza klasy. W języku Swift istnieje również deinicjalizator, który może być wykorzystany jeżeli z pewnych względów trzeba dokonać czyszczenia pamięci przed dealokacją zasobów przeznaczoncyh na obiekt. Służy do tego słowo deinit. 

Podklasy (klasy dziedziczące/potomne) zawierają funkcjonalności swoich nadklas (klas bazowych). Podklasa zawiera nazwę swojej nadklasy po dwukropku:

<pre>
class nazwaKlasyPotomnej: NazwaKlasyBazowej{
     
    body

}
</pre>

Metody klasy potomnej, które nadpisują metody klasy bazowej są oznaczane słowem override. Przypadkowe nadpisywanie metody bez słowa override będzie skutkować błędem. Kompilator wykryje również metody oznaczone słowem override, które faktycznie niczego nie nadpisują. Odnoszenie się do atrybutów i metod klasy bazowej odbywa się przez użycie operatora super.

<pre>

class Square: DescribedShape {
    
    var edgeLength: Double
    
    init(edgeLength: Double, description: String){
        self.edgeLength = edgeLength
        super.init(description: description)
        numberOfNodes = 4
    }
    
    func area() -> Double {
        
        return edgeLength * edgeLength
        
    }
    
    override func presentYourself() -> String {
        return "I am a squere of side: \(edgeLength)"
    }
    
}

var square = Square(edgeLength: 10, description: "first square")

print(square.area())
print(square.presentYourself())

</pre>

Atrybuty mogą posiadać interfejs get i set. 