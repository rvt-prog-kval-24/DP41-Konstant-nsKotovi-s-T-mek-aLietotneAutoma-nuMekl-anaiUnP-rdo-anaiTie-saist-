# Tīmekļa lietotne automašīnu meklēšanai un pārdošanai tiešsaistē

## Projekta apraksts
Kvalifikācijas darba uzdevums ir izveidot tīmekļa lietotni, kas atvieglos automašīnu meklēšanu un pārdošanu tiešsaistē . 
Ir plānotas vairākas funkcijas:
- Lietotājs:
  - Detalizētas informācijas par automašīnu apskate un nepieciešamās preces meklēšana pēc atslēgvārdiem un filtrēšanas kritērijiem (krāsa, ātrumkārba, marka, cenas intervāls); 
  - Apskatīt piedāvājumu visas pieejamās krāsās un veikt pasūtījumu aizpildot formu;
  - Iespēja mainīt sava profila datus (paroli un attēlu);
  - Iespēja apskatīt visus savus pasūtījumus un izvadīt excel tabulā;
  - Iespēja atstāt komentāri un dzēst to;
  - Reģistrācija un autorizācija.
  
- Apkalpojošs personāls:
  - Piedavājumu pievienošana vai dzēšana un informācijas rediģēšanas, piemēram, mainīt cenu, krāsu un citus datus par piedāvājumu;
  - Pievienot vai dzēst krāsu variantus;
  - Noteikt pasūtījuma statusu un pasūtījuma izpildes procesā mainīs pasūtījuma izpildes statusu;
  - Dzēst pasūtījumu;
  - Izvadīt tabulu ar klientu pasūītījumiem excel tabulā;
  - Atbildēt uz jautājumu vai dzēst (komentāru sistēma);
  - Iespēja mainīt sava profila datus;
  - Autorizācija.

## Izmantotās tehnoloģijas
- Lietotāja daļā tika izmantots:
  - HTML
  - CSS
  - JavaScript
- Servera daļā tika izmantots:
  - PHP
- Izstrādes vides, kas tika izmantotas:
  - Laragon, GIT, Visual Studio Code, Notepad++

## Izmantotie avoti
1. [W3School/css](https://bootsnipp.com/snippets/K0ZmK) - tika ņemts html un css kods priekš profila lapas.

2. [Bootstrap/header](https://getbootstrap.com/docs/5.0/examples/headers/) - tika ņemts html un css kods priekš header'a.

3. [Bootstrap/footer](https://getbootstrap.com/docs/5.3/examples/footers/) - tika ņemts html un css kods priekš footer'a.

4. [Bootstrap/design](https://getbootstrap.com) - tika ņemts css kods priekš lapu dizaina.

5. [jquery](https://code.jquery.com/jquery-3.6.0.min.js) - tika izmantots priekš ziņojumu (kļūdu vai apstiprinājumu) izvades.

6. [PhpSpreadsheet](https://github.com/PHPOffice/PhpSpreadsheet) - šī bibliotēka tiek izmantota, lai izveidotu Excel failus, izmantojot PHP. To izmanto, lai ģenerētu Excel tabulas ar datiem no mūsu vietnes un piedāvātu lietotājiem lejupielādēt šos failus ar informāciju par pasūtījumiem.

7. [Sweetalert](https://sweetalert2.github.io) - tika ņemta pirmā versija: "https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js", bet aktuālā saite ir ar otro versiju. Tika ņemts prieks apstiprinājuma vai kļūdas parādīšanas logam.
