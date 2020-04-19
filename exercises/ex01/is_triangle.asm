; Grzegorz Litarowicz - assembler-x86-and-x86-64
;
; ZADANIE 1 - Program przeprowadzający walidację  nierówności trójkąta.
;
; Napisz program, który sprawdza nierówność trójkąta.
; Długości boków trójkąta są wczytywane z klawiatury.
; Można założyć że długości podane przez użytkownika są całkowite i należą do przedziału (0, 10)
; Program powinien wypisywać informację o możliwości wpisania długości boku.
; Po wypisaniu, wszystkich trzech boków program wypisuje informację czy stworzenie trójkąta jest możliwe.
; 
; Wskazówka: Trzeba pamiętać, że input z klawiatury jest traktowany jako char i kodowany w ascii.
;
; Do kompilacji i uruchamiania programu można korzystać ze skryptu run.sh:
; ./run.sh is_triangle
; 



; Przykład 1:
;
; Please enter number: 5
; Please enter number: 5
; Please enter number: 5
; Yes
; 
; Przykład 2:
;
; Please enter number: 1
; Please enter number: 1
; Please enter number: 9
; No
