echo "~~O~~"
echo "Czy wszystko jest snem we śnie? Czy możesz ufać temu, co widzisz?"

var stan_psychiki = 21
var wola_żyćka = 37

var twoja_głowa: seq[string] = @["mało kreatywnych myśli"]

proc spotkaniepajuncze (pajunk: string = "Zjem Ci duszę"): string =
    echo $pajunk

while wola_żyćka > 0:

    echo "Zauważasz pajunka w pokoju, niestety zbyt późno, żeby cokolwiek zrobić, pajunk znika, cały czas, kiedy nie jesteś w pokoju myślisz o tym, że na pewno jak wrócisz, to będzie siedział na torbie od laptoka"
    echo "Wracasz do pokoju, ruszasz torbę i masz wrażenie, że coś po niej chodzi! Rzucasz ją, przyglądasz się, nie jesteś pewna, co widzisz, coś uciekało, ale nix nie ma, może to było światło, może włos"
    echo "Zaufasz temu, co widziałaś? Czy to naprawdę był pajunk?"

    var ty = readLine(stdin)

    if ty == "tak":

        echo "Więc sądzisz, że to naprawdę mógł być pajunk?"
        echo "Będziesz teraz bez przerwy spoglądać w miejsce, gdzie go widziałaś i martwić się, że zaraz wyjdzie, obserwować każdy namniejszy ruch kurzu"

        stan_psychiki = stan_psychiki - 20

        twoja_głowa.add("niepokój")

    elif ty == "nie":

        echo "Hm, może to nie był pajunk, może Ci się wydawało, nie interesujesz się tym i idziesz do VSC zrobić cuś w końcu w Nimecku"
        echo "Ale czy na pewno tylko Ci się wydawało?"
        echo "(tak, to pytanie retoryczne, nie będzie readLine'a)"
        echo "(napisałabym readLuna XD)"

        stan_psychiki = stan_psychiki + 21
        wola_żyćka = wola_żyćka + 37

        twoja_głowa.add("robienie rzeczy")

        for musk in twoja_głowa:
            echo musk

        break

    else:

        echo "To naprawdę nie było ciężkie pytanie, pls ;_;"    

echo "Nagle czujesz dziwne łaskotanie na remce, patrzysz na nią i widzisz pajunka, który zapierdala jak rydwan, patrzysz na niego, on patrzy na Ciebie, czy kcesz go zabić?" 

while stan_psychiki > 0:

    var ty2 = readLine(stdin)

    if ty2 == "tak":

        echo spotkaniepajuncze()
        echo "O NIE!"

    elif ty2 == "nie":

        echo "No i dobru, pajunk tyż nie kce wojny, wystawiasz go za okno i idzie sobie do swojej pajuneczej rodzinki i żyjecie w zgodzie"

        break

    else:

        echo "...buntowanie się nix nie da, uwierz mje"

echo "Jakiś tam koniec, Twój stan psychiki to {stan_psychiki}, a wola żyćka {wola_żyćka}" # nope, nadal cuś nie działa, ale wyjebion, to na potem XD

for rzeczyfinal in twoja_głowa:
    echo rzeczyfinal

echo "Nie skompiluje mi się to ni chuja, ale przynajmniej doskonale się bawiłam XDDD"