/* Zadanie 1.2
 Spróbujmy wykorzystać plik Playground jako kalkulator. W edytorze Playgoround wykonaj poniższe działania, wyświetlacjąc ich wynik za pomocą polecenia print. Zwróć uwagę na postać zwracanych wyników. Dlaczego czasami wynik jest z częścią dziesiętną, a czasami nie?
 
1+2
1+4.5
-1+2.5
100-45
4*3
2.5*1.5
3/2
4/2
pow(2, 3)
pow(2, 10)
pow(2, 1/2)
pow(2, 1.0/2.0)
pow(2, 0.5)
pow(2.0, 1/2)
11 % 3
6 + 6 * 6
(6 + 6) * 6
 
Po wykonaniu powyższych działań sprawdź działanie następujących operacji i zawartość zmiennych:
 
stałe: M_PI, M_E

operacje matematyczne: round(), ceil(), floor(), trunc() abs(), signum(), sin(), cos(), tan(), acos(), asin(), atan(), pow(), sqrt(), exp(), log(), log10()
 */

//----------------------------------------

import Foundation

print(1+2)
print(1+4.5)
print(-1+2.5)
print(100-45)
print(4*3)
print(2.5*1.5)
print(3/2)
print(4/2)
print(pow(2, 3))
print(pow(2, 10))
print(pow(2, 1/2))
print(pow(2, 1.0/2.0))
print(pow(2, 0.5))
print(pow(2.0, 1/2))
print(11 % 3)
print(6 + 6 * 6)
print((6 + 6) * 6)

// stałe matematyczne: M_PI, M_E

// operacje matematyczne: min() - zwraca najmniejszy element, max() - zwraca największy element, round() - zaokrągla, ceil() - f. sufit, floor() - f. podłoga, trunc() - f. odcięcia części po przecinku, abs() - wartość bezwzględna, sign - atrybut znaku, signum() - zwraca znak, sin() - zwraca sinus, cos() - zwraca cosinus, tan() - zwraca tangens, acos() - zwraca arkus cosinus, asin() - zwraca arkus sinus, atan() - zwraca arkus tangens, pow() - zwraca potęgę, sqrt() - zwraca pierwiastek, exp() - zwraca stalą Eulera podniesioną do zadanej potęgi, log() - zwraca logarytm narutalny, log10() - zwraca logarytm dziesiętny.
