# svopt1
Program do szukania minium funcji za pomocą metody Powella. 
Do programu podaję trzy punkty x1 < x2 < x3 takie, że wartości funkcji w tych punktach spełniają f(x1) > f(x2) < f(x3). Szukam równania wielomianu kwadratowego przechodzącego przez punkty (x1, f(x1)), (x2, f(x2)) i (x3, f(x3)). Następnie obliczam współczynniki a, b, c ze wzoru:




Następnie obliczam współczynnik x4:

Spośród punktów (x1, x2, x3, x4), zatrzymujemy trzy najlepsze (innymi słowy wyrzucamy punkt, w którym wartość funkcji f(x) jest największa) i ponownie dokonujemy interpolacji kwadratowej dla tych trzech punktów i szukamy minimum otrzymanego wielomianu. Procedura ta powtarzana jest az do osiagniecia minimum.
