-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 12, 2017 at 12:24 PM
-- Server version: 5.5.51-38.2
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `sarbeico_nfq`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(16, 'Nomeda Kasperavičienė'),
(15, 'Vilma Dailidėnienė'),
(14, 'Raimonda Janeliūnaitė'),
(13, 'Sandra Šumskytė'),
(12, 'D Lauraitienė'),
(11, 'V. Meškauskienė'),
(17, 'Daiva Jakavonytė'),
(18, 'Audronė Raškauskienė'),
(19, 'Irena Ragaišienė'),
(20, 'Ramutė Žemaitienė'),
(21, 'R.Belgerienė'),
(22, 'Ligita Juknevičiūtė'),
(23, 'Kate Kerrigan'),
(24, 'Jojo Moyes'),
(25, 'Karolina Germanavičiūtė'),
(26, 'Erika Burinskaitė'),
(27, 'Anna Todd'),
(28, 'Michelle Reid'),
(29, 'Lisa Kleypas'),
(30, 'Lynne Graham'),
(31, 'Sharon Kendrick'),
(32, 'Rachel Bailey'),
(33, 'Jude Deveraux'),
(34, 'Mark Greaney'),
(35, 'Joanne Harris'),
(36, 'Ruth Ware'),
(37, 'Tomas Kavaliauskas'),
(38, 'Stephen King'),
(39, 'George R. R. Martin'),
(40, 'Nora Roberts'),
(41, 'Tautvyda Marcinkevičiūtė'),
(42, 'Jonas Strielkūnas'),
(43, 'Aušra Kaziliūnaitė'),
(44, 'Mantvydas Leknickas'),
(45, 'Vladimir Voinovič'),
(46, 'Andrius Tapinas'),
(47, 'Tomas Mitkus'),
(48, 'Laima Lavaste'),
(49, 'Woody Allen'),
(50, 'Juozas Erlickas');

-- --------------------------------------------------------

--
-- Table structure for table `authors_books`
--

CREATE TABLE IF NOT EXISTS `authors_books` (
  `id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `authors_books`
--

INSERT INTO `authors_books` (`id`, `author_id`, `book_id`) VALUES
(1, 6, 15),
(2, 4, 15),
(3, 6, 16),
(4, 4, 16),
(5, 7, 17),
(6, 4, 17),
(7, 8, 18),
(8, 1, 18),
(9, 3, 19),
(10, 2, 19),
(11, 1, 19),
(12, 9, 20),
(13, 10, 21),
(14, 12, 22),
(15, 11, 22),
(16, 14, 23),
(17, 13, 23),
(18, 17, 24),
(19, 16, 24),
(20, 15, 24),
(21, 20, 25),
(22, 19, 25),
(23, 18, 25),
(24, 21, 26),
(25, 22, 27),
(26, 23, 28),
(27, 24, 29),
(28, 25, 30),
(29, 26, 31),
(30, 27, 32),
(31, 28, 33),
(32, 29, 34),
(33, 30, 35),
(34, 31, 36),
(35, 32, 37),
(36, 33, 38),
(37, 34, 39),
(38, 35, 40),
(39, 36, 41),
(40, 37, 42),
(41, 38, 43),
(42, 38, 44),
(43, 38, 45),
(44, 38, 46),
(45, 38, 47),
(46, 39, 48),
(47, 39, 49),
(48, 39, 50),
(49, 39, 51),
(50, 39, 52),
(51, 39, 53),
(52, 39, 54),
(53, 40, 55),
(54, 40, 56),
(55, 40, 57),
(56, 40, 58),
(57, 40, 59),
(58, 40, 60),
(59, 40, 61),
(60, 40, 62),
(61, 41, 63),
(62, 42, 64),
(63, 43, 65),
(64, 44, 66),
(65, 45, 67),
(66, 47, 68),
(67, 46, 68),
(68, 48, 69),
(69, 49, 70),
(70, 50, 71);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `year`, `description`, `date_created`) VALUES
(24, 'Kūryb. raš. dirbt. III-IV kl. 2 d.', 2015, 'Kūrybinės užduotys kviečia III-IV klasės mokinius į savarankiško mokymosi dirbtuves. Jie atliks užduotis ir kurs rišlius tekstus (pasakojimus, aprašymus ir kt.), parengtus remiantis ugdymo turinį reglamentuojančiais dokumentais – pradinio ugdymo lietuvių kalbos bendrosiomis programomis (2008 ir 2015 metų projektu), kurios apima šiuos kūrybinio rašymo gebėjimų ugdymo aspektus: pasakojimo, aprašymo, laiško, skelbimo, kvietimo kūrimas. Pasakojimai kuriami pagal: •paveikslėlių seriją, •pateiktą pradžią, •pasakojimo gaires, •pateiktą arba pačių sudarytą planą, •kvietimą, skelbimą, •vietos, įvykio aprašymą, •pateiktą dialogą. Siekiama, kad mokiniai rašytų vaizdžiai – įterptų vaizdingų žodžių ir posakių, laikytųsi pasakojimo struktūros (pradžia, įvykis, pabaiga). Jie mokomi kurti detalius daiktų ir augalų aprašymus (pagal pavyzdį, planą) ir aprašant remtis savo pojūčiais, taip pat rašant laiškus, skelbimus ir kvietimus -- atsižvelgti į šių tekstų tikslą ir adresatą, apmąstyti ir išskirti jiems būdingas struktūrines dalis (pvz., laiško – tai data, kreipinys, pasisveikinimas, atsisveikinimas, parašas; skelbimo, kvietimo – kreipinys, tikslas, vieta, laikas, apranga, kitos detalės, parašas; žinutės – kreipinys, tikslas, laikas, vieta, parašas). Mokiniai skatinami savo sukurtus tekstus vertinti kritiškai, pratintis juos taisyti ir tobulinti, siekiama, kad jie įgustų taikyti išmoktas skyrybos ir rašybos taisykles. Atverstinio užduotys apima medžiagos kaupimo, planavimo, rašymo (kūrimo), koregavimo (tobulinimo), skelbimo etapus.', '2017-02-12 13:53:53'),
(23, 'Skaičiuoju, perku, rašau ir piešiu', 2013, 'Leidinys skiriamas lavinamųjų klasių mokiniams. Atlikdami užduotis jie ne tik mokysis skaičiuoti nuo 5 iki 10, atlikti aritmetinius veiksmus, bet ir susipažins su kai kurių prekių kainomis, bendrosiomis sąvokomis, mokysis priskirti daiktą daiktų grupei. Kiekvienas skaičius pristatomas skirtingoje daiktų (prekių) grupėje: 5 – raštinės prekių, 6 – indų ir stalo įrankių, 7 – švaros prekių, 8 – gėlių, 9 – žaislų, 10 – maisto produktų.\r\n \r\nPratybų sąsiuvinis „Skaičiuoju ir perku" dėl užduočių įvairovės bus geras pagalbininkas pedagogams, įdomus mokiniams, naudingas tėvams, padedantiems vaikams lavintis namuose. Jis parengtas lavinamųjų klasių mokiniams, tačiau galėtų naudoti ir ikimokyklinio amžiaus vaikų tėvai.\r\n \r\nUžduotys gali tikti ne tik matematikos, bet ir pasaulio pažinimo, dailės, lietuvių kalbos pamokose.', '2017-02-12 13:50:06'),
(22, 'Skaičiuok ir nuspalvink', 2011, 'Šis matematikos sąsiuvinis skiriamas 2 klasės mokiniams, nors gali naudotis ir kitų klasių mokiniai, norintys įtvirtinti skaičiavimo įgūdžius, mėgstantys spalvinti. Sudėties ir atimties iki 100, daugybos ir dalybos pratimai pateikti patrauklia forma, norint sužadinti mokinių susidomėjimą matematika.\r\n\r\nTeisingai nuspalvinę paveikslėlių plotelius, mokiniai galės džiaugtis šauniais pasakų veikėjais bei patys nusikelti į nuostabią pasakų karalystę. Šis leidinukas puikus pagalbininkas mokytojui, siekiančiam paįvairinti pamokas.\r\n\r\nAutorės', '2017-02-12 13:47:48'),
(25, 'Speaking for exams', 2015, 'Mokymosi priemonė Speaking for Exams skirta padėti aukštesniųjų klasių mokiniams pasirengti valstybinio anglų kalbos brandos egzamino kalbėjimo dalies užduotims. Leidinyje glaustai apžvelgiami svarbiausi anglų kalbos tarimo ir intonacijos aspektai, pateikiama patarimų ir praktinių užduočių, kurios padės įtvirtinti monologinės ir dialoginės kalbos struktūravimo, diagramų apibūdinimo įgūdžius, plėsti žodyną ir sėkmingai atlikti kalbėjimo užduotis per egzaminą. Knygoje gausu interneto nuorodų: stebėti videopamokas, atlikti interaktyvias užduotis. Kiekvienas skyrius baigiasi pasiekimų įsivertinimo dalimi. Atlikdamas įsivertinimo užduotis mokinys pasitikrins žinias ir gebėjimus. Mokymosi priemonė papildyta kalbėjimo užduočių, atliekamų mokinių bendraamžių, vaizdo įrašais. Juos mokiniai ras adresu https://goo.gl/XqdAn2. Leidinio užduočių atsakymai pateikiami „Šviesos” leidyklos tinklalapyje adresu http://www.sviesa.lt/atsakymai/SpeakingForExams.pdf.', '2017-02-12 13:56:31'),
(26, 'Mokausi būti saugus', 2011, 'Jei nori būti visada saugus ir net apsaugot nuo bėdų kitus, knygelę šią paimki į rankas, geru keliu jinai tave nuves. Ji tau papasakos svarbių dalykų, kur, pavyzdžiui, nelaimės tyko, ko reikia imtis, kai bėda ištinka, kaip vengti to, kas pavojinga! Taigi aptarkime dabar kartu, ką išmanyti tau labai svarbu! \r\n\r\nTikimės, kad atlikęs šias užduotėles išmoksi įvertinti pavojų, tinkamai elgtis įvykus nelaimei, padėti ne tik sau, bet ir pasirūpinti jaunesniais šeimos nariais ar draugais. Įgytos žinios suteiks tau pasitikėjimo savo jėgomis ir drąsos. \r\n\r\nAtkreipk dėmesį į skiltį ATMINK - čia pateikiami patarimai tau labai pravers.', '2017-02-12 13:58:13'),
(27, 'VESTUVĖS BUS!', 2016, 'Vestuvės bus!" - antroji Ligitos Juknevičiūtės knyga, romano „Vestuvių nebus!"tęsinys.\r\n\r\nJausminga ir nuolat į komiškas istorijas įsivelianti Vaiva, santūrusis snaudžiantis vulkanas - jos mylimasis Saulius, aistringasis gundytojas ir dykumų princas Tahiras, paslaptingoji meilės nusikaltėlė Andžela, lengvabūdiškoji dainininkė Mamuka — visi pirmosios knygos herojai vėl susitiks egzotiškoje šalyje, nes gelbės dingusį Mamukos kūdikį ir gaudys nusikaltėlius.\r\n\r\n„Vestuvės bus!" - tai smagi detektyvinė meilės nuotykių komedija, paskaninta lietuviškų realijų, dramos ir idealistinių idėjų motyvais.\r\n\r\n„Moterys yra tokios nenuspėjamos... Jos mane priverčia daryti keisčiausius dalykus ir net tapti geresniu žmogumi, kuriam rūpi pabėgėlių problemos, o ne tik žirgų lenktynės. Ar aš galėjau būti laimingas be Vaivos, nors ir taip turiu dvi nuostabias žmonas?"\r\nTAHIRAS\r\n\r\n„Nesitikėjau, kad vėl pamatysiu savo princą Tahira, nors, ką čia slėpti, po to, kai jis buvo deportuotas, paslapčia svajojau įsitikinti, ar jis mane dar prisimena."\r\nVAIVA\r\n\r\n„Maniau, kad supūsiu tam kalėjime Lenkijoje, bet ištrūkau i laisvę, buvau pagrobta nusikaltėlių ir kalinama, tada bėgau, gelbėjau kitus ir net atradau naują meilę."\r\nANDŽELA', '2017-02-12 14:03:54'),
(28, 'Laimingos santuokos paslaptis', 2017, 'Jaudinamai atvira, kupina gyvenimo išminties santuokos istorija, regima dviejų moterų akimis. Romanas yra pelnęs romantiškiausios metų knygos titulą. \r\nTresa Nolan, klestinti kulinarijos tekstų autorė, išteka už Dano –  žavaus, bet paprasto jaunuolio, žvelgiančio į ją aistringomis akimis. Po vestuvių ji ima abejoti savo sprendimu. Tresai atrodo, kad nemyli Dano ir paskubėjo įsipareigoti, kad jųdviejų meilė netikra. Ji trokšta  ypatingos meilės, kaip jos senelių – Bernadinos ir Džeimso.\r\nPer vestuves mamos padovanoti Bernadinos receptai su močiutės gyvenimo istorija atveria Tresai akis.\r\nKadaise močiutė suprato, kad lengvos santuokos nebūna. Dabar ir Tresa ima suvokti, jog reikia įdėti pastangų, kad santuoka būtų laiminga, nes santuokinis pažadas – ne tušti žodžiai...\r\nKnygoje nestokojama gyvenimo poroje išminties, senų airiškų receptų ir maisto gaminimo patarimų.', '2017-02-12 14:15:58'),
(29, 'Nakties muzika', 2017, 'Talentinga smuikininkė Izabelė Delansi savo palaimingą gyvenimą visada laikė savaime suprantamu. Bet netikėtai automobilio avarijoje žūsta jos vyras, palikdamas dideles skolas, ir ji su vaikais yra priversta išsikraustyti iš prašmatnių namų Londone. Į namą, tikrą griuveną, nuošaliam kaime, kurį paveldėjo iš savo keistuolio atsiskyrėlio giminaičio. Izabelei šis namas suteikia galimybę atsigauti ir viltį pasirūpinti dviem be tėvo likusiais vaikais.\r\n \r\nVisiems namo kampams griūvant, o santaupoms sparčiai senkant, Izabelė pagalbos kreipiasi į kaimynus, nė nenumanydama, kad vien jos buvimas čia žadina neįtikėtinas aistras. Metui Makarčiui, jos naujajam kaimynui, šis namas reiškia kerštą šeimai, kadaise sužlugdžiusiai jo tėvą. Meto žmonai Lorai jis simbolizuoja tobulo gyvenimo perspektyvą, o nusigyvenusiam nekilnojamojo turto agentui — šviesią ateitį.\r\n \r\nTroškimams keistai persipinant, keičiasi ir žmonių gyvenimai, aplanko netikėti jausmai...', '2017-02-12 14:18:07'),
(30, 'Už stiklo durų', 2017, 'Karolina Germanavičiūtė – knygos „Lieknesnė, gražesnė, laimingesnė aš“ autorė, sveiko gyvenimo būdo patarimus dalijanti ir savo tinklalapyje www.missfit.lt. Šiuo metu Londone gyvenanti Karolina dirba žurnaliste. „Už stiklo durų“ – pirmasis autorės romanas, kurį parašyti įkvėpė ją supantys žmonės.\r\n \r\nTai romanas apie mus, moteris: geidžiamas, nuodėmingas, įskaudintas ir įkvepiančias.\r\n \r\nLaimė, ištikimybė ir gražūs santuokos metai – kiekvieno siekiamybė, tačiau likimas knygos herojams yra paruošęs kitokį planą. Jauna mergina Lilė įsipainioja į meilės trikampį. Ji stengiasi, neriasi iš kailio, norėdama įrodyti Ignui, kad palikęs savo žmoną Liną jis nieko nepraras. Priešingai – laimės. Tačiau Ignas nepataisomas egoistas. Jis nevengia trumpalaikių romanų ir vienkartinių nuotykių. Geriausia Linos draugė Rasa irgi buvo tapusi Igno vieno aistringo vakaro užgaida. Rasa šią nuodėmę slepia, bet tai ne vienintelis ją slegiantis dalykas. Jos ir Mindaugo santuoka iš pažiūros atrodo tobula, tačiau viduje ją drasko priekaištai, smurtas ir nepagarba. Ji nebenori apsimetinėti laiminga žmona.\r\n \r\n„Meilė ir draugystė – tai lyg tiksinti bomba. Nežinai, kada ji sprogs. Bet jei sprogs – sugriaus viską, kuo kadaise tikėjai. Įsileidęs žmogų į širdį, suteiki jam galimybę sugniuždyti tave iš vidaus. Sužeisti tikrąjį tave.“\r\n \r\nPirmajame Karolinos Germanavičiūtės romane – šeimos paslaptys, nuoskaudos ir intrigos. Pakilimai ir nuopuoliai, gyvenimai, kurie jungiasi, kertasi, išsiskiria. Jaunų žmonių klaidos, jausmai, pasirinkimai ir vertybės. Likimo ironija ir netikėta laimė.', '2017-02-12 14:19:04'),
(31, 'Dukra', 2017, 'Pakeisti save – didžiausias darbas. Sugerti visus savo negatyvius būdo bruožus ir paversti teigiamais – iššūkis, kuris mane skatino atrasti savo pačios aukso viduriuką. Kad ir kokią tamsą išgyvenau praeityje.\r\nMano istorija viena iš daugybės. Liūdna, baugi, sukrečianti, bet su laiminga pabaiga. Tai pasakojimas apie smurtautojo dukters gyvenimą ir siekį jį pakeisti. KAIP SMURTĄ PAVERSTI ANGELU? Kaip susitaikyti su praeitimi ir atleisti? Kaip iš naujo pamilti save, pasitikėti ir patikėti, kad viską pakeisti įmanoma? Atsiverti, išjausti, perduoti ir įkvėpti pokyčiams, nors atrodo, kad daugiau neištversi.\r\nSuklupus – atsistoti.\r\nPASITAISYTI KARŪNĄ IR DARYTI.\r\nErika yra viena iš geriausių mokinių. Didžiuojuos jos pasiekimais. Tikiu, kad būtent ši tikra istorija, kurią papasakojo savo knygoje, padarė ją žmogumi, kuris įkvepia ir tarnauja ne tik savo, bet ir visuomenės labui.', '2017-02-12 14:21:33'),
(32, 'BEFORE. Kai aš tave pamačiau', 2017, 'Anna Todd sužavėjo šimtus milijonų skaitytojų visame pasaulyje – dabar ir jūs turite progą susipažinti su daugiausia kartų perskaityta ir labiausiai aptariama knyga internete! Nevaržomi jausmai, karšta meilė, atvira erotika.\r\nŠi knyga – tai unikali galimybė į populiariausią meilės istoriją pažvelgti Hardino akimis!\r\nPrieš sutikdamas Tesą, Hardinas buvo viskam abejingas mergišius, savo tikrąjį veidą slepiantis po atšiaurumo kauke. Kiekviena nauja mergina buvo lyg žaidimas, kurį laimėjus apimdavo nuobodulys. Tesa buvo tik naujas iššūkis, tačiau visai netikėtai Hardiną užklupo meilė. Jis niekada nesitikėjo, kad tokia kukli pilkų akių mergina pakeis ne tik jo gyvenimą, bet ir išgydys sužeistą širdį. Juos užvaldė svaiginanti, aistringa ir skaudžiausia meilė, kokios dar neteko patirti.\r\nAnna Todd savo skaitytojams dovanoja išskirtinę galimybę į pačius įsimintiniausius AFTER knygų serijos įvykius pažvelgti Hardino ir kitų serijos veikėjų akimis. Sužinosite, kokie jausmai ir mintys sukosi Hardino galvoje, kai pirmąkart pamatė Tesą. Kartu su pagrindiniu veikėju išgyvensite praradimo baimę, neviltį ir atgailą, suvokus galimus savo veiksmų padarinius. Taip pat knygoje „BEFORE. Kai aš tave pamačiau“ rasite dar niekur nepublikuotų scenų, sužinosite, kaip vėliau klostėsi jau subrendusių jūsų mėgstamų herojų gyvenimas.\r\n\r\n„Anna Todd yra didžiausias fenomenas literatūros pasaulyje!“\r\n„Cosmopolitan“', '2017-02-12 14:22:54'),
(33, 'Emilė ir skandalingasis princas (BALF 3)', 2015, 'Sužinojusi, kad pasaką priminęs jos gyvenimas pastatytas ant melagysčių pamatų, ji spruko. Dabar naivioji Emilė Balfor vargiai suduria galą su galu. Princas Luisas Kordoba iš pirmo žvilgsnio atpažįsta Balforų atžalą – vienintelę moterį, kurios nepaveikė jo kerai. Be cento likusi Emilė negali atsisakyti pasiūlymo gauti stogą virš galvos, net ir žinodama, kad teks dalytis su mergišiumi lova!\r\nIšvežta į jo didenybės karalystę, Emilė toli gražu neprilygsta per kraštus besiliejančiam princo seksualumui. Bet jos širdis įspėja netapti tik paprasta jo sugulove!', '2017-02-12 14:24:28'),
(34, 'Pavasario skandalai', 2015, 'Londono aukštuomenėje pasirodo keturios jaunos merginos. Jų vienintelis tikslas – ištekėti. Gimsta drąsus vyro medžioklės planas. Dabar tereikia pasitelkti klastą ir moteriškus kerus.\r\n\r\n„Noriu, kad su manimi darytum viską, apie ką anksčiau fantazavai...“ Šiais skandalingais žodžiais Deizė Bouman, vienintelė iš keturių dar neištekėjusi sienų ramstytoja, savo likimą atiduoda į rankas vyrui, kuris anksčiau jai atrodė mažiausiai tinkamas.\r\n\r\nTris sezonus praleidusi Londono aukštuomenėje ir nesusiradusi vyro Deizė Bouman iš tėvo išgirsta griežtus žodžius: ji privalanti tai padaryti. Kuo greičiau. O jeigu nesugebės pati rasti tinkamo jaunikio, turės tekėti už to, kurį parinko jis, – vienišiaus Metjaus Svifto.\r\nDeizė apimta siaubo. Tačiau Boumanai nepripažįsta nesėkmių ir ji nusprendžia: iš kailio išsiners, bet ištekės... už bet ko... tik jau ne už Metjaus. Deja, ji neįvertina netikėtai atsiskleidusio šio jaunuolio žavesio. Tarp jų įsiplieskia aistra, kurios nė vienam nepavyksta suvaldyti.\r\nGaliausiai, kai Deizė ryžtasi jam atsiduoti, išaiškėja neįtikėtina paslaptis... Ji gali sužlugdyti ne tik Metjaus ateitį, bet ir meilę.\r\n\r\n \r\n\r\nLisa Kleypas (Liza Kleipas) – dvidešimt vieno istorinio ir šiuolaikinio meilės romano, išversto į keturiolika pasaulio kalbų, autorė. 1985 m. ji tapo grožio konkurso „Mis Masačusetsas“ nugalėtoja, dalyvavo konkurse „Mis Amerika“. Būdama dvidešimt vienų Lisa baigė Velslio koledže politikos mokslus ir išleido savo pirmąjį romaną. Jos knygos netrukus pateko į „New York Times“, „USA Today“ ir „Publishers Weekly“ skelbiamų perkamiausių knygų sąrašus.\r\n2002 m. Lisa Kleypas apdovanota prestižiniu „Romance Writers of America“ asociacijos RITA prizu. Auksinė statulėlė, pavadinta pirmosios asociacijos prezidentės Ritos Klei Estrados (Rita Clay Estrada) vardu, simbolizuoja meilės romanų rašytojo meistriškumą.', '2017-02-12 14:25:16'),
(35, 'Sicilija, mano meile!', 2015, 'Įsakmus bučinys\r\n\r\nPriversta paklusti Roko Leopardžio reikalavimui, Džulija Simonds su sūnėnu Džošu netikėtai atsiduria Sicilijoje. Pasirodo, kad vaikas turi turtingų siciliečių šeimos kraujo ir jam dera gyventi Leopardžių namuose.\r\nRokas netrunka suprasti, kaip smarkiai klydo palaikęs Džuliją berniuko motina, siekiančia pasipelnyti iš turtingos šeimos. Džulija – jautri ir nepatyrusi mergina, kuri atsidavusi augino žuvusios sesers sūnų. Susižavėjęs Rokas Leopardis pasiūlo Džulijai tapti jo žmona, kad mažasis Džošas turėtų tikrą šeimą!\r\n\r\nSaldus gundymas\r\n\r\nAlesandras Leopardis tiesiog pasiunta sužinojęs, kad jo asmeninį lėktuvą pilotuoja Leonora Tekston. Moterų jis nepriima į darbą: jos pernelyg blaško dėmesį. O Leonora – tikra gražuolė. Paslaptingas milijonierius užsigeidžia, kad ji taptų jo meiluže, bent vienai nakčiai. Bet kai spektaklis virsta gundymu, Alesandras pajunta, kad Leonora jam rūpi labiau, nei įsivaizdavo...\r\n\r\nŠvelnus paliepimas\r\n\r\nAnė daugiau nieko neturi, tik savo kūdikį. Tačiau didžiausiam jos gyvenimo turtui iškilo grėsmė. Falkonas Leopardis atvyko pareikalauti teisių į velionio netikro brolio vaiką. Parsivežęs Anę su kūdikiu namo į Siciliją Falkonas pasijunta plėšomas prieštaringų jausmų: jis negali išsižadėti pareigos, bet nebepajėgia tramdyti geismo. Visai čia pat rezgamos pinklės. Kilnusis Falkonas ryžtasi apsaugoti Anę ir jos sūnelį nuo pavojų...', '2017-02-12 14:26:07'),
(36, 'Sofija ir karštasis sicilietis (BALF 4)', 2015, 'Ketvirtasis serijos Balforų šeimos paveldėtojos romanas\r\n\r\nVisos Balforų merginos žavios, prašmatnios ir puošnios – visos, išskyrus Sofiją. Įsitikinusi, kad yra putli ir prasčiokiška, viešumos ji stengiasi vengti. Jos tėvui jau atsibodo nuolatinis Sofijos slapstymasis. Norėdamas priversti ją pasitikėti savimi jis suranda jai darbą. \r\nDirbdama pas sicilietį Marką Speranzą ji išties praregi. Nors Sofija puikiai supranta, jog būdama ne itin graži negalėtų apžavėti tokio galingo vyro, vis dėlto jis, regis, pasiryžęs ją suvilioti. Nejau dailusis milijonierius turi ir kitų, slaptų, kėslų?', '2017-02-12 14:27:53'),
(37, 'Tariant sutinku (KINK 4)', 2015, 'Ketvirtasis serijos Kinkeidai. Šeimos paslaptys romanas\r\n\r\nRenginių organizatorei Karai Kinkeid sunku planuoti sesers vestuves su vyru, kurį Kara įsižiūrėjusi nuo pat vaikystės. Tampa dar sunkiau, kai sesuo viską atšaukia. Negana to, paliktas jaunikis ima rodyti Karai išskirtinį dėmesį, kėsindamasis sugadinti jos santykius su šeimos nariais... o ji galiausiai vis tiek atsiduria jo lovoje.\r\nŽlugus bejausmėms sužadėtuvėms viešbučių magnatas Elijus Hotonas mano pagaliau radęs tinkamą moterį. Naujas planas: įtikinti Karą, kad jis neturi jokių piktų kėslų ir jai telieka ištarti stebuklingą žodį sutinku...', '2017-02-12 14:30:07'),
(38, 'Mėnesienos maskaradas', 2015, 'Šiuo nauju kerinčiu romanu Jude Deveraux tęsia savo bestselerių trilogiją apie mažutį Virdžinijos miestelį, kuriame bus atskleidžiami stebinantys trijų koledžo draugių likimai.\r\n\r\nSuviliota ir staiga pamesta mylimojo, Sofi Kinkeid pabėga į vietą, kurią jos draugė Kim Oldridž vadina rojumi žemėje. Bet pirmas Sofi įspūdis apie Ediliną anaiptol ne toks nuostabus: po to, kai sugenda jos automobilis, eidama keliu Sofi vos nepatenka po greitai lekiančio sportinio BMW ratais. Šiokio tokio pasitenkinimo jai suteikia smulkus kerštas, ir netrukus pasklinda gandas, kad žavinga naujoji atvykėlė kaip reikiant pamokė savo kandumu liūdnai pagarsėjusį daktarą Ridą Oldridžą. Bet tai ne pirmas kartas, kai karštoji menininkė atsikeršydama nueina per toli: vokas, kurį gabenasi su savimi, galėtų sugriauti buvusio jos draugužio ateitį. Ridas Oldridžas irgi turi paslapčių, tarp jų ir geismą suartėti su gražuole, aukštyn kojomis apvertusia niūrų jo pasaulį. Po nakties dangumi jųdviejų maskaradas kerintis — bet ar dienai išaušus jis nepavirs į dulkes?', '2017-02-12 14:36:09'),
(39, 'Invazija', 2017, 'Tomo Clancy bendraautorio M. Greaney romane INVAZIJA į intriguojančio susirėmimo epicentrą patenka Lietuva — kaip Rusijos agresyvios politikos taikinys, prasikertant koridorių į smarkiai militarizuotą Kaliningrado sritį ir planuojant savo tolesnių santykių su Vakarais strategiją.\r\n \r\nTikėtino naujo karinio konflikto literatūrinę viziją romane įžiebia kelios teroristinės atakos: SGD terminalo Klaipėdoje susprogdinimas, rusų karinio sąstato, bildančio tranzitu per Lietuvą į Kaliningrado sritį, apšaudymas nuo Švitrigailos gatvės viaduko Vilniuje...\r\n \r\nBeveik tuo pat metu per pasaulį nusirita ištisa virtinė kitokio pobūdžio smurtinių išpuolių, kurie ne tik kenkia globaliam planetos energetikos ūkiui bei ekonomikai, bet ir jaukia tarptautinę politiką.\r\n \r\nŠie tragiški įvykiai, iš pažiūros tarsi niekuo tarpusavy nesusiję, atkreipia JAV prezidento Džeko Rajano bei amerikiečių žvalgybos tarnybų dėmesį, tarp jų ir įslaptintos agentų Kuopelės su joje tarnaujančiu prezidento sūnumi. Užčiuopus siūlo galą, pamažu ima ryškėti Rusijos prezidento Valerijaus Volodino, diktatoriaus ir kleptokrato, rezgamas voratinklis, į kurį pirmiausia gresia pakliūti Lietuvos valstybei. Kol amerikiečių žvalgybos agentūros skuba išnarplioti klastingos užmačios gijas ir užkirsti jai kelią, prezidentas Rajanas energingai bando gesinti Europoje beįsižiebiantį naują karo židinį — visų pirma kviesdamas burtis ir rimtai pasirengti viena kitos gynybai ne itin vieningai nusiteikusias Europos Sąjungos bei NATO šalis.\r\n \r\nPrie Lietuvos rytinės sienos iš Baltarusijos pusės jau telkiamos Rusijos sausumos karinės pajėgos, vakarinėje pusėje po Baltijos jūrą šmaižo rusų povandeniniai laivai, tuo tarpu Vakarų šalių koalicija neryžtingai ir baugščiai trypčioja vietoje. Tokia laikysena Kremliaus diktatorių tiktai padrąsina ir įkvepia jam dar didesnį pasitikėjimą savimi.', '2017-02-12 14:38:13'),
(40, 'Kitokia klasė', 2017, 'Trisdešimt metų pradirbęs Šv. Osvaldo pagrindinėje mokykloje Šiaurės Jorkšyre, lotynų kalbos mokytojas Rojus Streitlis matė visokių mokinių. Kiekvienoje klasėje būna savų klounų, savų maištininkų ar atstumtųjų ir, be abejo, „brangiųjų pramuštgalvių“, kurie, nors senasis mokytojas ir neturi numylėtinių, jo širdyje užima svarbią vietą. Bet kartkartėmis mokykloje atsiranda koks vienas kitas berniukas, nesugebantis pritapti prie jos standartų. Keliantis problemų. Berniukas, giliai savyje slepiantis juodus šešėlius.\r\n \r\nGresiant nemokumui ir akademinei nekompetencijai, į mokyklą atvyksta „nauja šluota“ su savo informacinėmis technologijomis, šauniais kostiumais ir net šeštos klasės mergaitėmis, užplūdusiomis dulkėtus senovinės berniukų mokyklos koridorius. Tuo tarpu Streitlis sardoniškomis pastangomis priešinasi šiam žygiui į ateitį, jo praeities šešėliai ima kilti į paviršių. Vienas berniukas, net praėjus dvidešimčiai metų, ima lankytis jo sapnuose. Berniukas, sugebantis daryti bloga.\r\n \r\nApie autorę\r\n \r\nJoanne Harris yra britų autorė, parašiusi keturiolika romanų, dvi kulinarines knygas ir daug apsakymų. Jos darbai pasižymi nepaprastu įvairiapusiškumu, apimančiu tokius žanrus, kaip magiškasis realizmas, trileriai, istorinis romanas, mitologija ir maginė fantastika. Ji taip pat parašė novelę apie „Daktarą Kas“ BBC televizijai, sukūrė scenarijus svečiams, pasirodantiems žaidimo „ZOMBIES, RUN!“ epizoduose; šiuo metu dalyvauja keliuose muzikinio teatro projektuose ir kuria originalią dramą televizijai.\r\n \r\n2000 m. buvo ekranizuotas J. Harris 1999 m. romanas „Šokoladas“. Filme vaidino Juliette Binoche ir Johny Deppas. Ji yra Kembridžo universiteto ir Šv. Kotrynos koledžo tarybos garbės narė. Iš karalienės rankų 2013 m. gavo Britanijos imperijos ordiną.\r\n \r\nBritų „Kas yra kas“ žinynas įvardija Harris laisvalaikio pomėgius kaip „vagiliavimą, dykinėjimą, čirpinimą gitara, kunigų gundymą ir tylią ardomąją veiklą“. Ji pernelyg daug laiko lindi „Twitter“ tinkluose; groja fleita ir bosine gitara.', '2017-02-12 14:39:03'),
(41, 'Tamsioje tamsioje girioje', 2017, 'Norai 26-eri, ji – sėkminga kriminalinių romanų rašytoja – netikėtai sulaukia kvietimo dalyvauti Klerės mergvakaryje įspūdingoje užmiesčio viloje. Draugės nesimatė dešimt metų ir Nora visai nenori prisiminti praeities. Bet Klerė buvo geriausia jos vaikystės draugė.\r\nPer mergvakarį Norai vis primenami skaudūs praeities įvykiai. Jos susierzinimą pakeičia siaubas, kai per spiritizmo seansą pasigirsta pranašystė apie nelaimę.\r\nPo keturiasdešimt aštuonių valandų Nora pabunda ligoninėje sutrenkta galva ir apimta didžiulio kaltės jausmo. Jai sunku prisiminti, kas įvyko praėjusį vakarą, tačiau ji turi tai padaryti, nes tragiški įvykiai vis nesibaigia.\r\n„Tamsioje tamsioje girioje“ yra pirmasis britų autorės Ruth Ware romanas. Autorė gyvena Londone, yra ištekėjusi, turi du vaikus. Ji yra dirbusi padavėja, anglų kalbos mokytoja, o šiuo metu – knygų leidėja. [Jos pačios mergvakaris buvo labai stilingas ir per jį niekas nebuvo nužudytas.]', '2017-02-12 14:40:10'),
(42, 'Originalas', 2017, 'Velnių muziejaus „Kipšo“ kavinėje sutiktas paslaptingas meno kuratorius-restauratorius Karlas T. Vaineris įsuka menų doktorantą ir jo sužadėtinę į painią istoriją, susijusią su koliažų meistro Dogu Bankovo palikimu. Trijulė keliauja į Bulgariją ieškoti dingusių Bankovo paveikslų. Pasirodo, bulgarų kilmės Dogu Bankovas tarpukario Paryžiuje sukūrė daugiau paveikslų nei manyta. Įsiplieskia nuožmi kova tarp Karlo T. Vainerio ir Bulgarijos romų barono Ivano G. Goranovo dėl Bankovo kolekcijos. Kuris iš jų yra teisėtas Bankovo paveikslų savininkas, o kuris apsimetėlis? Kurie Bankovo paveikslai – klastotės, o kurie originalai? Vynu atmiešti kipšo kerai, nuotykiai ir humoras lydi skaitytoją nuo pradžios iki pat netikėtos pabaigos. ', '2017-02-12 14:40:53'),
(43, 'Ponas Mersedesas', 2017, 'Viską pastatęs ant kortos, spaudžiamas laiko detektyvas su keistokais pagalbininkais iš paskutinių jėgų stengiasi sučiupti žudiką maniaką.\r\nParyčiui viename Amerikos mieste šimtai darbo ieškančių vyrų ir moterų laukia prasidedant darbo vietų mugės. Jie pavargę, sušalę, apimti nevilties. Staiga, praplėšęs rūko maršką, tarsi iš niekur išnyra vienišas vairuotojas, vogtu mersedesu įlekia į minią, pavažiuoja atbulas, rėžiasi dar sykį ir pražudo daug nekaltų žmonių. Aštuoni miršta, penkiolika sužeista. Žudikas pasprunka.\r\nPraėjus daugiau nei metams pensininkas detektyvas inspektorius Bilas Hodžesas, kuriam vis dar neduoda ramybės šis neišaiškintas nusikaltimas, nuobodžiai stumdamas dienas prie televizoriaus kartais pasvarsto, ar verta gyventi toliau. Tačiau gavęs beprotišką pono Mersedeso laišką, kuriame šis puikuojasi savo darbeliais, Hodžesas, norėdamas užkirsti kelią dar vienam pražūtingam išpuoliui, įsitraukia į tyrimą.\r\nRomane Ponas Mersedesas įtempto siužeto virtuozas S. Kingas pasakoja apie kovą tarp gėrio ir blogio, o autoriaus gebėjimas perprasti psichopato sąmonę sukrečia ir įsimena ilgam.', '2017-02-12 14:46:23'),
(44, 'Daktaras Miegas (elektroninė knyga) ', 2016, 'Stepheno Kingo „Švytėjimo“ tęsinys!\r\nDenis Toransas, tas pats aštuonmetis berniukas, iš garsiojo „Švytėjimo“, apdovanotas ypatinga dovana, dabar jau vidutinio amžiaus slaugos namų darbuotojas. Kelis dešimtmečius plaukęs pasroviui, jis beviltiškai stengiasi nusikratyti polinkio į depresiją ir alkoholizmą. Tik per laimingą atsitiktinumą jam pavyksta įsidarbinti vienuose slaugos namuose, kur savo gebėjimais jis gali palengvinti nepagydomų ligonių kelionę anapus.\r\nDenis nieko nežino apie grynuolius, gaują parazitų, besibastančią Amerikos greitkeliais. Iš pažiūros tai padorūs vidurinės klasės atstovai, neišlipantys iš savo kemperių. Jie klajoja manydamiesi grobio – ieškodami vaikų, turinčių „švytėjimo“ dovaną.\r\nDvylikametę Abrą Stoun su kaip reta skaisčiu švytėjimu nusižiūrėjo grynuolių vadeiva. Denis pasiryžęs gelbėti Abrą iš gaujos nagų, tačiau mergaitės švytėjimas pažadina ir jo paties demonus...\r\n„Daktaras Miegas“ nėra tik „Švytėjimo“ tęsinys. Stulbinantis Stephen King romanas prikausto dėmesį nuo pat pirmų eilučių, išlaikydamas psichologinę įtampą. Šioje knygoje išryškėja antgamtinis gebėjimas, kadaise sužadinęs susidomėjimą jaunuoju Deniu, ir atskleidžiama pribloškianti jo istorijos atomazga.\r\nStephenas Kingas — pasaulyje plačiai žinomų bestselerių ir „Švytėjimo“ autorius. Pagal jo paskutinius kūrinius, tarp kurių ir „Daktaras Miegas“, statomi serialai. Jo romanai New York Times knygų apžvalgoje vadinami vienais perkamiausių, taip pat pelnę Los Angeles Times trilerio premijas, Tarptautinės trilerių rašytojų asociacijos skiriamą Geriausios knygos premiją. S. Kingas Nacionalinio knygų fondo apdovanotas medaliu už nepaprastą indėlį į Amerikos literatūrą.', '2017-02-12 14:47:06'),
(45, 'Švytėjimas ', 2014, 'Kultinis S. Kingo romanas!\r\nDžekas Torensas buvo išmestas iš darbo universitete, kai nesusivaldęs smogė studentui.\r\nAtsiriboti nuo nemalonios praeities turėtų padėti gautas pasiūlymas, kuriuo susižavėtų bet kuris darbo ieškantis rašytojas. Jis kartu su šeima gyvens puikiame viešbutyje Kolorado kalnuose. Jo darbas – prižiūrėti ne sezono metu ištuštėjusį viešbutį. Visą laiką Džekas galės skirti kūrybai, o sūnelis su žmona mėgausis tyru oru ir ramybe.\r\nTačiau į vyriškio pasąmonę ima smelktis nepaaiškinama baimė, siaubingi košmarai, o prieš keletą metų viešbutyje įvykusi tragedija pastūmėja Džeką griebtis senų įpročių...\r\n„Švytėjime“ nestinga realaus gyvenimo atspindžių, įdėmaus žvilgsnio į menkai teištirtas žmogaus sąmonės bei pasąmonės sritis ir lakios fantazijos. Romanas nepaliks abejingo nė vieno skaitytojo: žiemos sezonui atvykęs į „Panoramos“ viešbutį kalnuose drauge su Torensų šeima – gavusiu ten prižiūrėtojo darbą Džeku, jo žmona Vende ir mažuoju Deniu, – norom nenorom imi jausti tai, ką jaučia užpustytame, sniego atkirstame nuo viso pasaulio prastos šlovės viešbutyje knygos herojai, imi baimintis to, kas slypi už kiekvienų daugybės kambarių durų, žaidimų aikštelėje, lifte, kas kelia siaubą jiems, pirmiausia švytėjimo dovaną turinčiam Deniui, imi ieškoti išeities iš klaidžių „Panoramos“ ir žmogaus sielos labirintų taip, kaip jos ieško Torensai ir Halorenas...\r\nPagal šį romaną buvo sukurta Stanley Kubricko „Švytėjimas“ ekranizacija.', '2017-02-12 14:48:10'),
(46, 'Tamsoje be žvaigždžių ', 2012, 'Tai pasakojimai apie kerštą ir žmones, susietus nusikalstamais ryšiais, apie tariamai neišvengiamus nusikaltimus, apie tai, kaip mes bandome teisinti kitus ir išsiteisinti patys. Iš paskutiniųjų ir, pridėjus ranką prie širdies, niekšingai.\r\nPirmoje juodoje kaip naktis kvapą gniaužiančioje Stepheno Kingo apysakoje Džeimsas, Nebraskos ūkininkas, nužudo žmoną už tai, kad ši pasiūlė parduoti ūkį ir persikelti į miestą. Tačiau žmonos nužudymas — tai tik pradžia, jo pasekmės lyg siaubinga, neišvengiama lavina užgriūva Džeimsą, jo sūnų ir kaimynus, triuškindamos žmonių likimus.\r\n„Dičkis vairuotojas“, antra apysaka, — serijinio žudiko istorija. Detektyvinių romanų rašytoja, vardu Tesė, grįždama namo iš susitikimo su skaitytojais, susiduria su nepažįstamuoju, kuris tik per plauką jos nenužudo. Tesė sukuria keršto planą ir susiduria su kitu nepažįstamuoju, tuo, kuris gyvena joje.\r\nApysakos „Sąžiningas sandėris“ pagrindinis veikėjas Deivis Striteris, sudaręs sandėrį su velniu, ne tik išsivaduoja nuo vėžio, bet ir užsitikrina pasiturimą gyvenimą. Vis dėlto velnio neįmanoma pergudrauti: pagal sutartį, kiekvienąsyk, kai Striteriui pasiseka, nesėkmė ištinka labiausiai nekenčiamą žmogų, šiuo atveju jo geriausią draugą — taip Deivis netenka sielos ne iš karto, bet pamažu, po truputį, dalimis.\r\nVyrui išvykus su reikalais, Darsė Anderson, daugiau nei dvidešimt metų nugyvenusi laimingoje santuokoje, eina į garažą pasiimti baterijų, užkliūva už kartoninės dėžės, kyšančios iš po darbastalio, ir netrukus sužino, kad jos vyro širdyje gyvena nepažįstamas žmogus. Siaubingas radinys, įspūdingai ir su didele įtampa aprašytas ketvirtoje apysakoje, padaro laimingai santuokai ir... sutuoktiniui galą.\r\n„Man regis, kiekviename žmoguje gyvena kitas žmogus, nepažįstamasis...“', '2017-02-12 14:49:01'),
(47, 'Maratonas', 1999, 'Šioje knygoje - du Stepheno Kingo romanai, dvi stulbinančios alegorijos, kurių veikėjai stengiasi pasipriešinti atšiauraus likimo įnoriams. Prieš asmenybę gniuždantį civilizacijos ritmą stoja Bartas iš ,,Kelio darbų" o ,,Maratono" lenktynės atspindi amžinos žmonių kovos už būtį absurdiškumą...', '2017-02-12 14:49:45'),
(48, 'Septynių Karalysčių riteris', 2016, '...Targarienai tebesėdi Geležiniame soste ir vis dar yra žmonių, kurie prisimena savo akimis matę paskutinį drakoną.\r\nJaunas, naivus ir nepaprastai drąsus klajojantis riteris, vardu seras Dankanas Aukštasis, jei ne patirtimi, tai bent stotu visa galva pranašesnis už savo varžovus. Drauge su juo keliauja smulkutis ginklanešys – berniukas, vardu Egas,  jo tikrasis vardas slepiamas nuo visų, kuriuos jiedu sutinka. Jų laukia kelionės ir nuotykiai, jų žygiai drieksis per visas Septynias Karalystes. Nors Vesterose netrūksta ir tikrų didvyrių, būtent šiems dviem keliautojams lemta susidurti su... nepaprastais sunkumais, galingais priešais, karališkomis intrigomis ir įžūliu sąmokslu.\r\n„Septynių Karalysčių riteris“ – George R. R. Martino knyga, pasakojanti  apie „Ledo ir ugnies giesmės“ priešistorę, o jos veiksmas vyksta šimtu metų anksčiau, nei „Sostų žaidime“ aprašomi įvykiai.\r\n \r\nDaug George R. R. Martino romanų yra tapę New York Times bestseleriais, įskaitant garsiosios „Ugnies ir ledo giesmės“ serijos knygas: Sostų žaidimą, Karalių kovą, Kardų audrą, Varnų puotą ir Šokį su drakonais.  ', '2017-02-12 14:55:06'),
(49, 'Šokis su drakonais 2. Po puotos Ciklo "Ledo ir ugnies giesmė“ 5 knyga ', 2015, 'Septynių karalysčių ateitis skęsta miglose.\r\nNežinia, kuo baigsis Didysis šokis...\r\nPenktąją „Ledo ir ugnies giesmės“ knygą – „Šokis su drakonais“ autorius padalijo į dvi dalis: „Sapnai ir dulkės“ ir „Po puotos“. Antrojoje dalyje – „Po puotos“ vėl susitinkame su tais pačiais veikėjais. Nešami likimo bangų, jie visi neišvengiamai įsitraukia į didįjį šokį.\r\nKaraliaus Uoste tikra intrigų meistrė karalienė regentė Sersėja Lanister pati įkrinta į kitiems kastą duobę, priverčiama atgailauti už savo nusikaltimus ir laukia teismo.\r\nJos pasmerktas brolis Tirionas Junkajuje prie Vergų įlankos parduodamas į vergiją. Jis norėjo tarnauti karalienei Daneiris ir remti princą Eigoną.\r\nPalikęs žmoną karalienę Selisą ir raudonąją žynę Melisandrą prie Sienos Jono Snou globai, Stanis Barateonas sutelkia kariuomenę ir žygiuoja į Vinterfelą susiremti su Boltonais.\r\nDaneiris Targarien valdomame Mirino mieste, kurį laiko apgulusi vergvaldžių junkajiečių armija, siaučia mirtis. Gelbėdama žudomus jos išlaisvintus vergus, karalienė prieš savo valią sutinka tekėti, tačiau ji netikėtai dingsta Dotrakių žolės jūroje...\r\nVienintelė Septynių Karalysčių viltis – princas Eigonas, teisėtas Geležinio sosto paveldėtojas, jau pradėjęs karo žygį į Vesterosą...\r\n„Amerikietiškuoju Tolkienu“ pramintas George’as R. R. Martinas sukūrė didingą sakmę apie laisvę, garbę, meilę, kerštą ir kovą. Jaudinanti, tikroviška ir kartu pranokstanti vaizduotę epopėja džiugina milijonus fantasy žanro gerbėjų, o ištikimiausi jos skaitytojai nekantriai laukia tolesnių kelionių po magišką fantastinį pasaulį.', '2017-02-12 14:55:51'),
(50, 'Karalių kova. Ciklo "Ledo ir ugnies" giesmė 2 knyga ', 2013, 'Keturių karalių kova – kas laimės geležinį sostą?\r\nAntrojoje „Ledo ir ugnies giesmės“ knygoje George’as R. R. Martinas pasakoja, kaip prasideda sunki ir kruvina kova dėl Geležinio sosto, į kurį sėda trylikametis Roberto sūnus Džofris. Bet ar jis tikrai teisėtas įpėdinis? Tuo netiki Roberto Barateono broliai Stanis ir Renlis. Pirmasis, išsižadėjęs dievų Septyneto, įtikinėjęs į Šviesos Valdovą ir naudodamasis raudonosios jo žynės Melisandros kerais, pradeda karą dėl sosto nužudydamas brolį Renlį, kurį remia Haigardeno lordai. Karaliaus Uostą ir Raudonąją pilį su sostu, pasitelkęs alchemikų gildijos piromantus, gina Kipšas Tirionas ir jo tėvas lordas Taivinas Lanisteris.\r\nTuo tarpu Vinterfelo įpėdinis Robas Starkas savo lordų paskelbiamas Šiaurės karalium. Jo tikslas – ne tik išlaikyti savo valdžioje šiaurę ir Riveraną, bet ir atkeršyti už tėvą, atgauti jo palaikus ir kalaviją ir susigrąžinti karalienės Sersėjos nelaisvėje laikomas seseris. Be to, jo valdoms grasina Geležies salų lordas Beilonas Greidžojus.\r\nO ir paskutinė Targarienų palikuonė Daneiris, Drakonų Motina, už jūrų nerimsta – augina stebuklingų drakonų trijulę ir telkia kariuomenę atsikovoti savo protėvių sostui.\r\n„Amerikietiškuoju Tolkienu“ pramintas Georg e’as R. R. Martinas sukūrė didingą keršto, kovos, meilės ir garbės istoriją. Jaudinanti, tikroviška ir kartu pranokstanti vaizduotę epopėja, pradžiugino milijonus fantasy žanro gerbėjų, o ištikimiausieji „Ledo ir ugnies giesmės“ skaitytojai ragina George’ą R. R. Martiną nesustoti ir toliau kurti magišką pasaulį.\r\nPagal šią ir kitas „Ledo ir ugnies giesmės“ knygas sukurtas ne mažiau populiarus serialas visame pasaulyje.', '2017-02-12 14:56:29'),
(51, 'Kardų audra. Ciklo "Ledo ir Ugnies giesmė" 3 dalis ', 2014, '„Kardų audra“ – tai trečioji George’o R. R. Martino istorinės fantastinės epopėjos „Ledo ir ugnies giesmė“ knyga.\r\nJoje tęsiama autoriaus vaizduotės sukurto pasaulio – Septynių Karalysčių – istorija. Dėl Geležinio sosto ir valdžios prasideda pražūtingas Penkių Karalių karas, kuriame nugalėtojų nėra, o praradimai tiesiog siaubingi. Vesterosas nusiaubtas ir nuniokotas, žmonės išžudyti, net galingasis Vinterfelas sudegintas. Kiekvieno knygos veikėjo likimas pribloškia netikėtumais.\r\nTik niekas negalvoja apie ateinančią žiemą, apie iš Šiaurės slenkančias Tamsos galias, kurios grasina praryti susiskaldžiusį kraštą ir jo gyventojus.\r\nIr ką čia beras užauginusi savo drakonus Daneiris Targarien?', '2017-02-12 14:57:09'),
(52, 'Sostų žaidimas. Ciklo "Ledo ir ugnies giesmė“ 1 knyga ', 2012, 'Sostų žaidime – pergalė arba mirtis!\r\n„Žiema artėja…“ – rūstūs, negandas pranašaujantys žodžiai, įrašyti Edardo Starko, Vinterfelo lordo ir Šiaurės sergėtojo šeimos herbe. Septynios karalystės, prieš tris šimtus metų krauju ir ugnimi suvienytos drakonų karaliaus Eigono Užkariautojo, išgyvena apgaulingos ramybės laikus. Drakonai mirė, o kartu su jais sunyko ir galinga ilgamečių karalių Targeirinų giminė. Dabar Geležinį sostą – Septynių karalysčių valdžios simbolį –užgrobęs karalius Robertas Barateonas. Ir jis atvyksta į Vinterfelą prašyti Edardo Starko, vaikystės draugo ir maišto kovų bendražygio, tapti karaliaus patarėju.\r\nTaip prasideda pirmoji „Ledo ir ugnies giesmės“ dalis „Sostų žaidimas“. Rašytojas George‘as R. R. Martinas sukūrė nepaprastą fantasy knygų seriją: jo vaizduotėje gimė iki mažiausių smulkmenų apgalvotas pasaulis. Su sava istorija, mitologija, religija, netgi gamtos dėsniais. Iš pirmo žvilgsnio Septynių karalysčių gyvenimas skaitytojams primins viduramžių feodalinę santvarką: pilyse šeimininkauja lordai, riteriai kaunasi turnyruose, kilmingos damos ištekinamos dar nesulaukusios pilnametystės. Magijos nuojauta sklando ore, tačiau įsitraukus į septynių didžiųjų šeimų intrigų verpetą galima ir pamiršti, kad kažkada šiame pasaulyje skraidė drakonai, kad Šiaurėje stūksanti ledo Siena gina Septynias karalystes nuo paslaptingųjų Kitų, o lordo Edardo Starko vaikai augina paskutiniuosius didvilkius. Garbė, šeima, meilė, kova dėl valdžios ir kerštas – svarbiausi Septynių karalysčių kilmingųjų gyvenimo varikliai.\r\nVos pasirodžiusi fantastinės epopėjos „Ledo ir ugnies giesmė“ pirmoji knyga „Sostų žaidimas“ tiek iš skaitytojų, tiek iš kritikų sulaukė puikių įvertinimų. Romanas laimėjo ne vieną premiją ir buvo nominuotas geriausio pasaulyje fantasy kūrinio apdovanojimui. \r\n„Amerikietiškuoju Tolkienu“ vadinamo George’o R. R. Martino knygomis susidomėjo ir televizijos gigantė HBO. Buvo sukurtas 2011 m. metų sensacija tapęs televizijos serialas „Sostų žaidimas“', '2017-02-12 14:59:59'),
(53, 'Šokis su drakonais 1. Sapnai ir dulkės ("Ledo ir ugnies giesmės" 5 knyga) ', 1970, 'Penktąją „Ledo ir ugnies giesmės“ knygą – „Šokis su drakonais“ autorius padalijo į dvi dalis. Pirmojoje iš jų – „Sapnai ir dulkės“ toliau pasakojami įvykiai, prasidėję po „Kardų audros“, tik dabar veiksmas nukeliamas į Šiaurę, į Juodąją pilį prie Sienos, ir kitapus Siaurosios jūros.\r\nTirionas Lanisteris, nužudęs savo tėvą ir neteisingai apkaltintas, pabėga iš Karaliaus Uosto, o už jo galvą sesuo, karalienė Sersėja, pažada lordo titulą.\r\nPavainikis Vinterfelo lordo Edardo Starko sūnus, Jonas Snou, prie Sienos išrenkamas Nakties sargybos lordu vadu. Bet jis turi priešų ir šiapus, ir anapus Sienos. Ar įstengs jis atsilaikyti prieš Tamsos galią, prieš grėsmę, kylančią iš Šiaurės?..\r\nAtsiimti Geležinį sostą ir užvaldyti Vesterosą nepraranda vilties Stanis Barateonas, bet jam teks kovoti ir su magiškomis Šiaurės galiomis, ir su išdaviko Dredforto lordo Ruzo Boltono užmačiomis.\r\nO rytuose jau užauginusi drakonus Daneiris Targarien iš paskutiniųjų stengiasi išlaikyti valdžią iš sapnų ir dulkių pastatytame mieste, kurį apgula įtūžusių vergvaldžių kariuomenės, – šie keršija karalienei, kam išlaisvino vergus miestuose prie Vergų įlankos. Ir kas bus, kai pas ją atskubės net keli pretendentai į jos ranką ir širdį?.. Bet gal iš tiesų jie tik geidžia jos drakonų ir trokšta dalytis su ja valdžia, kai ji atsikariaus savo tėvo sostą ir Vesterosą?..\r\n„Amerikietiškuoju Tolkienu“ pramintas George’as R. R. Martinas sukūrė didingą sakmę apie laisvę, garbę, meilę, kerštą ir kovą. Jaudinanti, tikroviška ir kartu pranokstanti vaizduotę epopėja džiugina milijonus fantasy žanro gerbėjų, o ištikimiausi jos skaitytojai nekantriai laukia tolesnių kelionių po magišką fantastinį pasaulį.', '2017-02-12 15:00:43'),
(54, 'Varnų puota. Ledo ir ugnies giesmė (4 knyga)', 2015, '„Varnų puota“ – tai ketvirtoji George’o R. R. Martino istorinės fantastinės epopėjos „Ledo ir ugnies giesmė“ knyga.\r\nJoje kuriama šiurpi karo nuniokoto krašto atmosfera, o veiksmas daugiausia sukasi apie Karaliaus Uostą. Ten karaliumi paskirtas devynmetis berniukas Tomenas, o visą valdžią užgrobusi jo motina – karalienė regentė Sersėja. Įtikėjusi kitados jai burtininkės išsakyta pranašyste, jog valdžią iš jos paverš kita karalienė, jauna ir graži, Sersėja nusprendžia pražudyti Tomeno žmoną, karalienę Mardžerę iš Tairelių giminės.\r\nIr pačiame Vesterose, kur maitlesiais varnais karas pavertė daugybę žmonių, rezgami nauji sąmokslai, sudaromos naujos pavojingos sąjungos ir visi keršija visiems, ypač negailestinga keistoji Akmenširdė – pilkoji moteris, vadovaujanti bastūnams. Tačiau šioje varnų puotoje svečių daug, tik nežinia, kam iš jų pasiseks išlikti gyvam.\r\nPenkių karalių karas beveik baigtas, kraštas merdi, ateina žiema, o karaliaus uoste pražūtingos karalienės intrigos...\r\n„Amerikietiškuoju Tolkienu“ kritikų pramintas George’as R. R. Martinas sukūrė didingą sakmę apie garbę, meilę, kerštą, valdžią ir kovą. Jaudinanti, tikroviška ir kartu vaizduotę pranokstanti epopėja džiugina milijonus fantasy žanro gerbėjų, o ištikimiausi jos skaitytojai nekantriai laukia tolesnių kelionių po magišką fantastinį pasaulį.\r\nPagal „Ledo ir ugnies giesmės“ knygas sukurtas pasaulyje toks pat populiarus televizijos serialas.\r\nTai kartą per keliasdešimt metų pasirodantis fantastinės literatūros kūrinys, ne tik teikiantis malonumą skaitytojams, bet ir pakeliantis į naują lygmenį fantastinės literatūros žanrą. \r\nMilwaukee Journal Sentinel', '2017-02-12 15:01:23'),
(55, 'Atodūsių įlanka. Antroji "Žvaigždžių sergėtojų" trilogijos knyga', 2014, 'Žaviosios Anikos namai — jūra, ten ji turės grįžti, kai sergėtojai suras Likimo žvaigždes. Žmonių pasaulyje Aniką viskas stebina ir džiugina, o jos pačios dvasios tyrumas, grožis, kūno tvirtumas ir gyvumas naujiems draugams gniaužia kvapą.  \r\n\r\nSojeris Kingas, galintis keliauti erdve ir laiku, sergėtojusperkelia į Kaprio salą, kur paslėpta Vandens žvaigždė. Kuo daugiau laiko Sojeris praleidžia su Anika, tuo labiau jaučia, kaip jį traukia meilės kupina Anikos siela. Bet jaunasis vyriškis supranta — jei įsileis į širdį Aniką, joks kompasas nebesugrąžins tvirto pagrindo po kojomis...\r\n\r\nTuo metu tamsos pasaulyje toliau piktus kėslus toliau rezga Nereza. Sergėtojams jau pavyko paslėpti vieną žvaigždę, bet progų pralieti kraują dar bus. Nereza susikūrė naują mirtinai pavojingą ginklą.', '2017-02-12 15:06:10'),
(56, 'Likimo žvaigždės. Pirmoji "Žvaigždžių sergėtojų" trilogijos knyga', 2016, 'The New York Times bestselerių autorės Noros Roberts „Žvaigždžių sergėtojų“ trilogija apie tris poras, kurios susitinka, kad pasitelkusios laikui nepavaldžią meilę, įmintų neatmenamų laikų paslaptį.\r\n\r\nDailininkė Saša Rigs gyvena atsiskyrusi, persekiojama košmariškų sapnų ir vizijų, kuriose regėtus vaizdus ji perkelia į savo įspūdingus paveikslus. Šios vizijos dailininkę nuvilioja į nuostabiąją Korfu salą Graikijoje. Ten ji sutinka penkis bendražygius — burtininką, mokslininkę, keliautoją, kovotoją ir romantikę. Visi čia susitelkė įvykdyti misiją — surasti tris Mėnulio deivių sukurtas žvaigždes. \r\n\r\nSaša — aiškiaregė, komandos šerdis, ji stengiasi išlaikyti bendražygių grupę vieningą, o Branas Kiljanas — neįtikėtinų magiškų galių turintis vyras, Sašai padeda — ją palaiko, skatina ir tiki ja. \r\n\r\nSaša ir Branas — du iš šešių komandos, kuri turi giliai jūroje surasti Ugnies žvaigždę. Tačiau tamsiosios jėgos nesnaudžia — Ugnies žvaigždę surasti pasiryžusios komandos narių pasitikėjimui, vienybei bei meilei tenka vis nauji išbandymai.', '2017-02-12 15:06:43'),
(57, 'Apsėdimas', 2016, 'Naomė Bouz prarado sielos ramybę tą naktį, kai nusekė paskui savo tėvą į mišką. Išlaisvinusi merginą, įkalintą rūsyje, dvylikametė atskleidė siaubingą savo tėvo nusikaltimų mastą ir iškėlė į viešumą jo šlykščius darbelius. Nepaisant visų bandymų būti laimingai, Naomė niekaip negali atsikratyti Tomo Deivido Bouzo nuodėmių. \r\n\r\nTapusi sėkminga fotografe Naomė už tūkstančių mylių nuo savo gimtųjų vietų susiranda širdžiai mielą kampelį ir įsigyja didžiulį seną namą. Mergina trokšta mėgautis vienuma, tačiau draugiški Sanrais Kòvo gyventojai verčia ją atsiverti — ypač atkaklusis Ksanderis Kitonas. \r\n\r\nNaomė jaučia, kad jos sielos šarvai trūkinėja, ir supranta, jog ryšys, kurį jai siūlo naujasis gyvenimas, yra tai, ko visada paslapčia troško. Tačiau tėvo nuodėmės gali tapti apsėdimu, o kaip jau ne kartą įsitikino, jos praeitis seka įkandin.\r\n\r\nAtsiliepimai\r\n\r\nŠioje puikiai suregztoje istorijoje, Nora Roberts išlaiko savo aukštus standartus, dar kartą apstulbindama skaitytojus savo rafinuotu įtampos ir seksualios romantikos deriniu.\r\n*Booklist\r\n\r\nN. Roberts turi neprilygstamą gebėjimą tapyti vaizdą žodžiais. Skaitytojams lengva įsivaizduoti meniškas Naomės fotografijas ir jos seną palaikį namą su nuostabiu vaizdu pro langą. Karšti jausmai, patrauklūs charakteriai ir viliojanti nežinomybė — tikras pasigardžiavimas skaitytojams.\r\n*Publishers Weekly\r\n\r\nItin patrauklūs veikėjų charakteriai ir puikiai subalansuotas įtampos bei romantikos derinys. O reti trumpi žvilgtelėjimai į žudiko psichiką suteikia pasakojimui papildomų šiurpuliukų, kurie neleidžia padėti knygos į šalį.\r\n*Library Journal', '2017-02-12 15:07:12'),
(58, 'Nuo meilės nepabėgsi', 2016, 'Kai pareiga grumiasi su norais, o atsakomybė – su aistra.\r\n\r\nKelias neįkainojamas savaites Kamila de Kordina bus paprasta moteris, Kamila Makgi, ir pailsės nuo karališkų pareigų. Ji sukurpė puikų pabėgimo planą, o šio plano dalis – darbas su Delu Keinu, patraukliu, bet nepakenčiamai bjauriu archeologu.\r\nNors Kamilą erzina šiurkštus Delo elgesys ir nesibaigiančios priekabės, nejučia ji ima žavėtis juo. Širdyje užgimsta slapti troškimai, bet apie juos ji nė už ką neprasitars!\r\nTegul Delas ir toliau mano, kad vienintelis jos talentas – karališkas užsispyrimas.', '2017-02-12 15:07:40'),
(59, 'Suviliotas jos žavesio', 2016, 'Kai pareiga grumiasi su norais, o atsakomybė – su aistra.\r\n\r\nKarališkosios Kordinos šeimos narys Benetas – tikras širdžių ėdikas, todėl itin mėgstamas žiniasklaidos. Užkariauti jį sudominusią moterį šiam palaidūnui tėra smagus iššūkis. Jis dar nesutiko nė vienos, kuri atsispirtų jo žavesiui.\r\n\r\nNenuostabu, kad susipažinęs su santūria gražuole ledi Hana Rotčaild, Benetas praranda ramybę – ši moteris nekreipia į jį dėmesio! Atrodo, teks paplušėti, kad pramuštų jos nepajudinamus abejingumo šarvus.\r\n\r\nMeilė Benetui visada tebuvo žaidimas. Tačiau ši paslaptinga, neprieinama moteris priverčia jį suprasti, jog šįkart prizas – jo paties širdis.', '2017-02-12 15:08:08'),
(60, 'Lemtingas pasirodymas', 2016, 'Keturlogijos „Karališkoji Kordinos šeima“ antroji knyga\r\nKai pareiga grumiasi su norais, o atsakomybė – su aistra.\r\n\r\nPrieš septynerius metus, žvelgdama į Kordinos sosto paveldėtoją Aleksandrą, jaunutė Eva Hamilton matė pasakų princą. Dabar ji negali atsistebėti savo naivumu – juk Aleksas šaltas ir arogantiškas pasipūtėlis. Paaugliškos svajonės liko praeityje.\r\nKviesdamas Evą ir jos teatro trupę į Kordiną, Aleksandras nesitikėjo, kad ankstesnis jo susižavėjimas ne tik nedingo, bet ir sustiprėjo. Eva tapo žavinga nepriklausoma moterimi, jos jausmingumas verčia širdį plakti smarkiau.\r\nNetrukus Aleksandro pasaulį sudrebina grasinimai jo šeimai. Tačiau jis nebegali užgniaužti ilgai neigtų troškimų.', '2017-02-12 15:08:36'),
(61, 'Vyras, kurio ji nepamirš', 2016, 'Gabriela de Kordina paspruko nuo pagrobėjų. Deja, džiaugsmą netrukus aptemdo žinia, kad ji nieko neprisimena. Net jos artimųjų veidai jai svetimi.\r\nPagrobėjai vis dar laisvėje – būtina kuo skubiau pasirūpinti karališkosios šeimos numylėtinės apsauga. Užsispyręs kietakaktis amerikietis Rivas Makgis nepriekaištingai tinka šiam darbui. Jis tiki, jog merginos atmintis greitai grįš ir jam nebereikės tramdyti savo jausmų. O Gabriela netrukus supranta, kad Rivo dėmesys ir švelnus žvilgsnis pažadino šį tą daugiau nei prisiminimus.', '2017-02-12 15:11:48'),
(62, 'Dėkingi už klaidą. Stanislaskiai. Gimę mylėti. 2 knyga ', 2014, 'Antroji serijos Stanislaskiai • Gimę mylėti knyga\r\nSTANISLASKIAI • GIMĘ MYLĖTI – gyvenimo aistros kupina Noros Roberts knygų serija. Jausminguosius Stanislaskius vienija tikėjimas, kad meilė ir šeima yra svarbiausia.\r\nVisoms, kurias sužavėjo Makgregorų dinastija!\r\nSidnės Heivard, turtingos ir privilegijuotos šeimos paveldėtojos, niekas nemokė vadovauti verslui. Mirus seneliui jai tenka prisiimti didžiulę atsakomybę. Dabar vienintelis jos tikslas – išsaugoti šeimos palikimą.\r\nSidnė jau seniai atsižadėjo meilės. Deja, netikėtai į jos gyvenimą įsiveržęs Michailas Stanislaskis viską sujaukia. Įkyrus šiurkštaus vyro dėmesys Sidnę tik erzina. Tačiau stiprios jo rankos verčia abejoti savo apsisprendimu...', '2017-02-12 15:13:49'),
(63, 'Greitaeigis Laiko liftas', 2012, 'Tai netikėtų, originalių poetinių formų knyga – žodžiai, skiemenys, svetimvardžiai, tradicinė ir netradicinė eilėdara, poetinė proza, visa ši įvairovė pasitelkiama mintims ir išgyvenimams reikšti. Poetė prisiliečia prie daugelio dabarties socialinių aktualijų, jos reagavimai aštrūs ir raiškūs.', '2017-02-12 15:16:05');
INSERT INTO `books` (`id`, `title`, `year`, `description`, `date_created`) VALUES
(64, 'Žemė buvo šviesi', 2016, 'Poezijos rinktinė. „Lietuvių literatūros lobynas XX a.“ \r\nNacionalinės premijos laureato Jono Strielkūno (1939-2011) geriausių eilėraščių rinktinė paremta dvitomiu „Lyrika“, taip pat papildyta vėlyvaisiais poeto eilėraščiais, spausdintais periodikoje. Rinktinės sudarytojas Antanas Šimkus ryškino tradicijos, istorijos, žemės motyvus.', '2017-02-12 15:16:51'),
(65, 'Esu aptrupėjusios sienos', 2016, ' „Esu aptrupėjusios sienos“ – ketvirtasis Aušros Kaziliūnaitės eilėraščių rinkinys.\r\n„Ši knyga apie mano „aš“, apie sienas ir pastangas iš jų ištrūkti. Sienos yra ribos. Mes mąstome, jaučiame ar numanome savo ribas, kambario ribas, šalių ribas, pasaulio ribas, daiktų ribas, skirtingų kategorijų ribas, poezijos ribas, knygos ribas. Ribos ar net pats jų numanomo ar realaus egzistavimo faktas mus kuria, saugo, gina, atskiria vienus nuo kitų, įkalina. Galime bandyti jas apeiti ar sugriauti, bet po šio bandymo galiausiai lieka aptrupėjusios sienos. Mąstymas visada turi ribas, dar daugiau – jis yra pagrįstas ir save pagrindžia ribomis, kategorijomis. Kartais vaikštome po šiuos dvasios kambarius, o kartais beviltiškai trankomės į jų sienas, kurios ir esame mes patys.“   \r\nAutorė', '2017-02-12 15:21:13'),
(66, '365 Priežastys mylėti', 2016, 'Antroji Mantvydo Leknicko knyga „365 priežastys mylėti“ – skirta tiek tikintiems meile, tiek abejojantiems, o gal niekada to nepatyrusiems. Prasidėjęs, kaip internetinis projektas, „365 priežastys mylėti“ virto knyga, kuri alsuoja gyvybe, jausmais ir energija. \r\nŠi knyga – naujas ir išskirtinis formatas Lietuvos literatūros istorijoje. Rašytojas į pagalbą pasitelkė skaitytojus, juos pakviesdamas siųsti fotografijas, kurios tapo svarbia kūrinio dalimi.', '2017-02-12 15:22:50'),
(67, 'Neliečiamas asmuo. Kareivio Ivano Čonkino gyvenimas ir nepaprasti nuotykiai', 2015, 'Vladimiras Voinovičius (g. 1932 m.) – iškilus rusų rašytojas disidentas. Trilogija „Kareivio Ivano Čonkino gyvenimas ir nepaprasti nuotykiai“ (satyrinis romanas-anekdotas) – žinomiausias jo kūrinys, šiek tiek primenantis J. Hašeko romaną apie šaunųjį kareivį Šveiką. Už kūrybą ir ypač už šią knygą rašytojas sąstingio laikais buvo smarkiai kritikuojamas, pašalintas iš SSRS rašytojų sąjungos ir galiausiai priverstas išvykti iš SSRS. Dėl antisovietinio turinio kūrinys pirmą kartą publikuotas švedų kalba 1970 m., vėliau vokiečių, tik paskui – rusų kalba.\r\n„Brangusis skaitytojau! Jūs jau tikriausiai atkreipėt dėmesį, kad paskutinius metus tarnaujantis karys Ivanas Čonkinas buvo mažo ūgio, kreivų kojų ir dar raudonomis ausimis. Ir kokia nevykusi figūra! – pasipiktinsit jūs. – Kur čia pavyzdys jaunajai kartai? Ir kur autorius matė tokį „herojų“? O aš, autorius, priremtas prie sienos ir sučiuptas, kaip sakoma, už rankos, turėsiu pripažinti, kad niekur aš jo nesu matęs, prasimaniau visiškai ne dėl pavyzdžio, o šiaip – iš neturėjimo ką veikti. Tarkim, tai tiesa, – sakysit jūs nepatikliai, – tačiau, kam gi prasimanyti? Nejaugi autorius negalėjo gyvenime parinkti tikrą karį – karžygį, aukštą, gražaus stoto, drausmingą, mokomojo-kovinio ir politinio pasirengimo pirmūną? Aišku, galėjo, tik kad nesuspėjo. Visus pirmūnus išgraibstė, o man, va, liko tik Čonkinas“.', '2017-02-12 15:24:25'),
(68, 'Vilko valanda. Sidabras. Nuotykiai Arizonoje', 2015, 'Rašytojas Andrius Tapinas ir iliustratorius Tomas Mitkus pristato:\r\nGeriausios 2013 metų knygos „Vilko valanda“ herojų nuotykiai nesibaigia!\r\nAr jums smalsu, ką prieš atvykdamas į laisvąjį Vilnių Laukiniuose Vakaruose veikė legatas Antanas Sidabras? Kodėl Bisbio miesto šerifas norėjo jį pakarti, o nuožmių banditų gauja žadėjo keršyti? Ir kokie naktiniai košmarai jo laukė Skeletų kanjone?\r\nVisa tai naujajame lietuviškame nuotykių komikse\r\n„Vilko valanda: Sidabras“\r\nDu lietuviai nuotykių ieškotojai surezga planą, kaip praturtėti Laukiniuose Vakaruose. Deja, ir geriausi planai kartais neišdega. Dabar juos persekioja linčo teismo ištroškusi minia ir nuožmūs banditai, o Skeletų kanjone laukia kraupi senovinė paslaptis. \r\n \r\n \r\nApie autorių Andrius Tapinas:\r\n\r\nAndrius Tapinas - Lietuvos žurnalistas, laidų vedėjas, rašytojas. Dažnai matomas ir girdimas televizijos projektuose. Skaitytojams puikiai žinomi jo sagos kūriniai „Vilko valanda“ ir „Maro diena“. 2013 m. pristatė savo pirmąją knygą „Vilko valanda“, kūrinys susilaukė milžiniško atgarsio, tapo nacionaliniu bestseleriu. Negana to fantastinis romanas pripažintas pirmąja  steampunk žanro knyga Lietuvoje. Dabar Tapinas yra vienas žinomiausių rašytojų Lietuvoje. Rašytojas jaučia simpatiją literatūros legendoms J. R. R. Tolkien ir George R. R. Martin. Andrius netgi išvertė Tolkieno Žiedų valdovą į lietuvių kalbą.\r\n„Knygos buvo ir yra didžiausia mano aistra“ – Andrius Tapinas', '2017-02-12 15:25:17'),
(69, 'Linksma knyga apie suomius ir Suomiją', 2013, 'Knygoje ne tik peržvelgiama Suomijos istorija, pristatomi iškiliausi jos žmonės, perskaitę šią knygą taip pat sužinosite, kodėl suomei negalima bučiuoti rankos; kodėl suomis kalbėdamas kasosi; kodėl jie nori nusišlapinti prie Rusijos sienos; ką daro, kai užtinka žmoną su kaimynu; kad vedęs suomis per metus išgeria 13 litrų grynojo alkoholio, o nevedęs – 22 litrus, ir t. t.', '2017-02-12 15:29:44'),
(70, 'Trys vienaveiksmės pjesės', 2011, '„Gyvuoju kino klasiku“ visuotinai pripažįstamas amerikiečių kino aktorius, režisierius, džiazo muzikantas, komikas Woody Allenas (g. 1935) per metus sukuria kelis filmus ir sugroja klarnetu keliuose džiazo festivaliuose, tačiau tikroji jo aistra yra rašymas. „Jeigu staiga nebegalėčiau kurti kino, – teigia jis, – nusiminčiau ne taip jau ir baisiai. O štai be rašomojo stalo neištverčiau nė savaitės“. Penki smulkiosios prozos ir devyni pjesių rinkiniai – štai šios W. Alleno aistros rezultatas.\r\n„Trys vienaveiksmės pjesės“ (Three One-Act Plays, 2003) – tai iki ašarų juokingos meilės tragedijos, gausiai prisodrintos kurioziškų situacijų ir intelektualaus juodojo humoro. Autorius, linksmai brėždamas klasikinius meilės trikampius, rombus ir daugiakampius, įsuka beprotišką sekso, išdavysčių ir nepatenkintų geidulių karuselę.\r\nVienas vyras trokšta pabėgti nuo šeimos, kitas – į ją sugrįžti, viena žmona įsimyli sesers vyrą, kita negali apsispręsti – išeiti su draugės vyru ar vyro draugu. Aistrų katilas, rodos, tuoj sprogs – moterys ims nuodytis, o vyrai šaudyti, – bet W. Allenas iškart nuleidžia garą nepakartojamais savo pokštais ir filosofiniais juokeliais...\r\nW. Alleno pjeses tiesiog būtina perskaityti tiems, kurie pernelyg rimtai žiūri į gyvenimiškas savo problemas. Ironišku žvilgsniu žvelgdamas į banalią kasdienybę, autorius tarsi patyręs terapeutas pataria pernelyg nesusireikšminti ir neapsunkinti sau gyvenimo visokiais niekais: meilė juk tokia juokinga, o neištikimybė – tiesiog mirk iš juoko! \r\nVisos trys rinkinio pjesės – „Riversaido kelias“, „Senasis Seibrukas“ ir „Centrinio parko vakarų gatvė“ – pavadintos pagal Niujorko vietoves, kuriose vyksta pagrindinis veiksmas, tačiau geografinis kontekstas čia nėra svarbus. Žmogiškųjų santykių universalijos visur panašios, todėl pjesėse aprašomi įvykiai galėtų vykti bet kuriame pasaulio mieste.\r\nW. Allenas savo pjeses rekomenduoja „intelektualiems cinikams, kandiems šmaikštuoliams ir savo gyvenimu susirūpinusiems psichoanalitikų pacientams“. Intelektualūs cinikai, autoriaus nuomone, skaitydami patirs intelektinį orgazmą, kandūs šmaikštuoliai išmoks keletą naujų sąmojingų frazių, o psichoanalitikų pacientai galiausiai apsispręs, ką daryti su savo gyvenimu.', '2017-02-12 15:30:46'),
(71, 'Ateinu su šaukštu', 2011, 'Ateinu su šaukštu“ – nauja Juozo Erlicko knyga, kurioje iš laiko jau išbandytų ir dar laukiančių to išbandymo tekstų pinamas Lietuvos istorijos metraštis. Solidų veikalą sudaro net 11 knygų, laiko ribos – nuo 30 000 000 m. pr. Kr. („Prieš milijonus metų iš jūros išlipo kažkokie gyviai ir ilgai vystėsi, kol tapo lietuviais...“) iki 30 000 000 m. po Kr. („Ir aš regiu, kaip visi lietuviai tampa laimingi...“). Autorius fiksuoja ne tik realius istorinius įvykius, bet ir lietuvio dvasios perversmus ir nelyg biblinis pranašas skelbia amžinąsias tiesas.    Naktį dūlinu tamsia gatve...     Staiga prišoka toks žmogelis ir rodo man peilį...    Parodau jam šaukštą ir nueinu.  Juozas Erlickas', '2017-02-12 15:31:28');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE IF NOT EXISTS `genres` (
  `id` int(11) NOT NULL,
  `genre_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `genre_title`) VALUES
(2, 'Drama'),
(3, 'Tikros istorijos'),
(4, 'Meilės romanai'),
(5, 'Detektyvai'),
(6, 'Fantastika'),
(7, 'Klasika'),
(8, 'Biografijos'),
(9, 'Poezija'),
(10, 'Publicistika'),
(11, 'Komiksai'),
(12, 'Edukacinė literatūra'),
(13, 'Knygos vaikams'),
(16, 'Siaubo');

-- --------------------------------------------------------

--
-- Table structure for table `genres_books`
--

CREATE TABLE IF NOT EXISTS `genres_books` (
  `id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `genres_books`
--

INSERT INTO `genres_books` (`id`, `genre_id`, `book_id`) VALUES
(1, 12, 15),
(2, 8, 15),
(3, 5, 15),
(4, 11, 16),
(5, 9, 16),
(6, 6, 16),
(7, 12, 17),
(8, 7, 17),
(9, 4, 17),
(10, 2, 17),
(11, 13, 18),
(12, 10, 18),
(13, 9, 18),
(14, 8, 18),
(15, 6, 18),
(16, 4, 18),
(17, 13, 19),
(18, 8, 20),
(19, 10, 21),
(20, 12, 22),
(21, 13, 23),
(22, 12, 23),
(23, 12, 24),
(24, 12, 25),
(25, 13, 26),
(26, 12, 26),
(27, 4, 27),
(28, 2, 28),
(29, 2, 29),
(30, 2, 30),
(31, 2, 31),
(32, 2, 32),
(33, 4, 33),
(34, 4, 34),
(35, 4, 35),
(36, 4, 36),
(37, 4, 37),
(38, 4, 38),
(39, 5, 39),
(40, 5, 40),
(41, 5, 41),
(42, 5, 42),
(43, 5, 43),
(44, 5, 44),
(45, 16, 45),
(46, 6, 45),
(47, 5, 45),
(48, 16, 46),
(49, 6, 46),
(50, 5, 46),
(51, 4, 46),
(52, 16, 47),
(53, 6, 47),
(54, 5, 47),
(55, 6, 48),
(56, 6, 49),
(57, 6, 50),
(58, 6, 51),
(59, 4, 51),
(60, 6, 52),
(61, 16, 53),
(62, 6, 53),
(63, 16, 54),
(64, 6, 54),
(65, 6, 55),
(66, 6, 56),
(67, 6, 57),
(68, 6, 58),
(69, 6, 59),
(70, 6, 60),
(71, 6, 61),
(72, 6, 62),
(73, 5, 62),
(74, 4, 62),
(75, 2, 62),
(76, 9, 63),
(77, 9, 64),
(78, 9, 65),
(79, 9, 66),
(80, 11, 67),
(81, 11, 68),
(82, 11, 69),
(83, 11, 70),
(84, 11, 71);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authors_books`
--
ALTER TABLE `authors_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres_books`
--
ALTER TABLE `genres_books`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `authors_books`
--
ALTER TABLE `authors_books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `genres_books`
--
ALTER TABLE `genres_books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=85;
