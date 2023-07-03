CREATE DATABASE  IF NOT EXISTS `mydatabase` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydatabase`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: mydatabase
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'Adam','Mickiewicz','Polska'),(2,'Henryk','Sienkiewicz','Polska'),(3,'Stefan','Żeromski','Polska'),(4,'Bolesław','Prus','Polska'),(5,'Juliusz','Słowacki','Polska'),(6,'Władysław','Reymont','Polska'),(7,'Czesław','Miłosz','Polska'),(8,'William','Shakespeare','Anglia'),(9,'Fyodor','Dostoevsky','Rosja'),(10,'Jane','Austen','Anglia'),(11,'Gabriel','García Márquez','Kolumbia'),(12,'Leo','Tolstoy','Rosja'),(13,'George','Orwell','Anglia'),(14,'Sofokles',' ','Grecja'),(15,'J.R.R.','Tolkien','Anglia'),(16,'Ernest','Hemingway','Stany Zjednoczone'),(17,'Franz','Kafka','Czechy');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `author_id` varchar(45) NOT NULL,
  `genre_id` varchar(45) NOT NULL,
  `pages` int NOT NULL COMMENT 'number of pages that the book consists of',
  `ISBN` varchar(45) NOT NULL COMMENT 'ISBN number',
  `time` double NOT NULL COMMENT 'time of reading the book',
  `language` varchar(45) NOT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `cover` varchar(100) DEFAULT NULL,
  `year` int DEFAULT NULL,
  PRIMARY KEY (`id`,`author_id`,`genre_id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Pan Tadeusz','1','1',400,'9788373271890',10.5,'polski','\"Pan Tadeusz\" to epicki poemat narodowy napisany przez polskiego poety Adama Mickiewicza. Został opublikowany po raz pierwszy w 1834 roku i jest uważany za jedno z najważniejszych dzieł literackich w historii polskiej literatury. Akcja poematu rozgrywa się w XIX-wiecznej Polsce, w czasach napoleońskich. \"Pan Tadeusz\" opowiada historię dwóch szlacheckich rodzin - Sopliców i Horeszków - oraz ich sporu, który ma miejsce w zrujnowanym majątku Soplicowo. Głównym bohaterem jest Tadeusz Soplica, młody szlachcic, który powraca do rodzinnego dworu po wielu latach spędzonych w Wilnie. W trakcie opowieści pojawiają się liczne wątki miłosne, przyjaźni, walki o niepodległość oraz przedstawienie obyczajów szlacheckiego społeczeństwa. Mickiewicz w mistrzowski sposób przedstawia polską przyrodę, opisując malownicze krajobrazy, jak również ukazuje polską duszę i patriotyzm. \"Pan Tadeusz\" jest nie tylko opowieścią o miłości, zdradzie i polskiej tożsamości, ale także stanowi hołd dla polskiej historii i tradycji. Jest uważany za symbol narodowej jedności i ducha polskiego. Dzieło Mickiewicza wyróżnia się pięknym językiem poetyckim, bogatą fabułą oraz głębokim spojrzeniem na polskie społeczeństwo i historię. \"Pan Tadeusz\" pozostaje jednym z najważniejszych i najbardziej cenionych dzieł literackich w Polsce i jest często czytany i analizowany zarówno w szkołach, jak i przez miłośników literatury.','https://s.lubimyczytac.pl/upload/books/4961000/4961225/1036954-352x500.jpg',1832),(2,'Quo Vadis','2','1',600,'9788373271777',12,'polski','\"Quo Vadis\" to powieść historyczna napisana przez polskiego pisarza Henryka Sienkiewicza. Akcja rozgrywa się w starożytnym Rzymie za panowania cesarza Nerona. Głównymi bohaterami są rzymski patrycjusz Marcus Vinicius oraz chrześcijanka Lygia. Ich miłość jest wystawiona na próbę w obliczu brutalności i prześladowań chrześcijan. Powieść ukazuje konflikt między dekadencją i okrucieństwem rzymskiego imperium a wartościami chrześcijańskimi, które dążą do miłości, miłosierdzia i pokojowego współżycia. \"Quo Vadis\" jest pełna dramatyzmu, napięcia i refleksji na temat ludzkiej natury i wartości moralnych.','https://s.lubimyczytac.pl/upload/books/4848000/4848905/663284-352x500.jpg',1895),(3,'Ludzie bezdomni','3','1',350,'9788324008744',8.75,'polski','\"Ludzie bezdomni\" to powieść społeczno-psychologiczna napisana przez polskiego pisarza Stefana Żeromskiego. Opublikowana po raz pierwszy w 1899 roku, powieść porusza problematykę bezdomności i wykluczenia społecznego. Akcja powieści skupia się na losach młodego bohatera, Władysława, który zmuszony jest opuścić rodzinne miasto i wędrować po różnych miejscach, staczając się na margines społeczeństwa. Autor ukazuje brutalną rzeczywistość życia bezdomnego, z jego biedą, przemocą i brakiem godności. Przez pryzmat losów głównego bohatera, Żeromski rzuca światło na nierówności społeczne i wykorzystuje bezdomność jako metaforę ludzkiej kondycji. \"Ludzie bezdomni\" to nie tylko opowieść o indywidualnym dramacie Władysława, ale również krytyka społeczeństwa i systemu, który powoduje wykluczenie jednostek. Powieść stanowi ważny głos w dyskusji na temat sprawiedliwości społecznej i potrzeby empatii wobec tych, którzy są pozbawieni dachu nad głową i szans na godne życie.','https://s.lubimyczytac.pl/upload/books/223000/223153/291782-352x500.jpg',1899),(4,'Lalka','4','1',500,'9788389524069',11.25,'polski','\"Lalka\" to powieść realistyczna autorstwa Bolesława Prusa, polskiego pisarza i publicysty, opublikowana po raz pierwszy w 1890 roku. Jest uważana za jedno z najważniejszych dzieł polskiej literatury. Akcja powieści rozgrywa się w Warszawie w drugiej połowie XIX wieku. Głównym bohaterem jest Stanisław Wokulski, inteligentny kupiec pochodzący z niższych warstw społecznych. Powieść ukazuje jego uczucie do Izabeli Łęckiej, pięknej i zamożnej mieszczańskiej dziewczyny, oraz konflikt między marzeniami o miłości a brutalną rzeczywistością społeczną. \"Lalka\" jest zarówno portretem społeczeństwa warszawskiego, jak i analizą ludzkich charakterów. Prus wnikliwie analizuje obyczajowość, korupcję i hipokryzję mieszczańskiego środowiska. Powieść porusza tematy takie jak miłość, ambicje, upadek moralny, a także relacje między jednostką a społeczeństwem. \"Lalka\" jest nie tylko literackim arcydziełem, ale również ważnym dokumentem społecznym i psychologicznym. Prus w mistrzowski sposób kreuje postaci i opisuje realia epoki, ukazując nie tylko indywidualne losy bohaterów, ale także problematykę społeczną i etyczną. Powieść wciąż jest czytana i doceniana zarówno przez krytyków, jak i przez czytelników, stanowiąc ważny element kanonu literatury polskiej.','https://s.lubimyczytac.pl/upload/books/4804000/4804205/903512-352x500.jpg',1887),(5,'Balladyna','5','2',200,'9788373271982',5.5,'polski','\"Balladyna\" to dramat poetycki autorstwa Juliusza Słowackiego, jednego z najważniejszych polskich poetów romantycznych. Dzieło zostało napisane w 1839 roku i stanowi jedno z najbardziej znanych i kontrowersyjnych utworów w polskiej literaturze. Akcja dramatu toczy się w mitycznej krainie Litawy. Głównymi bohaterami są Balladyna, młoda i piękna dziewczyna, oraz jej siostra Alina. Balladyna, pozbawiona skrupułów i pełna żądzy władzy, pod wpływem tajemniczej postaci o imieniu Gościeńko dokonuje zdrady i morderstwa w celu zdobycia korony. \"Balladyna\" porusza wiele tematów, w tym grzechu, winy, manipulacji oraz upadku moralnego. Przez dramat Słowacki eksploruje kondycję ludzką, kwestionując naturę człowieka i jego relacje z boskością. Utwór zawiera również liczne odniesienia do mitologii i symboliki. \"Balladyna\" jest znanym przykładem dramatu romantycznego, cechującego się dynamiczną akcją, emocjonalnością i intensywnym językiem poetyckim. Dzieło Słowackiego jest interpretowane na różne sposoby i budzi kontrowersje, a jednocześnie uznawane jest za ważną część polskiego dziedzictwa literackiego, ukazującą głębię ludzkiej psychiki i kondycji moralnej.','https://s.lubimyczytac.pl/upload/books/4970000/4970607/904524-352x500.jpg',1834),(6,'Chłopi','6','1',800,'9788373271821',15,'polski','\"Chłopi\" to wielotomowy powieść-epopeja napisana przez polskiego pisarza Władysława Reymonta. Pierwszy tom został opublikowany w 1904 roku, a całość cyklu składa się z czterech części: \"Jesień\", \"Zima\", \"Wiosna\" i \"Lato\". Powieść \"Chłopi\" przedstawia życie chłopów w polskiej wsi na przełomie XIX i XX wieku. Autor wnikliwie analizuje ich codzienne trudy, rytuały, wierzenia i relacje społeczne. Powieść skupia się na rodzinie Rzeszotów, która jest symbolem chłopskiego świata. Reymont w \"Chłopach\" ukazuje brutalną rzeczywistość chłopów, ich walkę o przetrwanie, ubóstwo i zależność od ziemi. Opisuje również konflikty między chłopami a dziedzicami, a także podziały wewnątrz samej społeczności wiejskiej. Powieść jest pełna realistycznych opisów przyrody, zwyczajów i tradycji wiejskich. \"Chłopi\" zostały uhonorowane Nagrodą Nobla w dziedzinie literatury w 1924 roku i są uważane za arcydzieło polskiej literatury. Dzieło Reymonta wywołało wiele kontrowersji, zarówno ze względu na swoją realistyczną i bezkompromisową wizję, jak i interpretacje społeczne, które zaprezentował. \"Chłopi\" stanowią ważny głos w dyskusji na temat roli chłopstwa w polskiej historii i kształtowania się narodowej tożsamości.','https://s.lubimyczytac.pl/upload/books/4897000/4897375/754693-352x500.jpg',1902),(7,'Dolina Issy','7','1',250,'9788324009161',6.25,'polski','\"Dolina Issy\" to powieść napisana przez polskiego pisarza Czesława Miłosza, laureata Nagrody Nobla w dziedzinie literatury. Opublikowana po raz pierwszy w 1955 roku, jest jednym z najważniejszych dzieł Miłosza. \"Dolina Issy\" jest wspomnieniową powieścią autobiograficzną, w której autor powraca do swojego dzieciństwa i młodości spędzonych w rodzinnej Dolinie Issy na Litwie. Opowiada o swoich przeżyciach, doświadczeniach i refleksjach na temat natury, historii i tożsamości. Powieść Miłosza jest pełna liryzmu i głębokiej refleksji filozoficznej. Autor przedstawia swoje związki z przyrodą, wpływ rodzinnych tradycji, a także zmagania z historią i jej tragicznymi wydarzeniami, takimi jak I wojna światowa czy sowiecka okupacja. \"Dolina Issy\" jest nie tylko osobistą opowieścią o dorastaniu i formowaniu się pisarskiej tożsamości Miłosza, ale również analizą kultury, religii i polityki. Powieść porusza tematy takie jak zagubienie, utrata i poszukiwanie sensu w świecie pełnym przemocy i chaosu. \"Dolina Issy\" jest uważana za arcydzieło literatury polskiej, które przyniosło Miłoszowi rozgłos i uznanie zarówno w kraju, jak i za granicą. Jego proza łączy piękno poetyckiego języka z głębokim spojrzeniem na kondycję człowieka i kondycję świata.','https://s.lubimyczytac.pl/upload/books/22000/22363/352x500.jpg',1953),(8,'Ogniem i mieczem','2','12',500,'9788389524182',10,'polski','\"Ogniem i mieczem\" to powieść historyczna napisana przez polskiego pisarza Henryka Sienkiewicza. Pierwszy tom został opublikowany w 1884 roku i jest częścią trylogii \"Ogniem i mieczem\", \"Potop\" i \"Pan Wołodyjowski\". Akcja powieści rozgrywa się w XVII-wiecznej Polsce, w czasach wojen kozacko-tatarskich. Opowiada historię miłości, zdrady, walki o wolność i politycznych intryg. Głównym wątkiem jest miłość pomiędzy polskim szlachcicem Janem Skrzetuskim a kozacką księżniczką Heleną. Ich relacja zostaje wystawiona na próbę w wyniku konfliktów i nieustannych wojen. \"Ogniem i mieczem\" to barwna epopeja, w której Sienkiewicz mistrzowsko przedstawia charakterystyczne dla epoki postacie, odzwierciedlając narodową tożsamość i ducha polskiego społeczeństwa. Powieść łączy w sobie romantyczne elementy, przygodę, historię oraz liczne opisy bitew i politycznych intryg. Dzieło Sienkiewicza zdobyło ogromną popularność i stało się jednym z najważniejszych dzieł polskiej literatury. \"Ogniem i mieczem\" zostało także zekranizowane i jest uważane za klasyk literatury przygodowej i historycznej. Powieść ukazuje polską historię, kulturę i bohaterstwo w kontekście burzliwych wydarzeń tamtych czasów.','https://s.lubimyczytac.pl/upload/books/4970000/4970915/905151-352x500.jpg',1883),(9,'Antygona','14','8',100,'9788378391248',3,'polski','\"Antygona\" to tragedia napisana przez greckiego dramatopisarza Sofoklesa w V wieku p.n.e. Utwór opowiada historię Antygony, młodej kobiety, która postanawia przekroczyć zakazy króla Kreona i pochować swojego brata, Polinejkesa, zgodnie z zasadami religii i moralności. Konflikt w dramacie polega na zderzeniu się dwóch podstawowych wartości: obowiązku wobec rodziny i obowiązku wobec państwa. Antygona podejmuje ryzyko i postępuje zgodnie z przekonaniem, że honor i sprawiedliwość wymagają pochowania brata. Kreon, natomiast, jako władca, stoi na straży prawa i nakazuje niepochowanie Polinejkesa jako kary za bunt. \"Antygona\" stawia pytania dotyczące moralności, sprawiedliwości i granic władzy. Utwór dotyka tematów takich jak lojalność wobec rodziny, posłuszeństwo wobec prawa i moralności oraz konsekwencje decyzji jednostki w obliczu konfliktów społecznych. Tragedia Sofoklesa jest uznawana za jeden z najważniejszych tekstów w historii literatury i teatru. \"Antygona\" eksploruje uniwersalne tematy i podkreśla trudności, jakie wynikają z konfliktu między lojalnością wobec bliskich a posłuszeństwem wobec władzy. Utwór jest nadal inspiracją dla wielu twórców i stanowi ważny element kanonu literackiego.','https://s.lubimyczytac.pl/upload/books/139000/139929/352x500.jpg',-442),(10,'Romeo and Juliet','8','2',200,'9788373271999',5,'angielski','\"Romeo i Julia\" to tragedia napisana przez Williama Shakespeare\'a w XVI wieku. Utwór opowiada historię dwóch młodych kochanków, Romea i Julii, którzy zakochują się w sobie mimo zaciekłej nienawiści panującej między ich rodzinami - Montekich i Kapuletów. Miłość Romea i Julii jest zakazana ze względu na niewypowiedzianą wrogość między ich rodzinami. Para decyduje się na tajne małżeństwo, ale ich szczęście nie trwa długo. W wyniku serii tragicznych zdarzeń, pomyłek i nieporozumień, Romeo i Julia w końcu giną, czyniąc z ich miłości mit. \"Romeo i Julia\" to opowieść o miłości, namiętności, przemocy i tragedii. Utwór porusza tematy takie jak konflikty społeczne, uprzedzenia, lojalność wobec rodziny, a także siłę miłości jako potężnej siły, która przekracza wszelkie przeszkody. Tragedia Shakespearea zdobyła ogromną popularność i jest jednym z jego najbardziej znanych dzieł. \"Romeo i Julia\" to nie tylko historia dwóch młodych kochanków, ale również analiza ludzkiej natury, impulsywności, przeznaczenia i wpływu społeczeństwa na jednostki. Utwór jest nieustannie adaptowany na scenie teatralnej, w filmach i innych formach sztuki. \"Romeo i Julia\" stało się symbolem miłości i tragedii, stając się nieodłączną częścią kultury popularnej i kanonu literackiego.','https://s.lubimyczytac.pl/upload/books/5040000/5040219/1032123-352x500.jpg',1591),(11,'Crime and Punishment','9','1',500,'9788373271838',12.5,'rosyjski','\"Zbrodnia i kara\" to powieść napisana przez rosyjskiego pisarza Fiodora Dostojewskiego. Opublikowana w 1866 roku, jest jednym z najważniejszych dzieł w literaturze światowej. Akcja powieści toczy się w Petersburgu i skupia się na głównym bohaterze, Rodionie Raskolnikowie, młodym studentu prawa. Raskolnikow, przeżywając trudną sytuację finansową i konflikty moralne, decyduje się popełnić morderstwo na lichwiarce. Powieść ukazuje wewnętrzne rozterki i walkę bohatera z poczuciem winy oraz konsekwencje jego czynu. \"Zbrodnia i kara\" dotyka głębokich tematów, takich jak moralność, egzystencjalne dylematy, sprawiedliwość i przestępstwo. Dostojewski analizuje psychologię bohatera, jego motywacje, a także wpływ społeczeństwa na jednostkę. Powieść porusza również kwestie nierówności społecznych i napięć w Rosji XIX wieku. Dostojewski w \"Zbrodni i karze\" mistrzowsko łączy psychologiczną głębię postaci z bogatym tłem społecznym i filozoficznym. Utwór jest nie tylko studium psychologicznym, ale także krytyką systemu społecznego i refleksją nad kondycją człowieka. \"Zbrodnia i kara\" jest uważana za jedno z najważniejszych dzieł literackich, które wywarło znaczący wpływ na literaturę i myśl filozoficzną. Powieść Dostojewskiego wciąż porusza czytelników, stawiając trudne pytania o naturę człowieka, moralność i granice jednostkowego działania.','https://s.lubimyczytac.pl/upload/books/5053000/5053602/1043237-352x500.jpg',1866),(12,'Pride and Prejudice','10','1',400,'9788373272002',10,'angielski','\"Duma i uprzedzenie\" to powieść napisana przez brytyjską pisarkę Jane Austen i opublikowana w 1813 roku. Jest jednym z najbardziej znanych i klasycznych dzieł literatury angielskiej. Akcja powieści rozgrywa się w Anglii w okresie wczesnego XIX wieku i skupia się na historii rodziny Bennetów. Główną bohaterką jest Elizabeth Bennet, inteligentna i niezależna młoda kobieta, która staje w obliczu różnych wyzwań, zarówno w życiu prywatnym, jak i w relacjach międzyludzkich. \"Duma i uprzedzenie\" jest historią o miłości, dążeniu do szczęścia, konwenansach społecznych i roli kobiet w społeczeństwie. Powieść bada tematy takie jak uprzedzenia, rola fortuny i położenia społecznego w kształtowaniu relacji między bohaterami. Jane Austen w \"Dumie i uprzedzeniu\" prezentuje inteligentne spojrzenie na życie i obyczaje swojego czasu, przywołując różnorodne postacie, które odzwierciedlają różne aspekty społeczne. Powieść jest pełna ironii, delikatnego humoru i precyzyjnych obserwacji ludzkiego charakteru. \"Duma i uprzedzenie\" zdobyła ogromną popularność zarówno w swoim czasie, jak i obecnie. Uważana jest za arcydzieło literatury angielskiej, a jej wpływ na późniejszą literaturę, film i kulturę jest niezaprzeczalny. Powieść nadal zachwyca czytelników swoją inteligentną fabułą, wyrazistymi postaciami i wszechobecną romantyczną atmosferą.','https://s.lubimyczytac.pl/upload/books/5055000/5055309/1046364-352x500.jpg',1813),(13,'One Hundred Years of Solitude','11','1',350,'9788324010068',8.75,'hiszpański','\"Sto lat samotności\" to powieść napisana przez kolumbijskiego pisarza Gabriela Garcíę Márqueza. Opublikowana w 1967 roku, jest jednym z najbardziej znanych dzieł literatury latynoamerykańskiej i uważana za klasyk światowej literatury. Powieść przedstawia historię rodu Buendía, którzy zamieszkują fikcyjne miasto Macondo. Rodzina jest nękana przekleństwem, które sprawia, że jej członkowie doświadczają samotności, nieszczęścia i niemożności znalezienia trwałego szczęścia. \"Sto lat samotności\" jest znana ze swojego magicznego realizmu, który łączy elementy rzeczywistości z fantastycznymi i nadprzyrodzonymi zjawiskami. Powieść porusza tematy takie jak miłość, wojna, polityka, tożsamość, korupcja, a także upadek i destrukcję cywilizacji. Márquez mistrzowsko przedstawia rozwój i upadek rodziny Buendía na przestrzeni wielu pokoleń, odwołując się do historii Kolumbii i kontekstu latynoamerykańskiego. Jego proza jest pełna bujnych opisów, złożonych postaci i niezapomnianych wizji. \"Sto lat samotności\" zdobyło ogromne uznanie zarówno wśród krytyków, jak i czytelników. Powieść Márqueza przyniosła mu Nagrodę Nobla w dziedzinie literatury w 1982 roku. Dzieło jest powszechnie uważane za jeden z najważniejszych tekstów literackich XX wieku, wpływając na wielu pisarzy i inspirując kolejne pokolenia czytelników swoją bogatą i wielowarstwową opowieścią o kondycji ludzkiej i losach społeczeństwa.','https://s.lubimyczytac.pl/upload/books/5045000/5045946/1030062-352x500.jpg',1967),(14,'War and Peace','12','12',1200,'9788373271760',30,'rosyjski','\"Wojna i pokój\" to powieść napisana przez rosyjskiego pisarza Lwa Tołstoja. Opublikowana w latach 1865-1869, jest jednym z najważniejszych dzieł literatury światowej. Powieść opowiada historię kilku rosyjskich rodzin i ich życia w czasie wojen napoleońskich, które miały miejsce w latach 1805-1812. Głównymi bohaterami są członkowie rodziny Rostowów, Bolkonskich i Bezuchowów, których losy splatają się wokół wielkich wydarzeń historycznych. \"Wojna i pokój\" to monumentalne dzieło, które łączy w sobie elementy epickie, romansowe i filozoficzne. Powieść jest zarówno studium psychologicznym postaci, jak i szczegółowym opisem wojennych działań i społeczeństwa rosyjskiego tamtego okresu. Tołstoj bada w swojej powieści tematy takie jak miłość, wojna, przemijanie, los jednostki i wpływ wydarzeń historycznych na życie codzienne. Jego proza charakteryzuje się głęboką analizą psychologiczną bohaterów oraz precyzyjnym opisem ich uczuć i motywacji. \"Wojna i pokój\" zdobyło uznanie zarówno wśród czytelników, jak i krytyków. Uważane jest za jedno z najważniejszych dzieł literackich, które wpłynęło na rozwój powieści jako gatunku. Powieść Tołstoja jest nie tylko wspaniałą opowieścią o ludzkiej naturze i historii, ale również refleksją nad sensem życia, moralnością i wartościami ludzkimi.','https://s.lubimyczytac.pl/upload/books/4823000/4823521/675807-352x500.jpg',1867),(15,'1984','13','10',300,'9788373271715',7.5,'angielski','\"1984\" to dystopijna powieść napisana przez brytyjskiego pisarza George\'a Orwella. Opublikowana w 1949 roku, jest jednym z najbardziej wpływowych dzieł literatury XX wieku. Akcja powieści rozgrywa się w totalitarnym państwie Oceania, które kontroluje wszystkie aspekty życia obywateli. Głównym bohaterem jest Winston Smith, który pracuje dla Partii Rządzącej, ale w tajemnicy buntuje się przeciwko reżimowi. Poprzez swoją walkę o wolność i poszukiwanie prawdy, Winston staje w opozycji do wszechobecnej inwigilacji, manipulacji informacji i braku prywatności. \"1984\" porusza tematy takie jak manipulacja władzą, zagrożenie totalitaryzmem, cenzura, kontrola społeczeństwa, degradacja języka oraz utrata indywidualności i wolności jednostki. Powieść zawiera wiele znanych terminów, takich jak Wielki Brat, Nowomowa czy Ministerstwo Miłości, które stały się częścią języka i kultury popularnej. George Orwell w \"1984\" przedstawia mroczną wizję przyszłości, w której jednostka jest całkowicie poddana władzy państwa. Powieść ukazuje konsekwencje totalitarnej kontroli nad umysłami i naruszenia podstawowych praw człowieka. \"1984\" od momentu swojego wydania zdobyło ogromne uznanie i stało się jednym z kluczowych dzieł literatury dystopijnej. Powieść Orwella kontynuuje swoją aktualność, zwracając uwagę na zagrożenia manipulacji informacją, nadużyć władzy i zagrożenia dla wolności jednostki. Jest ona nie tylko literackim arcydziełem, ale również ostrzeżeniem przed możliwościami destrukcji jednostki przez systemy totalitarne.','https://s.lubimyczytac.pl/upload/books/4999000/4999480/969157-352x500.jpg',1949),(16,'Folwark zwierzęcy','13','10',350,'9780061120084',8.75,'angielski','\"Folwark zwierzęcy\" to alegoryczna powieść napisana przez George\'a Orwella i opublikowana w 1945 roku. Jest to przypowieść polityczna, która krytykuje totalitaryzm i reżimy autorytarne. Akcja powieści rozgrywa się na fikcyjnym folwarku, gdzie zwierzęta buntują się przeciwko ludzkiemu panowaniu i przejmują kontrolę nad gospodarstwem. Zwierzęta organizują się w celu stworzenia równości i sprawiedliwości, tworząc własne zasady i system rządzenia. Jednak w miarę upływu czasu, władza stopniowo skupia się w rękach nielicznych przywódców, a równość z czasem zanika. \"Folwark zwierzęcy\" jest metaforą systemów politycznych, w których obietnice rewolucji i równości są łamane przez chciwość, korupcję i manipulację władzą. Powieść odnosi się do historii i wydarzeń rewolucji bolszewickiej w Rosji, ale ma również uniwersalne znaczenie w kontekście każdego reżimu totalitarnego. George Orwell w \"Folwarku zwierzęcym\" wykorzystuje postacie zwierząt, aby ukazać różne cechy i zachowania społeczne. Powieść porusza tematy takie jak indoktrynacja, manipulacja informacją, utrata wolności jednostki, a także konsekwencje braku kontroli nad władzą. \"Folwark zwierzęcy\" zdobył ogromne uznanie i jest uważany za jedno z najważniejszych dzieł literatury politycznej i społecznej. Powieść Orwella skłania do refleksji nad naturą władzy, nadużyciami rządzących i potrzebą walki o wolność, równość i sprawiedliwość.','https://s.lubimyczytac.pl/upload/books/5023000/5023928/994761-352x500.jpg',1945),(17,'The Lord of the Rings','15','11',1000,'9788373271647',25,'angielski','\"Władca Pierścieni\" to epicka powieść fantasy napisana przez J.R.R. Tolkiena. Składa się z trzech tomów: \"Drużyna Pierścienia\", \"Dwie Wieże\" i \"Powrót Króla\". Opublikowane w latach 1954-1955, powieść jest jednym z najbardziej wpływowych i popularnych dzieł fantasy. Akcja powieści rozgrywa się w mitycznym świecie Śródziemia i opowiada o losach różnych ras i postaci w ich staraniach o zniszczenie Jedynego Pierścienia, potężnego artefaktu, który daje władzę nad światem. Głównym bohaterem jest hobbit Frodo Baggins, który wraz z towarzyszami wyrusza w niebezpieczną podróż, aby zniszczyć Pierścień w Górze Przeznaczenia. \"Władca Pierścieni\" to historia o przyjaźni, odwadze, poświęceniu, ale także o walkach dobra ze złem. Powieść prezentuje bogaty świat fantastyczny, pełen różnorodnych ras, jak elfy, krasnoludy, ludzie, hobbitów, a także potworów i stworzeń mrocznych. Tolkien w \"Władcy Pierścieni\" stworzył nie tylko niezapomniane postacie, ale również kompleksowy system mitologii, języków i historii Śródziemia. Jego narracja jest pełna wizji, opisów krajobrazów, bitew i emocji, tworząc jednocześnie głębokie refleksje nad losem i kondycją ludzką. \"Władca Pierścieni\" zdobył olbrzymie uznanie czytelników na całym świecie i stał się klasycznym dziełem fantasy. Powieść Tolkiena była adaptowana na ekran w formie filmowej trylogii, która również zyskała ogromną popularność. \"Władca Pierścieni\" wciąż fascynuje czytelników swoim wspaniałym światem, trzymając ich w napięciu przez całą podróż przez Śródziemie.','https://s.lubimyczytac.pl/upload/books/209000/209143/628379-352x500.jpg',1937),(18,'The Old Man and the Sea','16','1',150,'9780684801223',3.75,'angielski','\"Stary człowiek i morze\" to nowela napisana przez amerykańskiego pisarza Ernesta Hemingwaya i opublikowana w 1952 roku. Jest to opowieść o starcu o imieniu Santiago, który wyrusza na ryby do Morza Karaibskiego. Główny bohater, Santiago, jest starzejącym się rybakiem, który od długiego czasu nie złowił żadnej większej ryby. Pewnego dnia wyrusza na rybacką wyprawę, podczas której łapie ogromnego miecznika. Walka z rybą trwa wiele godzin i staje się symbolicznym starciem między człowiekiem a naturą. \"Stary człowiek i morze\" to historia o wytrwałości, determinacji i siłowaniu się z przeciwnościami losu. Powieść porusza tematy takie jak samotność, męstwo, starzenie się i relacja człowieka z naturą. Hemingway w swoim stylu pisania, charakteryzującym się prostotą i oszczędnością słów, ukazuje wewnętrzne rozterki i siłę charakteru Santiago. \"Stary człowiek i morze\" zdobył ogromne uznanie zarówno wśród czytelników, jak i krytyków. Powieść przyniosła Hemingwayowi Nagrodę Nobla w 1954 roku. Dzieło jest uważane za jedno z najważniejszych w dorobku pisarza i stanowi przykład jego literackiego mistrzostwa. \"Stary człowiek i morze\" jest nie tylko piękną opowieścią o jednostce stawiającej czoła wyzwaniom natury, ale również medytacją nad kondycją ludzką i jej nieodłącznym związkiem z siłami przyrody.','https://s.lubimyczytac.pl/upload/books/5003000/5003593/962490-352x500.jpg',1952),(19,'The Metamorphosis','17','11',100,'9788071844070',2.5,'niemiecki','\"Przemiana\" to opowiadanie napisane przez austriackiego pisarza Franza Kafkę. Opublikowane w 1915 roku, jest jednym z najbardziej znanych i wpływowych dzieł literatury światowej. Opowiadanie opowiada historię Gregora Samsy, który pewnego dnia budzi się jako ogromny owad. Jego przemiana wstrząsa rodziną i wywołuje konflikty oraz zmiany w relacjach między bohaterami. Gregor staje się obiektem odrzucenia, niezrozumienia i wykorzystywania przez innych. \"Przemiana\" to metaforyczna opowieść o alienacji, wyobcowaniu i absurdzie egzystencji. Kafka eksploruje temat samotności, kondycji człowieka w społeczeństwie i kruchości ludzkiej tożsamości. Przemiana Gregora symbolizuje złamanie norm społecznych, niezdolność do komunikacji oraz utratę jednostkowego znaczenia. Opowiadanie Kafka cechuje charakterystyczny styl pisarski, w którym panuje atmosfera tajemniczości, niepewności i groteski. Autor kreuje klaustrofobiczną rzeczywistość, w której granica między fantazją a rzeczywistością zaciera się. \"Przemiana\" zdobyła uznanie zarówno wśród czytelników, jak i krytyków. Jest uważane za jedno z najważniejszych dzieł literatury XX wieku, które wywarło wpływ na literaturę i filozofię egzystencjalną. Opowiadanie Kafka porusza głębokie pytania dotyczące sensu istnienia, ludzkiej tożsamości i relacji międzyludzkich w społeczeństwie.','https://s.lubimyczytac.pl/upload/books/4975000/4975957/914552-352x500.jpg',1915);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `age` int NOT NULL COMMENT 'minimum age of a reader',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Epika',12),(2,'Dramat',16),(3,'Poezja',10),(4,'Nowela',14),(5,'Fantastyka',12),(6,'Literatura faktu',16),(7,'Horror',18),(8,'Tragedia',16),(9,'Romans',14),(10,'Science fiction',12),(11,'Realizm magiczny',16),(12,'Powieść historyczna',16);
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-03 10:32:19
