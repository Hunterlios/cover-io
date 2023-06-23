# ProjektApi
Aby uruchomić Apkę najpierw musisz skorzystać ze skryptu mydatabase.sql, wrzucasz w Workbencha, uruchamiasz i działa, następnie w pliku resources/application.properties zmieniasz ustawienia na swoje:
- w url port(chociaż domyślnie powinno działać)
- username(też domyślnie powineneś mieć root)
- i hasło dostępowe na swoje( jak działa Ci bez hasła to dajesz puste)

endpointów jest sporo, większość służy do testowania i można je potem usunąć, z Twojej perspektywy liczą się te z BookController:
- GET "/" - zwraca wszystkie książki wraz z autorem i gatunkieml (lista) JSON jak niżej;
- GET "/{id}" - zwraca książkę o danym id wraz z autorem :

http://localhost:8080/21
{
    "id": 21,
    "title": "Dziady III",
    "pages": 123,
    "isbn": "9238373371715",
    "time": 9.0,
    "language": "polski",
    "description": "Ciemno wszędzie, głucho wszędzie, nie wiem nie czytałam",
    "cover": "Dziady.jpg",
    "year":1832,
    "author": {
        "id": 1,
        "name": "Adam",
        "surname": "Mickiewicz",
        "country": "Polska"
    },
    "genre": {
        "id": 2,
        "name": "Dramat",
        "age": 16
    }
}
Jeśli książki nie ma w bazie zwraca 404 NotFound;

- GET "/test"- potem się usunie. zwraca testową książkę, może Ci się do czegoś przyda JSON jak wyżej XD;
- POST "/" - dodaje książkę do bazy, jeżeli autor/gatunek występują już w bazie autorów/gatunków to przydziela istniejące id(redundancja), jeśli nie dodaje nowego autora/gatunek do bazy autorów/gatunków a do książki dodaje nowoutworzine id. Id mi nie dajesz sama je generuje, JSON:

http://localhost:8080/
{
    "title": "Dziady III",
    "pages": 123,
    "isbn": "9238373371715",
    "time": 9,
    "language": "polski",
    "description": "Ciemno wszędzie, głucho wszędzie, nie wiem nie czytałam",
    "cover": "Dziady.jpg",
    "year":1832,
    "author": {
        "name": "Adam",
        "surname": "Mickiewicz",
        "country": "Polska"
    },
    "genre": {
        "name": "Dramat",
        "age": 16
    }
}
- PUT "/{id}" - updatuje książkę o danym id, przesyłasz mi wszystko poza id autora i gatunku, tak jak wyżej baza jest zabezpieczona i usuwa bezcelowe encje. JSON:

http://localhost:8080/20
{
    "title": "Dziady III",
    "pages": 123,
    "isbn": "9238373371715",
    "time": 9,
    "language": "polski",
    "description": "Ciemno wszędzie, głucho wszędzie, nie wiem nie czytałam",
    "cover": "Dziady.jpg",
    "year":1832,
    "author": {
        "name": "Adam",
        "surname": "Mickiewicz",
        "country": "Polska"
    },
    "genre": {
        "name": "Dramat",
        "age": 16
    }
}

- DELETE "/{id}" - pewnie się domyślasz xd


W AuthorController i GenreController Endpointy są analogiczne, ale nie są nam super potrzebne, zostawiłabym ewentualnie getall reszte możesz użyć do testów


Jest jeszcze jedna kwestia - okładki - możemy pójść na łatwiznę i zrobić bez (napiszemy na blogu, że okładek nie ma, by nie oceniać książki po okładce xd) albo tworzymy jeszcze jedną kolumnę w bazie książek z adresami na dysku do zdjęć(chyba, że chcesz się zająć routingiem) i tutaj jest haczyk, bo INTELIJ bardzo nie lubi adresów względnych, więc musimy się dogadać na czyim lapku to pokazujemy i dać adresy bazwzględne u niego (zakładam że nie masz foldery C:users\NataliaStaszak xd), albo dać to bezpośrednio na dysk, to jest i tak kwestia godziny

Jakby coś się działo to pisz, ale w ten weekend raczej będę niedostępna, więc proponuję zacząć od ogólnego designu 
