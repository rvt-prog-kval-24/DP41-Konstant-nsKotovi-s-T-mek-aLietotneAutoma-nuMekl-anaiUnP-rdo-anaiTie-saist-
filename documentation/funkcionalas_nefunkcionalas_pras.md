## Funkcionālās prasības :

1. Jaunu lietotāju reģistrācija:
    - Jāparedz ieejas informācijas par lietotāju ievadīšana, pārbaude uz simbolu skaitu un formāta pareizību.
    - Obligātu lauku pārbaude un kļūdas paziņojumu izvadīšana.
    - Lietotāja vārda un ē-pasta salīdzināšana ar esošajiem lietotājiem. Izvadīs kļūdu ar atbilstošo tekstu.
    - Minimālās prasības paroles ilgumam un sarežģītībai.
    - Paroles glabāšana, izmantojot drošu hašēšanas algoritmu. Parole tiks ievadīta divas reizes, lai izvairītos no drukas kļūdām. Ja parole, kura tiks ievadīta atkārtoti, nesakrītīs ar sākotnējo variantu, tiks parādīta kļūda.
    -Pēc veikmīgās lietotāja reģistrācijas, ziņojuma logā atnāks vēstule.
2. Lietotāja autorizācija:
    - Ja lietotājs eksistē datu bāzē, sistēmai ir jānodrošina autorizācija, pieslēdzoties ar e-pastu un paroli.
    - Ja kāds no laukiem nav ievadīts, izvadīt par to paziņojumu.
    - Lauku ievades pārbaude uz pareizību un kļūdas paziņojumi, ja parole vai vārds nesakrīt.
    - Kļūdu izvade, ja ievadītais lietotājvārds neeksistē datu bāzē.
3. Meklēšanas funkcija automašīnu klāstā:
    - Ja lietotājs ievada marku vai modeli, vai visus kopā, sistēmai ir jāparāda visi attiecīgie piedāvājumi.
    - Ja nav atrasti piedāvājumi, izvadīsies atbilstošs teksts.
    - Sistēmai ir jānodrošina meklēšanu pēc filtru saraksta, lai lietotāji varētu viegli atlasīt vajadzīgos kritērijus, tādus kā cena un marka.
    - Sistēmai ir jānodrošina meklēšana pēc kritērijiem un atslēgvārdiem kopā.
4. Forma automašīnas pirkšanai ar visiem nepieciešamajiem laukiem:
    - Obligātu lauku pārbaude, telefona numurs, vārds un uzvārds, un arī ka lietotājs piekrīt nosacījumiem.
    -Sistēmai ir jāparbauda vai lietotājs ievada tieši ciparus laukā priekš telefona numura un pēc nostātījuma tās sākās no “+371”.
    - Sistēmai jāsaglabā informāciju par izvēlēto krāsu.
5. Apkalpojoša personāla funkcijas:
    - Pasūtījumu apstiprināšana un dzēšana.
    - Piedāvājumu pievienošana un dzēšana.
    - Klienta un pasūtījumu informācijas apskate un izpildes statusa mainīšana.
    - Jauno automašīnu krāsu pievinošana vai dzēšana.
6. Komentāru atstāšana:
    - Obligātu lauku pārbaude un kļūdas paziņojumu izvadīšana.
    - Lietotāju iespēja atstāt un dzēst savus komentārus.
    - Komentāru laukā jābūt pārbaude uz simbolu skaitu.
    - Apkalpojošajam personālam jābūt iepējai dzēst jebkādu komentāri.
7. Personīgais lietotāja konts un to rediģēšana:
    - Konta informācija un personalizācijas iespējas, konta attēla maiņa.
    - Lietotāja paroles rediģēšanas. Ja tagadējais parolis ir ievadīts nepareizi vai jauns parolis un atkārtoti ievadītais neskrtitīs, tad izvadīs kļūdas.
    - Sistēmai ir jānodrošina visu pasūtījumu apskati priekš katra lietotāja un izvadi excel formātā.
8. Iziešana no profila:
    - Katram lietotājam jābūt iespēja iziet no lietotāja konta.
9. Ziņojumu saņemšanas sistēma:
    - Sistēmai jānosūta paziņojums par veiksmīgu reģistrāciju.
    - Sistēmai jānosūta paziņojums par veiksmīgu pasūtīšanu.
    - Lietotājam vajadzētu būt iespēja dzēst ziņojumus no sava konta pasta.
10. Transportlīdzekļa krāsu variantu attēlošana:
    - Visiem lietotājiem jābūt iespējai apskatīt automobiļa krāsu variantus, un sistēmai jāuzrāda attēls ar izvēlēto krāsu.
## Nefunkcionālās prasības
1. Veiktspēja: sistēmai jānodrošina atbilde lietotājam ne ilgāk kā 2 sekundes laikā un datu bāzes jautājumiem jābūt izpildītiem ne ilgāk kā 5 sekundēs.
2. Drošība: lietotāja paroles jābūt saglabātām, izmantojot šifrēšanu. Piekļuve administratīvajām funkcijām jābūt tikai autorizētiem darbiniekiem.
3. Dizains: lietotāja saskarnē jābūt viegli saprotamai un draudzīgai lietotājiem no visdažādākajām paaudzēm. Lietotāja saskarnei jābūt responsīvai, lai nodrošinātu labu pieredzi gan datoriem, gan mobilajiem ierīcēm.  
4. Aizsardzība pret SQL injekcijām. Šī prasība paredz nodrošināt, ka sistēma ir pasargāta no iespējamām SQL injekcijām, kas var rasties, ja nepietiekami tiek pārbaudīta un filrēta lietotāja ievadītā informācija.
5. Saprotama un viegla navigācija. Šī prasība attiecas uz lietotāja pieredzi, nodrošinot sistēmu ar saprotamu un intuitīvu navigāciju.
6. Saprotama administrāciju lapa priekš apkalpojošā personāla. Šeit svarīgs ir sistēmas pārvaldības skatījums, kas ir saprotams un vienkāršs, it īpaši apkalpojošam personālam vai administratoriem.
7. Vietne darbotos bez kļūdām visās populārākajās pārlūkprogrammās, piemēram, Google Chrome, Opera, Firefox, Edge, Safari.
8. Sistēmai ir nepieciešama spēja viegli pielāgoties jaunām funkcijām vai vides izmaiņām, nodrošinot tās atjaunināšanu un paplašināšanu.
9. Sistēmai jābūt aprīkotai ar automatizētu darbību iespējām, lai nodrošinātu efektīvu darbību un minimizētu cilvēka iesaisti, it īpaši attiecībā uz rutīnas procesiem vai ilgstošām darbībām.
10. Jābūt nodrošinātam vispusīgam un pieejamam sistēmas atbalstam, lai ātri novērstu jebkādas darbības vai sistēmas kļūmes, kā arī nodrošinātu lietotāju ar palīdzību un atbalstu sistēmas izmantošanā.

* Sistēmas reģistrācijas formas skice (skat.2.att.)

![DP4-1 Konstantīns Kotovičs Sistēmas reģistrācijas formas skice](https://media.discordapp.net/attachments/968604972730155058/1210658086860226600/Sistemas_registracijas_formas_skice.png?ex=65eb5c34&is=65d8e734&hm=22417d44e6a61e78f547bcf2fb5df630cc349d95774291fb298d7c8208c1908c&=&format=webp&quality=lossless)

2.att. Sistēmas reģistrācijas formas skice

Šī skice attēlo sistēmas interfeisu, kurā lietotāji var reģistrēties. Tajā formā ir 4 lauki un 3 pogas “Sign Up”, lai piereģistrētu jauno lietotāju, “Cancel”, lai atceltu darbību un poga “Already have an account?”, ja lietotājam jau ir konts šajā vietnē.

* Automašīnu pievienošanas formas skice (skat.3.att.)
![DP4-1 Konstantīns Kotovičs Automašīnu pievienošanas formas skice](https://media.discordapp.net/attachments/968604972730155058/1210658086407110677/Automasinu_pievienosanas_formas_skice.png?ex=65eb5c34&is=65d8e734&hm=10440ca2588cdeda56883cedd1ede2c5a537e83654c1dc7775c0c34366175dc6&=&format=webp&quality=lossless)
3.att. Automašīnu pievienošanas formas skice
Šī skice attēlo sistēmas interfeisu, kurā apkalpojošs personāls var pievienot jaunas automašīnas.

