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

## Sistēmas instalācija un palaišana 

Lai vietne darbotos uz jūsu paša datora, ir nepieciešams veikt instalācijas un palaišanas procesu. Zemāk esošajā instrukcijā ir sniegta detalizēta informācija par katru soli, lai nodrošinātu veiksmīgu vietnes iedarbināšanu lokāli:

1. Vietnes failu lejupielāde no GitHub:

- Apmeklējiet GitHub repozitoriju.
- Noklikšķiniet uz zaļā pogas "Code" un izvēlieties "Download ZIP".
- Atarhivējiet lejupielādēto ZIP failu.

2. Laragon uzstādīšana:

- Lejupielādējiet un instalējiet Laragon no oficiālās mājas lapas.
- Palaidiet instalēto Laragon.

3. Vietnes failu novietošana Laragonā:

- Atveriet Laragon un noklikšķiniet uz pogas "Root" augšējā daļā.
- Atarhivējiet iepriekš lejupielādēto ZIP failu mapē "www", kas atrodas mapē, kuru atverat, noklikšķinot uz pogas "Root".

4. Servera un datu bāzes palaišana:

- Noklikšķiniet uz pogas "Start All" galvenajā Laragon logā, lai palaidinātu tīmekļa serveri un MySQL datu bāzi.

5. Datu bāzes izveide:

- Pēc servera palaišanas atveriet datu bāzi, noklikšķinot uz pogas "Database" galvenajā Laragon logā.
- Pēc datu bāzes atvēršanas noklikšķiniet uz "File" kreisajā augšējā stūrī un izvēlieties "Run SQL file".
- Atlasiet failu "database.sql", kas atrodas lejupielādētā repozitorija mapē "sql".
- Šis fails izveidos datu bāzi ar visām nepieciešamajām tabulām.

6. Vietnes palaišana:

- Atveriet jebkuru interneta pārlūku jūsu datorā.
- Adreses joslā ievadiet: http://localhost/autosalons/index.php.
- Nospiediet Enter, lai atvērtu jūsu vietni.

## Programmas apraksts 

## Testa piemērs