require 'yaml'                                     # a w sumie to jest pierwsza, bo zapomniałam o tym i miałam SZOK, NIE DZIAŁA

kitek = YAML.safe_load_file("oddfunerals.yaml")    # pierwsza trudność, to... wpisanie nazwy w terminal, żeby odpaliło, brawo Kari

def statystyki_kitka (kitek)                       # ja wiem, że nie musisałam na to robić funkcji, ale kciałam, a może się kiedyś przyda XD

    kitek = YAML.safe_load_file("oddfunerals.yaml")

    while true

        puts "Jaką statystykę kcesz sprawdzić?"

        giereczkowacz= gets.chomp
        puts giereczkowacz.downcase!

        if giereczkowacz.include? "im" or giereczkowacz.include? "nazw"

            puts "Twój kitek ma na imię #{kitek["imię"]}"

        elsif giereczkowacz.include? "hp" or giereczkowacz.include? "zdro"

            puts "Twój kitek ma #{kitek["hpeczek"]} zdrówka" 

        elsif giereczkowacz.include? "man" or giereczkowacz.include? "kitkowa mana"
            
            puts "Mana Twojego kitka wynosi #{kitek["kitkowa mana"]}"

        elsif giereczkowacz.include? "ekwipunek" or giereczkowacz.include? "eq"  # wiesz, co mje sprawiło trudność tu? LITERÓWKA, BO NAPISAŁAM EKWIPIUNEK XDDD 
            
            puts "Ekwipunek Twojego kitka to:"
            puts kitek["eq"]

        else
            
            break

        end
        
    end

end    
    
    
    while true

        puts "Co chcesz zrobić?"

        ty = gets.chomp

        if ty.chomp == "statystyki" or ty.include? "stat"

            statystyki_kitka("Więc zaczynamy!")

        elsif ty.include? "wyj" #cudowny inklud mi wyszedł, to właśnie mam zamiar robić XD

            puts "ŻEGNAM!!!!!!"

            break

        else
            
            puts "Niestety, na razie możesz tylko sprawdzić statystyki Twojego kitka, może kiedyś będzie coś wincyj"

            sleep(2)
            puts "=^o^="

        end

    end    