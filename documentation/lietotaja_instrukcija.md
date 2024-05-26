# LIETOTĀJA CEĻVEDIS
## Sistēmas prasības

Tīmekļa vietne ir veidota tā, lai būtu pieejama un ērti lietojama, neprasot augstas sistēmas prasības. Lai palaistu šo tīmekļa vietni lokāli, izmantojot Laragon, ir jānodrošina, ka ierīce atbilst šādām minimālajām prasībām:


| Komponents          | Minimālās prasības                                           |
|---------------------|--------------------------------------------------------------|
| Operētājsistēma     | Windows 7 vai jaunāka, MacOS (ar Wine)                       |
| Laragon versija     | Laragon 4.0 vai jaunāka                                      |
| Procesors           | Intel Core i3 vai jaunāks                                |
| Atmiņa (RAM)        | 4 GB vai vairāk                                              |
| Cietā diska vieta   | Vismaz 500 MB brīvas vietas (vietnei un Laragon instalācijai)|
| Interneta pieslēgums| 1 Mbps vai ātrāks                                            |

Lai palaistu vietni lokāli, jums vispirms jālejupielādē un jāuzstāda Laragon, kas ir ērti lietojama izstrādes vide, kas ietver Apache, MySQL, PHP un citus svarīgus komponentus, nepieciešamus vietnes lokālai palaišanai. Šeit ir dažas piemērotas versijas, kuras varat izmantot bez kļūdām:

- Laragon 4.0
- Laragon 4.1
- Laragon 4.2
- Laragon 5.0
- Laragon 5.1
- Laragon 5.2
- Laragon 6.0

Lai pilnībā izmantotu vietni un pārliecinātos, ka tā darbojas pareizi, ir nepieciešams arī viens no populārajiem mūsdienu pārlūkiem:

- Microsoft Edge (jaunākā versija)
- Mozilla Firefox (jaunākā versija)
- Google Chrome (jaunākā versija)
- Opera GX (jaunākā versija)

Papildus, lai varētu izpakot lejupielādēto projektu ZIP formātā, ir nepieciešams uzstādīt arhivatoru. Šeit ir daži piemēri populāru arhivatoru:

- 7-Zip
- WinRAR
- WinZip

## Sistēmas instalācija un palaišana 

Lai vietne darbotos uz jūsu paša datora, ir nepieciešams veikt instalācijas un palaišanas procesu. Zemāk esošajā instrukcijā ir sniegta detalizēta informācija par katru soli, lai nodrošinātu veiksmīgu vietnes iedarbināšanu lokāli:

1. Vietnes failu lejupielāde no GitHub:

- Apmeklējiet GitHub repozitoriju.
- Noklikšķiniet uz zaļā pogas "Code" un izvēlieties "Download ZIP".
- Atarhivējiet lejupielādēto ZIP failu.

![DP4-1 Konstantīns Kotovičs GitHub repozitorija]()

17. att. GitHub repozitorija

2. Laragon uzstādīšana:

- Lejupielādējiet un instalējiet Laragon no oficiālās mājas lapas.
- Palaidiet instalēto Laragon.

3. Vietnes failu novietošana Laragonā:

- Atveriet Laragon un noklikšķiniet uz pogas "Root".
- Lejupielādētā mape tiks nosaukta kā "autosalons-main". Pārdēvējiet šo mapi uz "autosalons", jo GitHub pievieno "-main" galveno zara nosaukumam.

![DP4-1 Konstantīns Kotovičs mapes nosaukums]()

18. att. mapes nosaukums
- Atarhivējiet iepriekš lejupielādēto ZIP failu mapē "www", kas atrodas mapē, kuru atverat, noklikšķinot uz pogas "Root".

![DP4-1 Konstantīns Kotovičs Largona logs, mape ar projektu]()

19. att. Largona logs, mape ar projektu

4. Servera un datu bāzes palaišana:

- Noklikšķiniet uz pogas "Start All" galvenajā Laragon logā, lai palaidinātu tīmekļa serveri un MySQL datu bāzi.

![DP4-1 Konstantīns Kotovičs Largona logs, starta poga]()

20. att. Largona logs, starta poga

5. Datu bāzes izveide:

- Pēc servera palaišanas atveriet datu bāzi, noklikšķinot uz pogas "Database" galvenajā Laragon logā.
- Pēc datu bāzes atvēršanas noklikšķiniet uz "File" kreisajā augšējā stūrī un izvēlieties "Run SQL file".
- Atlasiet failu "database.sql", kas atrodas lejupielādētā repozitorija mapē "sql".
- Šis fails izveidos datu bāzi ar visām nepieciešamajām tabulām.

![DP4-1 Konstantīns Kotovičs Logs ar datubāzes pievienošanu]()

21. att. Logs ar datubāzes pievienošanu

6. Vietnes palaišana:

- Atveriet jebkuru interneta pārlūku datorā.
- Adreses joslā ievadiet: http://localhost/autosalons/index.php.
- Nospiediet Enter, lai atvērtu vietni.

Pēc šo soļu izpildes, vietne būs gatava lietošanai lokālajā vidē.

## Programmas apraksts 

# Lietotāja ceļvedis
## Sistēmas prasības

Tīmekļa vietne ir veidota tā, lai būtu pieejama un ērti lietojama uz dažādām ierīcēm, neprasot augstas sistēmas prasības. Tā nodrošina labu lietotāja pieredzi, neatkarīgi no izmantotās ierīces. Tas nozīmē, ka mūsu vietne būs funkcionāla un viegli lietojama gan uz galda datoriem un klēpjdatoriem, gan uz planšetdatoriem un viedtālruņiem.

Minimālās sistēmas prasības
Lai nodrošinātu optimālu tīmekļa vietnes darbību, ir nepieciešams, lai ierīce atbilstu šādām minimālajām prasībām:

Galda datori un klēpjdatori:

Operētājsistēmas: Windows 7 vai jaunāka, macOS 10.12 Sierra vai jaunāka, Linux (jebkura moderna izplatījuma versija).
Interneta pārlūkprogrammas: Google Chrome 70 vai jaunāka, Mozilla Firefox 65 vai jaunāka, Microsoft Edge 79 vai jaunāka, Safari 12 vai jaunāka.

Viedtālruņi:

Operētājsistēmas: iOS 12 vai jaunāka, Android 7.0 Nougat vai jaunāka.
Interneta pārlūkprogrammas: Google Chrome 70 vai jaunāka, Mozilla Firefox 65 vai jaunāka, Safari (iOS), Samsung Internet 10 vai jaunāka.
Ieteikumi optimālai pieredzei
Lai nodrošinātu vislabāko lietotāja pieredzi, ieteicams:

Interneta savienojums: Stabils platjoslas savienojums ar ātrumu vismaz 5 Mbps.
Ekrāna izšķirtspēja: Vismaz 1280x720 pikseļi.
Atjaunināta pārlūkprogramma: Pārliecinieties, ka pārlūkprogramma ir atjaunināta uz jaunāko versiju, lai nodrošinātu drošību un saderību ar tīmekļa vietni.

## Programmas apraksts 

Vispirms jāatver tīmekļa vietnes sākuma lapu: http://localhost/autosalons/index.php
1.Reģistrācija vai reģistrētu lietotāju autorizācija. 

![DP4-1 Konstantīns Kotovičs mājaslapas skats]()

22. att. mājaslapas skats

Ievadam visus nepieciešamos laukus un noklikšķinam uz pogas “Sign In”, ja nav reģistrēta neviena profila, nospiežam pogu “Sign Up”.

![DP4-1 Konstantīns Kotovičs autorizācijas forma]()
 
23. att. autorizācijas forma

Reģistrācijas lapā ir jāaizpilda vairāk lauku un jāņem vērā formāts un rakstzīmju skaits.

![DP4-1 Konstantīns Kotovičs reģistrācijas forma]()
 
24. att. reģistrācijas forma

Ja ievadāt visus datus, tiksiet novirzīts uz sākumlapu, taču atkarībā no ievadītajiem datiem tā tiks rādīta atšķirīgi. Ja pierakstīsieties apkalpojošā personāla kontā, uz kartītēm ar piedāvājumiem redzēsiet statusus, un šie statusi noteiks, vai piedāvājumi tiks rādīti lietotājam vai ne. 

![DP4-1 Konstantīns Kotovičs piedāvājumu atspoguļošanas lapa personālam]()
 
25. att. piedāvājumu atspoguļošanas lapa personālam

Ja pierakstīsieties kā parasts lietotājs, statusi un slēptie piedāvājumi nebūs redzami.
 
![DP4-1 Konstantīns Kotovičs piedāvājumu atspoguļošanas lapa letotājam]()

26. att. piedāvājumu atspoguļošanas lapa letotājam

2.Jaunu transportlīdzekļu/piedāvājumu pievienošana.
Administratora augšējā joslā varam noklikšķināt uz profila attēla, pēc tam parādīsies saraksts, kurā izvēlamies “Add Offer”, un parādīsies lapa, kurā jāaizpilda visi lauki. 

![DP4-1 Konstantīns Kotovičs navigācijas joslā, nolaižamajs saraksts]()
 
27. att. navigācijas joslā, nolaižamajs saraksts

Varam redzēt 4 kolonnas, pirmajā ir vispārīga informācija par automobili, bet pārējās 3 ir saistītas ar konfigurāciju, kas vienam un tam pašam modelim var atšķirties.

![DP4-1 Konstantīns Kotovičs piedāvājumu pievienošanas forma]()
 
28. att. piedāvājumu pievienošanas forma

Laukā, kur ir nepieciešams izvēlēties automašīnas ražošanas gadu, ērtības dēļ jau ir sagatavoti varianti, jauni gadi tiks pievienoti automātiski.

![DP4-1 Konstantīns Kotovičs ražošanas gada izvēles lauks]()
 
29. att. ražošanas gada izvēles lauks

3.Piedāvājumu meklēšana un filtrēšana.
Galvenajā lapā mēs varam redzēt meklēšanas joslu un filtrus blakus, tie darbojas kopā. 

![DP4-1 Konstantīns Kotovičs meklēšanas josla un filtri]()

30. att. meklēšanas josla un filtri

Ja netiks atrasti atbilstoši piedāvājumi, tiks parādīts uzraksts: “Sorry, but we couldn't find anything.”, bet, ja būs sakritības, tiks parādīti atbilstoši automobiļi.

![DP4-1 Konstantīns Kotovičs izejas virkne, ja nekas nav atrasts]()
 
31. att. izejas virkne, ja nekas nav atrasts

Ja mēs ievadām gan meklēšanas joslā, gan filtros, lai atlasītu parametrus, tad tiks ņemti vērā visi atlasītie vai ievadītie lauki.

![DP4-1 Konstantīns Kotovičs piedāvājumu sadaļa]()
 
32. att. piedāvājumu sadaļa

Lai apskatītu informāciju par piedāvājumu un ar to saistīto funkcionalitāti, ir jānovieto kursors virs attiecīgās kartiņas un jānoklikšķina uz pogas “Skatīt”.

![DP4-1 Konstantīns Kotovičs piedāvājumu kartiņa]()
 
33. att. piedāvājumu kartiņa

4.Transportlīdzekļa lapa un to pasūtīšana.
Šajā lapā mēs varam redzēt visu detalizēto informāciju par izvēlēto piedāvājumu.

![DP4-1 Konstantīns Kotovičs piedāvājuma lapa no apkalpojošā personāla skata]()
 
34. att. piedāvājuma lapa no apkalpojošā personāla skata

Atšķirībā no administratora lietotājam nav pogas “Settings”.

![DP4-1 Konstantīns Kotovičs piedāvājuma detalizētā informācija]()
 
35. att. piedāvājuma detalizētā informācija

Atsevišķā logā tiek parādītas visas konfigurācijas, kas ir saistītas ar šo modeli, un izvēlētā konfigurācija ir pelēkā krāsā.

![DP4-1 Konstantīns Kotovičs konfigurāciju izvēles logs]()
 
36. att. konfigurāciju izvēles logs

Izvēloties citu konfigurāciju un noklikšķinot uz pogas “Choose”, mēs tiksim novirzīti uz tā paša modeļa lapu, bet ar citu konfigurāciju.

![DP4-1 Konstantīns Kotovičs piedāvājuma lapa no lietotāja skata]()
 
37. att. piedāvājuma lapa no lietotāja skata

Lai pasūtītu izvēlēto automašīnu, nospiežam pogu “Get an offer”. Pēc tam aizpildam nepieciešamos laukus ar kontaktinformāciju un atzīmējam, ka piekrītam noteikumiem.

![DP4-1 Konstantīns Kotovičs pasūtīšanas forma]()
 
38. att. pasūtīšanas forma

Pēc tam tiek parādīts apstiprinājuma logs ar visu informāciju par automašīnu un lietotāju, kas veicis pasūtījumu.

![DP4-1 Konstantīns Kotovičs apstiprinājuma logs]()
 
39. att. apstiprinājuma logs

Ja pasūtījums ir veiksmīgi nosūtīts, lietotājs saņems paziņojumu.

![DP4-1 Konstantīns Kotovičs ziņojumu logs]()
 
40. att. ziņojumu logs

5.Transportlīdzekļa konfigurācijas dzēšana vai informācijas rediģēšana.
Administratoram piedāvājuma lapā ir poga ar parametriem, noklikšķinot uz tās, parādās logs, kura pirmajā sadaļā var rediģēt informāciju par pašu modeli un konkrēto konfigurāciju.

![DP4-1 Konstantīns Kotovičs informācijas rediģēšanas sadaļa]()
 
41. att. informācijas rediģēšanas sadaļa

Otrā sadaļa ļauj pievienot jaunas konfigurācijas esošajam modelim.

![DP4-1 Konstantīns Kotovičs konfigurāciju pievienošanas sadaļa]()
 
42. att. konfigurāciju pievienošanas sadaļa

Un trešajā sadaļā ir iespēja izdzēst konkrēto konfigurāciju vai pārveidot to par neaktīvu, tad tā netiks rādīta lietotājam.

![DP4-1 Konstantīns Kotovičs kontroles pogas sadaļa]()
 
43. att. kontroles pogas sadaļa

6.Ziņojumu saņemšana un to dzēšana.
Katram reģistrētajam lietotājam ir paziņojumu attēls navigācijas joslā, ja nav nelasītu paziņojumu, tā būs neaktīva.

![DP4-1 Konstantīns Kotovičs navigācijas josla ar neaktīvo attēlu]()
 
44. att. navigācijas josla ar neaktīvo attēlu

Ja ir jauni paziņojumi, kurus lietotājs nav izlasījis, tā tiks mainīta uz aktīvu.

![DP4-1 Konstantīns Kotovičs navigācijas josla ar aktīvo attēlu]()
 
45. att. navigācijas josla ar aktīvo attēlu

Noklikšķinot uz šī attēla, tiks atvērts logs ar saņemtajiem paziņojumiem. Visus paziņojumus var dzēst, noklikšķinot uz krustiņa pret tiem, vai arī var dzēst tos visus uzreiz, noklikšķinot uz pogas “Clear all”. Ziņojumi ir sadalīti 3 tēmās: “Forum”, “Orders”, “Profile”, katrs paziņojums ir saistīts ar attiecīgo tēmu, piemēram, ja tiek atbildēts uz lietotāja sesijā atstāto komentāru, tiks nosūtīts paziņojums ar tēmu “Forums”. 

![DP4-1 Konstantīns Kotovičs ziņojumu logs]()
 
46. att. ziņojumu logs

Lietotājs var paslēpt tēmas, kas viņu neinteresē, izvēloties iespēju “Hide” pie konkrētām tēmām, un paziņojumi netiks rādīti.

![DP4-1 Konstantīns Kotovičs tukšs ziņojumu logs]()
 
47. att. tukšs ziņojumu logs

7.Lietotāja lapa un tās rediģēšana.
Lai nokļūtu profila lapā, navigācijas joslā no nolaižamajā sarakstā jāizvēlas “Profile & Orders”.

![DP4-1 Konstantīns Kotovičs navigācijas joslā, nolaižamajs saraksts]()
 
48. att. navigācijas joslā, nolaižamajs saraksts

Lapā var mainīt profila attēlu, bet paroli apkalpojošs personāls nevar mainīt patstāvīgi, to var darīt tikai administrators.

![DP4-1 Konstantīns Kotovičs personāla profila lapa]()
 
49. att. personāla profila lapa

Atšķirībā no apkalpojošā personāla lietotāji var mainīt savu paroli, ievadot pašreizējo paroli, jauno paroli un atkārtoti jauno paroli.

![DP4-1 Konstantīns Kotovičs lietotāja profila lapa]()
 
50. att. lietotāja profila lapa

Izvēloties otro sadaļu “My Orders”, var apskatīt savu pasūtījumu vēsturi.

![DP4-1 Konstantīns Kotovičs lietotāja pasūtījumu vēstures lapa]()
 
51. att. lietotāja pasūtījumu vēstures lapa

Tabulu ar pasūtījumiem var eksportēt Excel failā, noklikšķinot uz pogas “Export To Excel”.

![DP4-1 Konstantīns Kotovičs lietotāja pasūtījumu vēstures Excel tabula]()
 
52. att. lietotāja pasūtījumu vēstures Excel tabula

8.Visu lietotāju pasūtījumu vēsture un izpildes statusa rediģēšana.
Lai apskatīt visu lietotāju pasūtījumu vēsturi, navigācijas joslā no nolaižamajā sarakstā jāizvēlas “All orders”. 

![DP4-1 Konstantīns Kotovičs navigācijas joslā nolaižamajs saraksts]()
 
53. att. navigācijas joslā nolaižamajs saraksts

Šī lapa ir paredzēta tikai apkalpojošajam personālam.

![DP4-1 Konstantīns Kotovičs visu lietotāju pasūtījumu vēstures lapa]()
 
54. att. visu lietotāju pasūtījumu vēstures lapa

Šajā lapā ir 3 sadaļas: “New”, “In progress”, “Done”.  Tas nozīmē, ka pasūtījumi ir iedalīti 3 kategorijās, kurās var mainīt katra pasūtījuma statusu, un pēc pogas “Save changes” nospiešanas ieraksti tiek pārvietoti uz attiecīgajām tabulām.

![DP4-1 Konstantīns Kotovičs statusa rediģēšanas forma]()
 
55. att. statusa rediģēšanas forma

Šo tabulu var arī izvadīt Excel failā, noklikšķinot uz pogas “Export to Excel” augšējā labajā stūrī.

![DP4-1 Konstantīns Kotovičs lietotāja pasūtījumu vēstures Excel tabula]()
 
56. att. lietotāja pasūtījumu vēstures Excel tabula

9.Komentāru pievienošana un dzēšana.
Lai nokļūtu šajā lapā, navigācijas joslā izvēlieties “Forum”. 

![DP4-1 Konstantīns Kotovičs navigācijas joslā, nolaižamajs saraksts]()
 
57. att. navigācijas joslā, nolaižamajs saraksts

Pirmo reizi atverot šo lapu, lietotājam tiks parādīti foruma noteikumi, kuri ir jāpieņem, lai varētu lasīt un atstāt komentārus, tas ir jādara tikai vienu reizi, pēc tam šis logs vairs netiks rādīts.

![DP4-1 Konstantīns Kotovičs foruma noteikumi]()
 
58. att. foruma noteikumi

Autorizētiem lietotājiem ir iespēja publicēt komentārus līdz 700 rakstzīmēm vai atbildēt uz citiem komentāriem, kā arī iespēja dzēst savus komentārus. Personāls var dzēst visus komentārus.

![DP4-1 Konstantīns Kotovičs komentāru lapa]()
 
59. att. komentāru lapa

10.Informācijas lapu apskate.
Lai skatītu kontaktinformāciju, navigācijas joslā noklikšķiniet uz pogas “About Us”.

![DP4-1 Konstantīns Kotovičs navigācijas joslā]()
 
60. att. navigācijas joslā

Šajā lapā ir saites uz pakalpojuma sociālajiem tīkliem, kā arī visa kontaktinformācija.

![DP4-1 Konstantīns Kotovičs kontaktinformācijas lapa]()
 
61. att. kontaktinformācijas lapa

Navigācijas joslā ir arī punkts “Help & Information”.

![DP4-1 Konstantīns Kotovičs navigācijas joslā, nolaižamajs saraksts]()
 
62. att. navigācijas joslā, nolaižamajs saraksts

Šajā lapā ir arī neliela informācija par pakalpojumu.

![DP4-1 Konstantīns Kotovičs informācijas lapa]()
 
63. att. informācijas lapa

## Testa piemērs