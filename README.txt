%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                     %
% Readme zur Verwendung des Themes                    %
% beamerthemeKonstanz im Beamerpaket für die          %
% Erstellung von Präsentationen in LaTeX              %
% im neuen Corporate Design der Universität Konstanz  %
%                                                     %
% Stand: 10.07.2015 - Michael Brendle (Version 0.3)   %
%                                                     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


Struktur des Verzeichnisses:

README.txt                   -- diese Datei
beamerthemeKonstanz.sty      -- Theme mit allen Definitionen, Makros und Umgebungen
benutzerhandbuch.tex         -- Beispielpräsentation in Form eines Benutzerhandbuches
benutzerhandbuch.pdf         -- übersetzte PDF dieser Präsentation
graphics/                    -- Ordner mit Graphiken



Diese Readme ist in die folgenden Abschnitte untergliedert:

1.  Übersetzen der Tex-Datei
2.  Dokumentenklasse
3.  Einbinden des Themes
4.  Auswahl des Seitenverhältnisses
5.  Initialisierung der Schrift
6.  Auswahl der Schriftgröße
7.  Farben des Corporate Design
8.  CD Element: Markieren
9.  CD Element: Unterstreichen 
10. CD Element: Merken
11. CD Element: Block
12. CD Element: Linie (mit optionalen Pfeilen)
13. CD Element: Klammer (mit optionalen Pfeilen)
14. Sonstiges



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1. Übersetzen der Tex-Datei  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Die Tex-Datei muss mittels XeLaTeX übersetzt werden.
Somit wird u.a. die Arial Schriftart eingebunden.

Zudem muss die TeX Datei 2-mal übersetzt werden, damit auch das 
Inhaltsverzeichnis abgebildet wird.

XeLaTeX wird bereits in den meisten TeX-Distributionen mitgeliefert.
Sollte es nicht mitgeliefert sein, kann es problemlos nachinstalliert
werden.

Für das Erstellen der Elemente des Corporate Design werden einige
weitere Pakete benötigt. In der folgenden Liste sind die notwendigen
Pakete aufgelistet.
    - beamer
    - xcolor
    - geometry
    - babel
    - fontenc
    - textpos
    - xunicode
    - soul
    - ulem
    - ifthen
    - keycommand
    - tikz
    - calc
    - cmbright
    - fontspec

Zudem kann es sein, dass diese Pakete weitere Pakete benötigen. Diese müssen
dann ebenfalls installiert werden. Der Compiler wird für diesen Fall die Pakete
anzeigen, diese zusätzlich noch benötigt werden.

Des Weiteren ist es wichtig, dass alle Pakete, sowie ihre Tex-Distribution auf
dem aktuellen Stand sind, um weitere Unsicherheiten aus dem Weg zu gehen.




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 2. Dokumentenklasse          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Als Dokumentenklasse wird die Beamer Klasse verwendet.

Zudem muss die Option rgb eingeschalten werden, damit die definierten 
Farben des HSB Farbraums in den RGB Farbraum umgewandelt werden, da 
einige Pakete keinen HSB Farbraum unterstützen.

> \documentclass[16pt, rgb]{beamer}




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3. Einbinden des Themes      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Alle verwendeten Makros und Umgebeungen, sowie weitere angepasste Elemente 
befinden sich in der Datei beamerthemeKonstanz.sty

Dieses Theme wir mittels folgendem Befehl importiert:

> \usetheme{Konstanz}




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4. Auswahl des Seitenverhältnisses %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Das Seitenverhältnis sollte nicht über aspectratio, sondern mittels

> \format{<schlüssel>}

in der Präambel angepasst werden. Nur dadurch kann die richtige Auswahl 
der Schriftgrößen und die Platzierung der Elemente gewährleistet werden.

Zur Auswahl stehen folgende Seitenverhältnisse:

   Schlüssel  Beschreibung
   ------------------------
   169        16:9 Format
   43         4:3 Format
   1610       16:10 Format


Falls keiner der unterstützten Schlüssel übergeben wird,
ist das 16:9 Format der Standard

Somit würde der folgende Befehl das Seitenverhältnis 16:9 auswählen:

> \format{169}




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 5. Initialisierung der Schrift %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Damit die Schriftart Arial verwendet werden kann, sind die folgenden
zwei Befehle nach begin{document} unbedingt notwendig:

> \setmainfont{Arial}
> \setsansfont{Arial}

Um zu Beginn die richtige Schriftgröße auszuwählen muss auch
der folgende Befehl immer aufgerufen werden.

> \usebeamerfont{normalfont}




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 6. Auswahl der Schriftgröße  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Da innerhalb eines Plakates es meistens mehrere verschiedene Schriftgrößen
gibt, steht hier das Makro

    \selectfontsize

zur Verfügung.

Dieses Makro besitzt ein unbedingt notwendiges Argument und ein optionales
Feld, indem Key-Value Pairs übergeben werden können.

    \selectfontsize[<Key Value Pairs>]{<Schriftgröße>}

Das Argument hat dabei folgende Bedeutung:
 
  1. Argument:         Hier wird die neue Schriftgröße angegeben, die verwendet werden
                       soll.
Die weiteren Formatierungsoptionen werden alle innerhalb des optionalen Argumentes mittels
Key-Value Pairs bestimmt.

Dabei stehen folgende Optionen zur Verfügung:

    baselineskip    Hier wird der baselineskip angegeben, welcher verwendet werden soll
                    Mögliche Werte:
                        0      Ist dieser 0, dann wird der baselinefaktor verwendet  
                        sonst
                   Standardwert: 0

    baselinefaktor Hier wird der Faktor angegeben, der verwendet wird, um den neuen
                   baselineskip zu berechnen.
                   Dieser wird nur benutzt, falls der baselineskip 0 beträgt.
                    
                       baselineskip = baselinefaktor * #1

                   Standardwert: 12/10

                   Da hier keine Fließkommazahl in der Dezimalschreibweise angegeben werden
                   kann, müssen diese als Brüche repräsentiert werden, wie z.b. 12/10 anstatt
                   1.2.


So wählt folgender Befehl die Schriftgröße 70pt mit dem standarddefinierten 
Zeilenabstand 1.4 aus.

> \selectfontsize[baselinefaktor=14/10]{70pt}




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 9. Farben des Corporate Design %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Es stehen natürlich auch die Farben des Corporate Designs zur Verfügung:

  Schlüssel   Beschreibung      
  --------------------------------------------------------------
  seeblau100  Seeblau mit der Sättigungsstufe 100%
  seeblau65   Seeblau mit der Sättigungsstufe 65%
  seeblau35   Seeblau mit der Sättigungsstufe 35%
  seeblau20   Seeblau mit der Sättigungsstufe 20%
   
  schwarz60   Seeblau - SW-Umsetzung mit der Sättigungsstufe 60%
  schwarz40   Seeblau - SW-Umsetzung mit der Sättigungsstufe 40%
  schwarz20   Seeblau - SW-Umsetzung mit der Sättigungsstufe 20%
  schwarz10   Seeblau - SW-Umsetzung mit der Sättigungsstufe 10%

Möchte man beispielsweise einen Text mit Seeblau in der Sättigungsstufe
100% schreiben, so kann das bereits existierende Makro

> \textcolor{<Schlüssel der Farbe>}{<Zu färbenden Text>}

verwendet werden.


Somit erstellt folgender Befehl einen blauen, fetten und kursiv geschriebenen 
Text mit dem Inhalt:

    -- uni-konstanz.de


> \textcolor{seeblau100}{\textbf{\textit{-- uni-konstanz.de}}}




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 10. CD Element: Markieren    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Um einen Text mit Hilfe des Markieren Elements des Corporate Design hervorzuheben,
steht das Makro

    \markieren

zur Verfügung.

Dieses Makro besitzt vier unbedingt notwendige Argumente und ein optionales
Feld, indem weitere EIgenschaften festgelegt werden könnnen..

    \markieren[Optionen per Key-Value Pair]{<Zeile 1>}{<Zeile 2>}{<Zeile 3>}{<Zeile 4>}

Die Argumente haben dabei folgende Bedeutung:

  1. - 4. Argument:    Hier werden nun die eigentlichen Zeilen übergeben.

                       Wichtig dabei ist es, dass die Aufteilung der Zeilen manuell erfolgen muss durch
                       die Argumente, da nur somit sichergestellt werden kann, dass bspw. Treppeneffekte
                       nicht auftreten und somit der Benutzer alle Freiheiten bei der Aufteilung besitzt.

                       Sollten nicht alle Zeilen verwendet werden, dann müssen die hinteren Brackets
                       leer gelassen werden, wie beispielsweise bei der Headline

Die wichtigen Formatierungsoptionen werden alle innerhalb des optionalen Argumentes mittels
Key-Value Pairs bestimmt.

Dabei stehen folgende Optionen zur Verfügung:

  align                Hier kann angegeben werden, ob das komplette Objekt
                       links- oder rechtsbündig angeordent werden soll.
                      
                       Der Standardwert ist "left" und somit linksbündig.

                       Für eine rechtsbündige Anordnung muss hier der Wert "right" hinterlegt werden.

  vertical             Hier wird angegeben, ob der Inhalt der Zeilen zentriert werden soll oder
                       überall an der gleichen Baseline ausgerichtet werden soll.
                       
                       Dies kann mittels der Wörter "center" und "base" eingestellt werden.
                       Dabei ist "center" als Standardwert festgelegt.

                       Der Unterschied besteht darin, dass bei Zeilen die Buchstaben mit einer Tiefe
                       enthalten, wie g, p oder q, anders zentriert werden als welche ohne Buchstaben
                       mit einer Tiefe.

                       Da dies ein wenig Geschmackssache ist, werden hier beide Varianten zur Verfügung
                       gestellt, wobei "center" primär verwendet werden soll, und "base" eher wenn
                       Buchstaben mit einer Tiefe in den Zeilen enthalten sind.


Somit erstellt folgender Befehl ein neues Markieren Element, welches aus den drei Zeilen

    Wir sind
    nah am Wasser
    gebaut

besteht. Zudem sind alle Zeilen an der Baseline ausgerichtet.


> \markieren[vertical=base]{\textbf{Wir sind}}{\textbf{nah am Wasser}}{\textbf{gebaut}}{}%





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 11. CD Element: Unterstreichen %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Um einen Text mit Hilfe des Unterstreichen Elements des Corporate Design hervorzuheben,
steht das bereits bekannte Makro

    \underline

zur Verfügung, welches an die Anforderungen des Corporate Designs angepasst wurde.

Dieses Makro besitzt ein notwendiges Argument

    \underline{1. Argument}

Das Argument hat folgende Bedeutung:
 
  1. Argument: Hier wird der zu unterstreichende Text hinterlegt.

Wichtig ist noch zu wissen, dass auch Textbrüche ohne Probleme durchgeführt werden 
können.

Zudem können weitere Formatierungen, wie bold oder italic innerhalb des Argumentes 
angewendet werden.

Die Dicke der unterstrichenen Linie passt sich dabei der aktuell verwendeten 
Textgröße an.


Somit erstellt folgender Befehl zunächst ein Fließtext, welcher 
die Wörter

    einzigartigen Umgebung direkt am Bodensee

unterstreicht und sie mittels \textbf{...} noch fett hervorhebt.


> Außer einer \underline{\textbf{einzigartigen Umgebung direkt am Bodensee}} haben\\
> wir noch einiges zu bieten. Interessiert? Dann besuchen Sie uns unter:




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 12. CD Element: Merken       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Um einen Text mit Hilfe des Merken Elements des Corporate Design hervorzuheben,
steht das Makro

    \merken

zur Verfügung.

Dieses Makro besitzt drei unbedingt notwendige Argumente

    \merken{1. Argument}{2. Argument}{3. Argument}

Die Argumente haben dabei folgende Bedeutung:
 
  1. Argument: Hier wird die Breite des kompletten Objektes angegeben. Da das
               Merken Objekt quadratisch ist, wird hier sowohl die Breite als auch
               die Höhe angegeben.

  2. Argument: Hier wird die Subline des Merken Elementes angegeben, die direkt unter 
               der Zeile mit dem X folgt (siehe auch Corporate Design Manual).

  3. Argument: Hier wird der eigentliche Inhalt angegeben. Wichtig hierbei ist es,
               dass dieser Inhalt an die untere Kante des Merken Elementes orientiert 
               ist. Somit entgegen der Subline (2. Argument), welche an die obere 
               Kante abzüglich der Zeile mit dem X orientiert ist.

Hier folgt noch eine grafische Darstellung der Argumente:

   |<------- 1. Argument ------->|    

   -------------------------------    -
   |                           X |    ^
   | Subline (2. Argument)       |    |
   |                             |    1
   |                             |    .
   |                             |    A
   |                             |    r
   |                             |    g
   |                             |    u
   |                             |    m
   |                             |    e
   |                             |    n
   |                             |    t
   |                             |    |
   | Inhalt (3. Argument)        |    v
   -------------------------------    -

Wichtig ist noch zu wissen, dass die Linienstärke und die Größe des X in der rechten 
oberen Ecke an die Höhe / Breite des Merken Elements dynamisch angepasst ist. 


Somit erstellt folgender Befehl ein Merken Element mit einer Breite und Höhe 
von 6.5 cm, einer leeren Subline und einem textuellen Inhalt:

   Die Universität Konstanz ist seit 2007 in allen drei Förderlinien der 
   Exzellenzinitiative erfolgreich.

> \merken{6.5cm}{}{Die Universität Konstanz ist seit 2007 in allen drei Förderlinien 
  der Exzellenzinitiative erfolgreich.}




%%%%%%%%%%%%%%%%%%%%%%%%%%
% 13. CD Element: Block  %
%%%%%%%%%%%%%%%%%%%%%%%%%%

Mit dem Makro

    \cdblock[Optionen per Key-Value Pair]{<Headline>}{<Spalte 1>}{<Spalte 2>}{<Spalte 3>}{<Spalte 4>}{<Spalte 5>}{<Spalte 6>}{<Spalte 7>}{<Spalte 8>}

können Block-Elemente für z.B. wisschenschaftliche Inhalte erstellt werden.

Dieses Makro besitzt 9 erforderliche Elemente, die bei jedem Aufruf angegeben werden müssen. Dabei 
ist es natürlich mögliche Argumente leer zu lassen, falls man diese nicht benötigt. Dies hat jedoch
keinen Einfluss auf die Anzahl an Spalten. Diese müssen separat im Optionenargument angegeben werden
mittels des Schlüssels columnnum (siehe weiter unten).

Die Argumente haben dabei folgende Bedeutung:

  1. Argument: Inhalt der Headline
  2. Argument: Inhalt der 1. Spalte
  3. Argument: Inhalt der 2. Spalte
  4. Argument: Inhalt der 3. Spalte
  5. Argument: Inhalt der 4. Spalte
  6. Argument: Inhalt der 5. Spalte
  7. Argument: Inhalt der 6. Spalte
  8. Argument: Inhalt der 7. Spalte
  9. Argument: Inhalt der 8. Spalte


Die wichtigen Formatierungsoptionen werden diesmal alle innerhalb des optionalen Argumentes mittels
Key-Value Pairs bestimmt.

Dabei stehen folgende Optionen zur Verfügung:

    thick          Hier wird die Dicke der Linie bestimmt.
                   Die Pfeile werden generell mit der doppelten Dicke gezeichnet!
                   Standardwert: \boxlinewidth

    color          Hier wird die Farbe der Linie angegeben
                   Es sollten nur die folgenden Farben benutzt werden:
                       seeblau100
                       seeblau65
                       seeblau35
                       seeblau20
                       black
                       schwarz60
                       schwarz40
                       schwarz20
                       schwarz10
                   Standardwert: seeblau100

    width          Hier wird die Breite des Blocks angegeben
                   Standardwert: \paperwidth

    columnnum      Hier werden die Anzahl an Spalten definiert
                   Standardwert: 4

    headlinesep    Hier wird der Abstand zwischen der Headline und den Spalten angegeben
                   Standardwert: Aktuelle Schriftgröße

    columnspace    Hier wird der Abstand zwischen den Spalten angegeben
                   Standardwert: Doppelte Schriftgröße

    block          Hier kann angegeben werden, ob man einen Rahmen um diesen Block haben möchte
                   Mögliche Werte: true, false
                   Standardwert: false

    inner          Hier kann angegeben werden, ob zwischen den Spalten Trennlinien haben möchte
                   Mögliche Werte:
                       false    keine Trennlinien
                       short    Trennlinien, die so lange sind, wie der längste Nachbar (entweder der
                                linke oder rechte Nachbar
                       long     Trennlinien, die bis nach ganz unten gehen. Sie sind also so lang
                                wie die längste Spalte
                   Standardwert: false

    inner1,        Hier kann für jeden Zwischenraum der Spalte exakt angegeben werden, ob Trennlinien
    inner2,        existieren sollen und falls ja, wie lang sie sein sollen. Diese Werte werden jedoch
    inner3,        nur berücksichtigt, wenn inner=false ist. Ansonsten ist inner stärker.
    inner4,        Mögliche Werte:
    inner5,           false    keine Trennlinien
    inner6,           short    Trennlinien, die so lange sind, wie der längste Nachbar (entweder der
    inner7                     linke oder rechte Nachbar
                      long     Trennlinien, die bis nach ganz unten gehen. Sie sind also so lang
                               wie die längste Spalte
                   Standardwert: false

    outerleft,     Hier kann angegeben werden, ob links (rechts) der ersten Spalte eine Trennlinie existieren soll.
    outerright     Mögliche Werte
                       false    keine Trennlinien
                       short    Trennlinien, die so lange sind, wie der direkte Nachbar (bei outerleft die 1. Spalte
                                und bei outerright die letzte Spalte
                       long     Trennlinien, die bis nach ganz unten gehen. Sie sind also so lang
                                wie die längste Spalte
                       verylong Trennlinie geht von oben nach unten, sowie ein halber columnspace nach innen.
                   Standardwert: false

    outertop,      Hier kann angegeben werden, ob oberhalb (unterhalb) des Blocks eine Trennlinie, oder ein Pfeil existieren soll.
    outerbottom    Mögliche Werte
                       false    keine Trennlinien
                       long     Trennlinien, die von links nach rechts geht
                       verylong Trennlinie, die von links nach rechts geht, sowie ein halber columnspace nach oben (unten).
                       arrow    Pfeil, der aus der Trenlinie verylong besteht und in der Mitte einen Pfeil nach oben (unten)
                                besitzt.
                   Standardwert: false

    arrowtop1left, Hier kann angegeben werden, ob zwei Spalten oberhalb des Blocks mittels eines Doppelpfeils verbunden werden
    arrowtop1right sollen. Da es maximal 8 Spalten sind, können auch nur maximal 4 Paare bestimmt werden.
    arrowtop2left  Ein Paar besteht somit aus einer linken und einer rechten Spalte.
    arrowtop2right Mögliche Werte:
    arrowtop3left      0   Keine Auswahl
    arrowtop3right     1-8 Auswahl einer Spalte von 1 bis 8
    arrowtop4left  Standardwert: 0
    arrowtop4right Sollte der linke Wert nicht kleiner als der rechte Wert sein, so werden keine Pfeile gezeichnet. Das gleiche
                   gilt für Werte, die außerhalb des Bereichs liegen.
 

Wichtig ist noch zu wissen, wie die Breite letztendlich berechnet wird:
Da es auch links und rechts der Spalten Trennlinien oder Pfeile geben kann, ist links der 1. und rechts der
letzten Spalte ebenfalls ein columnspace vorgesehen.
Somit wird die Spaltenbreite wie folgt berechnet

    blockcolumnwidth = (width - (columnspace * (columnnum + 1))) / columnnum


Beispiele finden Sie in den .tex Dateien.




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 14. CD Element: Linie (mit optionalen Pfeilen) %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Mit dem Makro

    \cdline[Optionen per Key-Value Pair]{<Länge der Linie>}

kann eine Linie mit einer bestimmten Länge erstellt werden.

Dieses Makro besitzt 1 erforderliches Element, welches bei jedem Aufruf mit angegeben
werden muss.

Das Argument hat dabei folgende Bedeutung.

  1. Argument: Länge der erzeugten Linie


Die wichtigen Formatierungsoptionen werden alle innerhalb des optionalen Argumentes mittels
Key-Value Pairs bestimmt.

Dabei stehen folgende Optionen zur Verfügung:

    thick          Hier wird die Dicke der Linie bestimmt
                   Standardwert: \boxlinewidth

    mode           Hier wird angegeben, ob die Linie horizontal oder vertikal ausgerichtet werden soll
                   Mögliche Werte
                       horizontal
                       vertical
                   Standardwert: horizontal

    color          Hier wird die Farbe der Linie angegeben
                   Es sollten nur die folgenden Farben benutzt werden:
                       seeblau100
                       seeblau65
                       seeblau35
                       seeblau20
                       black
                       schwarz60
                       schwarz40
                       schwarz20
                       schwarz10
                   Standardwert: seeblau100

    arrowleft      Hier wird angegeben, die Linie am linken (vertical: oberen) Ende mit einem Pfeil enden soll
                   Mögliche Werte:
                       true
                       false
                   Standardwert: false

    arrowright     Hier wird angegeben, die Linie am rechten (vertical: unteren) Ende mit einem Pfeil enden soll
                   Mögliche Werte:
                       true
                       false
                   Standardwert: false


Erstellt eine Linie mit der Standardfarbe seeblau100, einer Länge von 10cm,
einer Dicke von 8pt und einem linken und rechten Pfeil.

> \cdline[thick=8pt, arrowleft=true, arrowright=true]{10cm}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 15. CD Element: Klammer (mit optionalen Pfeilen) %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Mit dem Makro

    \cdbracket[Optionen per Key-Value Pair]{<Breite des Klammer>}{<Höhe des Klammer>}

kann eine Klammer mit einer bestimmten Breite und Höhe gezeichnet werden.

Dieses Makro besitzt 2 erforderliche Elemente, welche bei jedem Aufruf mit angegeben
werden müssen.

Die Argumente haben dabei folgende Bedeutung.

  1. Argument: Breite der erzeugten Klammer
  2. Argument: Höhe der erzeugten Klammer


Die wichtigen Formatierungsoptionen werden alle innerhalb des optionalen Argumentes mittels
Key-Value Pairs bestimmt.

Dabei stehen folgende Optionen zur Verfügung:

    thick          Hier wird die Dicke der Linien bestimmt
                   Standardwert: \boxlinewidth

    mode           Hier wird die Ausrichtung der Klammer angegeben
                   Mögliche Werte
                       left    linke Klammer
                       top     obere Klammer
                       right   rechte Klammer
                       bottom  untere Klammer
                   Standardwert: left

    color          Hier wird die Farbe der Linie angegeben
                   Es sollten nur die folgenden Farben benutzt werden:
                       seeblau100
                       seeblau65
                       seeblau35
                       seeblau20
                       black
                       schwarz60
                       schwarz40
                       schwarz20
                       schwarz10
                    Standardwert: seeblau100

    arrowleft      Hier wird angegeben, ob die Klammer am linken (oberen) Ende mit einem Pfeil enden soll
                   Mögliche Werte:
                       true
                       false
                   Standardwert: false

    arrowright     Hier wird angegeben, ob die Klammer am rechten (unteren) Ende mit einem Pfeil enden soll
                   Mögliche Werte:
                       true
                       false
                   Standardwert: false

    arrowmiddle    Hier wird angegeben, ob die Klammer in der Mitte einen weiteren Pfeil besitzen soll der in die
                   andere Richtung der Klammer zeigt (wie beim Makro \block mit der Optione arrow bei outerbottom / outertop)
                   Mögliche Werte:
                       true
                       false
                   Standardwert: false


Erstellt eine rechte Klammer, die einen Pfeil in der Mitte nach links besitzt.
Die Breite beträgt 5 cm und die Höhe 23.6 cm.

> \cdbracket[mode=right, arrowmiddle=true]{5cm}{23.6cm}




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 16. Sonstiges                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Bei Fragen, Hinweisen und Anregungen können Sie mich unter

   michael.brendle@uni-konstanz.de

kontaktieren.