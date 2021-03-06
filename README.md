# Interpolacja kwadratowa Powella
Program do szukania minium funcji za pomocą metody Powella. 
Do programu podaję trzy punkty x1 < x2 < x3 takie, że wartości funkcji w tych punktach spełniają f(x1) > f(x2) < f(x3). Szukam równania wielomianu kwadratowego przechodzącego przez punkty (x1, f(x1)), (x2, f(x2)) i (x3, f(x3)). Następnie obliczam współczynniki a, b, c ze wzoru:

![](https://user-images.githubusercontent.com/44835858/80007715-f2325f80-84c6-11ea-9e72-126db4f05920.png)



Następnie obliczam współczynnik x4:
![](https://user-images.githubusercontent.com/44835858/80007757-037b6c00-84c7-11ea-9325-b74638bdc44c.png)

Spośród punktów (x1, x2, x3, x4), zatrzymujemy trzy najlepsze (innymi słowy wyrzucamy punkt, w którym wartość funkcji f(x) jest największa) i ponownie dokonujemy interpolacji kwadratowej dla tych trzech punktów i szukamy minimum otrzymanego wielomianu. Procedura ta powtarzana jest az do osiagniecia minimum.
