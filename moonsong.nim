import std/random
randomize()

import os 

var pajunk1hp = 100
var pajunk2hp = 125
var pajunkgracza = 100

proc wygrana (win: string = "WYGRAŁES MORDUCHNO"): string =
    echo $win

proc przegrana (lsr: string = "PRZEGRYWIE, PRZEGRAŁEŚ WALKĘ, NAWET JAK PRAWDZIWY PAJUNK NIE UMIESZ WALCZYĆ XD"): string =
    echo $lsr

proc wynik (wnk: string = "A OTO WYNIK NASZEJ WALKI"): string =
    while pajunkgracza > 0:

        if pajunkgracza > pajunk1hp or pajunkgracza > pajunk2hp:
            echo wygrana()
            break
        elif pajunkgracza < pajunk1hp or pajunkgracza > pajunk2hp:
            echo przegrana()
            break

while pajunkgracza > 0:

    echo "|/OOOO/|"
    sleep 2000
    echo "Witam w naszej pajunczej walce"
    sleep 2000
    echo "---------------------------------"
    sleep 2000
    echo "Nix tu nie będzie miało sensu, ale zobaczymy, cu z tego wyjdzie XD"
    sleep 2000
    echo "Zmierzysz się z pierwszym potężnym przeciwnikiem, pajunkiem, który od 10 lat podgryza zwłoki na cmentarzu"
    sleep 2000
    echo "Powitajmy Spiderellę"
    sleep 2000
    echo "klasku klasku"
    sleep 2000
    echo "Czy kcesz zacząć walkę?"

    var giereczkowacz = readLine (stdin)

    if giereczkowacz == "tak":
        echo "|/OOOO/|"
        sleep 2000
        echo "Zaczynajmy!"
        pajunkgracza -= rand(1..100)
        pajunk1hp -= rand(1..100)

        echo "|/OOOO/|"
        sleep 2000
        echo "Po ciężkiej walce Twoje zdrówko to " & $pajunkgracza & " a zdróweczko Twojego przeciwnika to " & $pajunk1hp
        sleep 2000
        echo wynik()

        break

    else:
        echo "To ja nie rozumiem, po co przyłazisz na walki pajuncze, jak walczyć nie kcesz, szok..."
        sleep 2000

        break

while pajunkgracza > pajunk1hp:

    echo "Twoim kolejnym przeciwnikiem jest pajunk który przeszedł wiele w swoim żyćku, wiele napisał, wiele alkoholu wypił, w wielu barowych bitwach brał udział"
    sleep 2000
    echo "Idzie do nas Spidery Pajunczaski"
    sleep 2000
    echo "Czy jesteś gotowy na kolejną walkę?"

    var giereczkowacz2 = readLine (stdin)

    if giereczkowacz2 == "tak":
        echo "|/OOOO/|"
        sleep 2000
        echo "CZAAAAS NA WAAAAALKĘ!"
        pajunkgracza -= rand(1..100)
        pajunk2hp -= rand(1..125)

        echo "|/OOOO/|"
        sleep 2000
        echo "Po kolejnej walce, która nie była łatwa i wywołała wiele bólu i emocji, Twoje zdrówko wynosi " & $pajunkgracza & " a zdrówko tego drugiego, którego powinniśmy zobaczyć " & $pajunk2hp
        sleep 2000
        echo wynik()

        break

    else:
        echo "No to jak walczyć nie kcesz, to mogłeś powiedzieć wcześniej, no typie, typiaro, osobo typiarska, błagam XD"
        sleep 2000

        break

echo "---------------------------------"
sleep 2000
echo "Dobru, koniec walki na dziś XD" 
sleep 4000