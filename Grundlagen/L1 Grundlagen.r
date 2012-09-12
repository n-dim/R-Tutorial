# Dies ist ein Tutorial um das Arbeiten mit R zu lernen. Dazu verwenden wir den
# Editor RStudio.

# Beachten Sie: Alles hinter einem "#" wird als Kommentar gewertet und bei der
# Ausführung in der Console ignoriert. RStudio färbt diese Kommentare entsprechend
# ein. Zwischen den Kommentaren stehen die Befehle, die Sie ausführen sollen, um
# zu lernen, wie diese arbeiten. Immer wieder bekommen Sie auch eine kurze Aufgabe
# gestellt und müssen dann einen Befehl selber schreiben.

# Bitte führen Sie jeden dargestellten Befehl auch aus. Erstens, damit Sie sehen
# was passiert. Zweitens könnten spätere Befehle vorraussetzen, dass dieser Befehl
# bereits ausgeführt wurde. Drittens werden wir am Ende der Lektion einen "Spick-
# zettel" speichern, in dem alle ausgeführten Befehle noch einmal aufgelistet werden.

# Dieses Tutorial ist für die Tastaturbefehle auf einem Apple-Rechner geschrieben.
# Falls Sie unter Windows oder Linux arbeiten, verwenden Sie das entsprechende 
# Tutorial für diese Betriebssysteme.



#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#                      Lektion 1.1: Befehle ausführen

# 1. Markieren Sie folgenden Befehl mit der Maus und kopieren Sie ihn:

print("Test")

# Hilfe: wählen Sie im Menü "Edit" den Befehl "Copy" oder drücken sie <Befehl>+C

# 2. Setzen Sie den Curser in die Console (einmal irgendwo in die Console klicken)

# 3. Fügen Sie den Kopierten Text dort ein

# Hilfe: wählen Sie im Menü "Edit" den Befehl "Paste" oder drücken sie <Befehl>+V

# 4. Drücken Sie <Enter>, um den Befehl auszuführen

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#                      Lektion 1.2: Befehle in die Console schicken

# 1.  Wählen Sie die folgende Befehlszeile aus. 

# 2.  Drücken Sie <Befehl>+<Enter>

print("dieser Befehl wurde direkt in die Console geschickt")

# Der Befehl wird sofort in die Konsole geschickt und ausgeführt

# Alternativ können Sie auch den Knopf "Run" oberhalb dieses Textfensters benutzen
# oder im Menü "Code" den Befehl "Run Line(s)" auswählen. Dort finden Sie auch 
# noch andere Befehle wie "Run Region".

# 3.  Nun setzen Sie den Curser nochmals in die zuvor verwendete Befehlszeile,
#     jedoch ohne etwas auszuwählen.

# 4.  Drücken Sie wieder <Befehl>+<Enter>

# Ist nichts ausgewählt, wird die ganze Zeile in die Console verschickt und aus-
# geführt.

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#                      Lektion 1.2: Befehle wiederholen

# 1.  Setzen Sie den Curser in die Console

# 2.  Drücken Sie den Pfeil nach Oben

# Der letze ausgeführte Befehl erscheint.

# 3.  Drücken Sie <Enter>, um den Befehl erneut auszuführen.

# Alternativ finden Sie in RStudio ein Fenster "History". Doppelklicken Sie auf 
# einen der dort aufgeführten Befehle, um ihn in die Console zu verschicken. 
# Drücken Sie <Enter>, um den Befehl auszuführen.

# 4.  Um die letzte Auswahl erneut auszuführen, drücken Sie <Shift> + <Befehl> + P

# Der Unterschied ist: Wenn Sie im Editor den Code verändert haben, wird auch 
# diese Veränderung mit ausgeführt. 

# Diesen Befehl finden Sie auch im Menü "Code" unter "Re-Run Previous"

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#                      Lektion 1.3: Variablen zuweisen

# 1.  Führen Sie den folgenden Befehl aus, um der Variable "A" den Wert "12" 
#     zuzuweisen:

A <- 12

# 2.  Führen Sie den folgenden Befehl aus, um den Wert der Variablen abzufragen:

A

# In der Konsole wird der Wert der Variablen angezeigt. Was die 1 in eckigen Klammern
# vor dem eigentlichen Wert zu bedeuten hat, soll an späterer Stelle erklärt werden.

# 3.  Aufgabe: Weisen Sie der Variable "B" den Wert "18" zu.

  # Löschen Sie diese beiden Zeilen (mit dem "#") und fügen Sie ihre Berechnung ein.
  # Testen Sie Ihre Berechnung in der Console.

# 4.  Falls Sie damit erfolgreich waren, führen Sie den folgenden Befehl aus:

A + B

# Wenn Sie alles richtig gemacht haben, Erscheint in der Konsole das Ergebnis 
# "[1] 30". Wenn nicht, bekommen Sie die Fehlermeldung:
# "Fehler: Objekt 'B' nicht gefunden"

# 5.  Weisen Sie den Wert dieser Berechnung der Variable "C" zu:

C <- A + B

# Hier wird nichts zurückgegeben, ausser es taucht ein Fehler auf.

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#                      Lektion 1.4: Einfache Rechenoperationen

# 1. Probieren Sie die folgenden Befehle aus:

12 - 4 
1.15 + 2.25
10 * 5
17 / 2
56 %% 10      # Modulo (Rest der Teilung durch 10)
2 ^ 3
sqrt(225)     # Quadratwurzel
225 ^ (1/2)   # Quadratwurzel in Exponentialschreibweise
125 ^ (1/3)   # 3. Wurzel

round(12.3)   # Runden
ceiling(12.3) # Aufrunden
floor(12.7)   # Abrunden

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#                      Lektion 1.5: Mit Arrays arbeiten

# Ein Array ist eine Variable, die mehrere Elemente enthält.

# 1.  Erstellen Sie einen Array mit dem c() - Befehl:

  D <- c(2, 4.5, 10, 298)

# Info: "c" steht für "concatenate", engl. für "verbinden", "verketten"

# 2.  Wenden Sie Rechenoperationen auf den Array an:

  D + 2     # addiert zu jedem Element 2 dazu
  D * 3     # multipliziert jedes Element mit 3
  sum(D)    # Bildet die Summe über alle Elemente
  cumsum(D) # Bildet die kumulative Summe der Elemente
  mean(D)   # Mittelwert aller Elemente

  D + c(1, 2, 3, 4)   # Jedes Element von D wird mit einem anderen Wert verrechnet
  D * c(1, 2)         # Sind nich genügend Elemente vorhanden, werden sie wiederholt
  D * c(1, 2, 3)      # Hier wird eine Warnmeldung angezeigt, aber trotzdem gerechnet

# 3.  Aufgabe: Welchen Array müssen Sie zu D addieren, damit jedes Element des 
#     resultierenden Arrays den Wert 200 hat?

  # Diese Zeile durch Ihre Berechnung ersetzen

# 4.  Aufgabe: Runden Sie alle Elemente von D:
#     (Tipp: Verwenden Sie Befehle aus der letzen Lektion)

  # Diese Zeile durch Ihre Berechnung ersetzen

# 5.  Aufgabe: Berechnen Sie die Abweichung vom Mittelwert für jedes Element von D 
#     (Tipp: Ziehen Sie von jedem Element von D den Mittelwert ab)

  # Diese Zeile durch Ihre Berechnung ersetzen

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#                      Lektion 1.6: Auf einzelne Elemente zugreifen

# 1.  So greifen Sie auf das 3. Element im Array D zu:

  D[3]

# 2.  Sie können auch mehrere Elemente ausgeben lassen:

  D[c(1,2)]
  D[2:4]
  D[-1]         # Alle Elemente außer dem ersten (in diesem Falle wie D[2:4])
  D[c(1,1,1,1)]
  D[c(2,2:4)]
  tail(D, 1)    # letztes Element von D
  head(D, 1)    # erstes Element von D
  tail(D, 2)    # die letzen Beiden Elemente von D
  tail(D, -1)   # der Rest (Schwanz) von D ohne das erste Element
  head(D, -2)   # der Rest (Kopf) von D ohne die letzten beiden Elemente

# 3.  Den Befehl "cumsum()" aus Lektion 1.4 könnten Sie auf folgende Weise nachbilden:

  c( D[1], sum( D[c(1,2)] ), sum( D[c(1:3)] ), sum( D[c(1:4)] ) )

# 4.  Aufgabe: Bilden Sie den Befehl "sum()" nach, indem Sie den Operator "+" 
#     verwenden (Addieren Sie die 4 Elemente des Arrays D):

  # Diese Zeile durch Ihre Berechnung ersetzen

# 5.  Die Länge eines Arrays ermitteln:

length(D)

# 6.  Aufgabe: Wie greifen Sie unter Verwendung von "length()" auf das letzte 
# Element eines Arrays zu?

  # Diese Zeile durch Ihre Berechnung ersetzen


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#                      Lektion 1.7: Erweitertes Erzeugen von Arrays

# 1.  Arrays erzeugen mit ":"

  G <- 1:4
  G

# 2.  Arrays erzeugen mit "seq()":

  H <- seq(from=0, to=5, by=0.2)
  H

  I <- seq(from=0.5, to=10, length.out=20)
  I

# 3.  Wiederholung: Ermitteln Sie die Länge von H

  # Diese Zeile durch Ihre Berechnung ersetzen

# 4.  Aufgabe: Wie erzeugen Sie den gleichen Array wie H mit der Methode, die für I 
#     verwendet wurde?

  # Diese Zeile durch Ihre Berechnung ersetzen

# 5.  Arrays erzeugen mit "rep()":

  rep(1,5)        # wiederholt die Ziffer 1 fünf mal
  rep("test", 5)  # wiederholt die Zeichenfolge "test" fünf mal

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#                      Speichern Sie ihren persöhnlichen Spickzettel

# Sie haben nun einige Übungen absolviert. Dabei haben Sie sich hoffentlich schon
# das ein oder andere merken können. Damit Sie die wichtigsten Befehle später schnell 
# nachschlagen können, werden wir nun alle Befehle, die Sie in dieser Lektion ausge-
# führt haben in eine Datei Speichern. Dies ist dann sozusagen ihr Spickzettel,
# den Sie verwenden können, wenn Sie später das Gelernte anwenden möchten.

  savehistory( "Grundlagen/Spickzettel Lektion 1.r" )

# Ich würde vorschlagen, dass Sie die Datei "Spickzettel Lektion 1.r" im Ordner 
# "Grundlagen" öffnen und sich zu jedem gelisteten Befehl einen Kommentar 
# schreiben. Einfach das "#"-Zeichen einfügen und dahinter den Kommentar schreiben. 
# Das haben Sie ja jetzt schon öfter gesehen. Eventuell können Sie auch einige 
# Befehle herauslöschen. 

# Damit haben Sie nun alles noch einmal wiederholt und können gleichzeitig schnell 
# wieder nachschlagen, was Sie in dieser Lektion gelernt haben.
