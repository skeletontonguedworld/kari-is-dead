import std/random
randomize()

var pajunk1hp = 100
var pajunk2hp = 125
var pajunkgracza = 100

echo "Witam w naszej pajunczej walce"
echo "Nix tu nie będzie miało sensu, ale zobaczymy, cu z tego wyjdzie XD"

proc wygrana (win: string = "WYGRAŁES MORDUCHNO"): string =
    echo $win

proc przegrana (lsr: string = "PRZEGRYWIE, PRZEGRAŁEŚ WALKĘ, NAWET JAK PRAWIDZIWY PAJUNK NIE UMIESZ WALCZYĆ XD"): string =
    echo $lsr

proc wynik (wnk: string = "A OTO WYNIK NASZEJ WALKI"): string =
    while pajunkgracza > 0:

        if pajunkgracza > pajunk1hp:
            echo wygrana()
            break
        elif pajunkgracza < pajunk1hp:
            echo przegrana()
            break

while pajunkgracza > 0:

    echo "Zmierzysz się z pierwszym potężnym przeciwnikiem, pajunkiem, ktory od 10 lat podgryza zwłoki na cmentarzu"
    echo "Powitajmy Spiderellę"
    echo "klasku klasku"
    echo "Czy kcesz zacząć walkę?"

    var giereczkowacz = readLine (stdin)

    if giereczkowacz == "tak":
        echo "Zaczynajmy!"
        pajunkgracza -= rand(1..100)
        pajunk1hp -= rand(1..100)

        break

    else: 
        echo "To ja nie rozumiem, po co przyłazisz na walki pajuncze, jak walczyć nie kcesz, szok..."

        break

echo "Po ciężkiej walce Twoje zdrówko to " & $pajunkgracza & " a zdróweczko Twojego przeciwnika to " & $pajunk1hp
echo wynik()

while pajunkgracza > 0:

    echo "Twoim kolejnym przeciwnikiem jest pajunk który przeszedł wiele w swoim żyćku, wiele napisał, wiele alkoholu wypił, w wielu barowych bitwach brał udział"
    echo "Idzie do nas Spidery Pajunczaski"
    echo "Czy jesteś gotowy na kolejną walkę?"

    var giereczkowacz2 = readLine (stdin)

    if giereczkowacz2 == "tak":
        echo "CZAAAAS NA WAAAAALKĘ!"
        pajunkgracza -= rand(1..100)
        pajunk2hp -= rand(1..125)

        break

    else:
        echo "No to jak walczyć nie kcesz, to mogłeś powiedzieć wcześniej, no typie, typiaro, osobo typiarska, błagam XD"

        break

echo "Po kolejnej walce, która nie była łatwa i wywołała wiele bólu i emocji, Twoje zdrówko wynosi " & $pajunkgracza & " a zdrówko tego drugiego, którego powinniśmy zobaczyć " & $pajunk2hp
echo wynik()

echo "Dobru, koniec walki na dziś XD" 

# dopracuj jeszcze pętelki, żeby lepij działały, ale ogółem jest hehe git