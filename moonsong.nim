import std/random
randomize()

var pajunk1hp = 100
var pajunk2hp = 125
var pajunkgracza = 100

echo "Witam w naszej pajunczej walce"
echo "Nix tu nie będzie miało sensu, ale zobaczymy, cu z tego wyjdzie XD"

proc wygrana (win: string = "WYGRAŁES MORDUCHNO"): string =
    echo $win

proc przegrana (lsr: string = "PRZEGRYWIE, PRZEGRAŁEŚ WALKĘ I UMAŁREŚ, SZEGNAM"): string =
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

echo "Po ciężkiej walce Twoje zdrówko to " & $pajunkgracza & " a zdróweczko Twojego przeciwnika to " & $pajunk1hp
echo wynik()
