# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Suivi.destroy_all
Survey.destroy_all
Comment.destroy_all
Engagment.destroy_all
Promess.destroy_all
Candidat.destroy_all
Commune.destroy_all
Region.destroy_all
# Daty.destroy_all

reg = ["Diana", "Sava", "Itasy", "Analamanga", "Vakinankaratra", "Bongolava", "Sofia", "Boeny",
		"Betsiboka", "Melaky", "Alaotra-Mangoro", "Atsinanana", "Analanjirofo", "Amoron'i Mania",
		"Haute Matsiatra", "Vatovavy-Fitovinany", "Atsimo-Atsinanana", "Ihorombe", "Menabe",
		"Atsimo-Andrefana", "Androy", "Anosy"]

diana = ["AMBALAHONKO", "AMBALIHA", "AMBANJA", "AMBODIMANGA RAMENA", "AMBOHIMARINA", "AMBOHIMENA", "AMBOHITRANDRIANA", "ANKATAFA", "ANKINGAMELOKA", "ANOROTSANGANA", "ANTAFIAMBOTRY", "ANTRANOKARANY", "ANTSAHABE CENTRE", "ANTSAKOAMANONDRO", "ANTSATSAKA", "ANTSIRABE", "BEMANEVIKA HAUT-SAMBIRANO", "BEMANEVIKA OUEST", "BENAVONY", "DJANGOA", "MAEVATANANA", "MAHERIVARATRA", "MAROTOLANA", "MAROVATO", "AMBAKIRANO", "AMBARAKARAKA", "AMBATOBEN ' ANJAVY", "AMBILOBE", "AMBODIBONARA", "AMPONDRALAVA", "ANABORANO IFASY", "ANJIABE HAUT", "ANTANABE", "ANTSARAVIBE", "ANTSOHIMBONDRONA", "BERAMANJA", "BETSIAKA", "MANAMBATO", "MANTALY", "SIRAMA", "TANAMBAO MARIVORAHONA", "ANTSIRANANA", "AMBOLOBOZOBE", "AMBONDRONA", "ANDRAFIABE", "ANDRANOFANJAVA", "ANDRANOVONDRONINA", "ANIVORANO NORD", "ANKARONGANA", "ANKETRAKABE", "ANTANAMITARANA", "ANTSAHAMPANO", "ANTSAKOABE", "ANTSALAKA", "ANTSOHA", "BOBAKILANDY", "BOBASAKOA", "JOFFRE-VILLE", "MAHALINA", "MAHAVANONA", "MANGAOKA", "MOSOROLAVA", "RAMENA", "SADJOAVATO", "SAKARAMY", "NOSY-BE (AMBATOZAVAVY)", "NOSY-BE (AMPANGORIANA)", "NOSY-BE (BEMANONDROBE)", "NOSY-BE (DZAMANDZAR)", "NOSY-BE (HELL-VILLE)"]

sava = ["AMBALAMANASY II", "AMBALAVELONA", "AMBODIANGEZOKA", "AMBODIDIVAINA", "AMBODIMANGA I", "ANDAPA", "ANDASIBE KOBAHINA", "ANDRAKATA", "ANDRANOMENA", "ANJIALAVABE", "ANKIAKABE NORD", "ANOVIARA", "ANTSAHAMENA", "BEALAMPONA", "BELAOKA LOKOHO", "BELAOKA MAROVATO", "BETSAKOTSAKO ANDRANOTSARA", "DOANY", "MAROVATO", "MATSOHELY", "TANANDAVA", "AMBALABE", "AMBINANIFAHO", "AMBOHITRALANANA", "AMPAHANA", "AMPANAVOANA", "AMPOHIBE", "ANDAMPY", "ANTALAHA", "ANTANANANAMBO", "ANTOMBANA", "ANTSAHANORO", "ANTSAMBALAHY", "LANJARIVO", "MANAKAMBAHINY ANKAVIA", "MAROFINARITRA", "SAHANTAHA", "SARAHANDRANO", "VINANIVAO", "AMBATOAFO", "AMBOANGIBE", "AMBODIAMPANA", "AMBODIVOARA", "AMBOHIMALAZA", "AMBOHIMITSINJO", "ANALAMAHO", "ANDAPABE", "ANDRAHANJO", "ANDRATAMARINA", "ANDREMBONA", "ANJANGOVERATRA", "ANJIALAVA", "ANJINJAOMBY", "ANTINDRA", "ANTSAHAVARIMBE", "ANTSAMBAHARO", "BEMANEVIKA", "BEVONOTRA", "FARAHALANA", "MAHASOA", "MAROAMBIHY", "MAROGAONA", "MAROJALA", "MORAFENO", "NOSIARINA", "SAMBAVA", "TANAMBAON'I DAOUD", "AMBALASATRANA", "AMBINANIN ' ANDRAVORY", "AMBODISAMBALAHY", "AMBORIALA", "AMPANEFENA", "AMPISIKINANA", "AMPONDRA", "ANDRAFAINKONA", "ANDRAVORY", "ANTSIRABE NORD", "BELAMBO", "BOBAKINDRO", "DARAINA", "FANAMBANA", "MAROMOKOTRA LOKY", "MILANOA", "NOSIBE", "TSARABARIA", "VOHEMAR"]

itasy = ["ALAKAMISIKELY", "AMBATOMANGA", "AMBATOMIRAHAVAVY", "AMBOANANA", "AMBOHIMANDRY", "AMBOHIMASINA", "AMBOHIPANDRANO", "AMBOHITRAMBO", "AMPAHIMANGA", "ANDRANOMIELY", "ANTAMBOLO", "ANTENIMBE", "ARIVONIMAMO", "ARIVONIMAMO II", "IMERINTSIATOSIKA", "MAHATSINJO EST", "MANALALONDO", "MAROFANGADY", "MIANDRANDRA", "MIANTSOARIVO", "MORAFENO", "MORARANO", "TALATA TSIMADILO", "ALATSINAINIKELY", "AMBATOMANJAKA", "ANALAVORY", "ANDOLOFOTSY", "ANOSIBE-IFANJA", "ANTOBY EST", "MANAZARY", "MANDIAVATO", "MIARINARIVO", "MIARINARIVO II", "SAROBARATRA", "SOAMAHAMANINA", "SOAVIMBAZAHA", "ZOMA BEHALOKA", "AMBATOASANA CENTRE", "AMBEROMANGA", "AMBOHIDANERANA", "AMPARAKY", "AMPARIBOHITRA", "AMPARY", "AMPEFY", "ANKARANANA", "ANKISABE", "ANTANETIBE", "DONDONA", "MAHAVELONA", "MANANASY", "MASINDRAY", "SOAVINANDRIANA", "TAMPONALA"]

analamanga = ["AMBATO","AMBATOLAMPY","AMBOHIDRATRIMO","AMBOHIMANJAKA","AMBOHIMPIHAONANA","AMBOHITRIMANJAKA","AMPANGABE","AMPANOTOKANA","ANJANADORIA","ANOSIALA","ANTANETIBE MAHAZAZA","ANTEHIROKA","ANTSAHAFILO","AVARATSENA","FIADANANA","IARINARIVO","IVATO","MAHABO","MAHEREZA","MAHITSY","MANANJARA","MANJAKAVARADRANO","MERIMANDROSO","TALATAMATY","ALAROBIA VATOSOLA","ALATSINAINY BAKARO","AMBOHIMIADANA","ANDOHARIANA","ANDRAMASINA","ANJOMA FALIARIVO","ANOSIBE TRIMOLOHARANO","ANTOTOHAZO","FITSINJOVANA BAKARO","MANDROSOA","MORARANO SOAFIRAISANA","SABOTSY AMBOHITROMBY","SABOTSY MANJAKAVAHOAKA","TANKAFATRA","ALAKAMISY","AMBATOMANOINA","AMBOASARY","AMBOHIBARY","AMBOHIMANARINA MAROVAZAHA","AMBOHIMIRARY","AMBONGAMARINA","AMPARATANJONA","ANALAROA","ANDRANOMISA","ANDROVAKELY","ANJOZOROBE","ANTANETIBE","BELANITRA","BERONONO","BETATAO","MANGAMILA","MAROTSIPOY","TSARASOATRA ANDANONA","AMBOHITROMBY","AMBOLOTARAKELY","ANDRANOMIELY SUD","ANKAZOBE","ANTAKAVANA","ANTOTOHAZO","FIADANANA","FIHAONANA","KIANGARA","MAHAVELONA","MANGASOAVINA","MARONDRY","MIANTSO","TALATA-ANGAVO","TSARAMASOANDRO","ALASORA","AMBOHIMALAZA MIRAY","AMBOHIMANAMBOLA","AMBOHIMANGA ROVA","AMBOHIMANGAKELY","AMBOHITRABIBY","ANJEVA GARA","ANKADIKELY ILAFY","ANKADINANDRIANA","ANOSY AVARATRA","FIAFERANA","MANANDRIANA","MASINDRAY","SABOTSY NAMEHANA","TALATA VOLONONDRY","VILIAHAZO","ANTANANARIVO","ALAKAMISY FENOARIVO","ALATSINAINY AMBAZAHA","AMBALAVAO","AMBATOFAHAVALO","AMBAVAHADITOKANA","AMBOHIDRAPETO","AMBOHIJANAKA","AMPAHITROSY","AMPANEFY","AMPITATAFIKA","ANDOHARANOFOTSY","ANDRANONAHOATRA","ANDROHIBE","ANKADIMANGA","ANKARAOBATO","ANOSIZATO ANDREFANA","ANTANETIKELY","BEMASOANDRO","BONGATSARA","FENOARIVO","FIOMBONANA","ITAOSY","SOALANDY","SOAVINA","TANJOMBATO","TSIAFAHY","ALAROBIA","AMBANITSENA","AMBATOLOANA","AMBATOMANGA","AMBATOMENA","AMBOHIBAO SUD","AMBOHIBARY","AMBOHITRANDRIAMANITRA","AMBOHITROLOMAHITSY","AMBOHITRONY","AMBOHITSEHENO","AMPANEVA","ANJEPY","ANJOMA BETOHO","ANKAZODANDY","ANTSAHALALINA","MANJAKANDRIANA","MANTASOA","MERIKANJAKA","MIADANANDRIANA","NANDIHIZANA CARION","RANOVAO","SADABE","SAMBAINA","SOAVINANDRIANA"]

ankaratra = ["AMBATOLAMPY", "AMBATONDRAKALAVAO", "AMBODIFARIHY", "AMBOHIMPIHAONANA", "ANDRANOVELONA", "ANDRAVOLA VOHIPENO", "ANDRIAMBILANY", "ANDRIANTSIVALANA", "ANTAKASINA", "ANTANAMALAZA", "ANTANIMASAKA", "ANTSAMPANDRANO", "BEHENJY", "BELAMBO FIRAISANA", "MANJAKATOMPO", "MORARANO", "SABOTSY NAMATOANA", "TSIAFAJAVONA ANKARATRA", "TSINJOARIVO", "AMBATOLAHY", "AMBATOMIADY", "AMBATOTSIPIHANA", "AMBODIRIANA", "AMBOHIMANDROSO", "AMBOHITOMPOINA", "AMPITATAFIKA", "ANDRANOFITO", "ANJAMANGA", "ANTANIFOTSY", "ANTSAHALAVA", "ANTSAMPANDRANO", "BELANITRA", "SOAMANANDRARINY", "ANTSIRABE", "ALAKAMISY", "ALATSINAINY IBITY", "AMBANO", "AMBATOMENA", "AMBOHIBARY", "AMBOHIDRANANDRIANA", "AMBOHIMIARIVO", "AMBOHITSIMANOVA", "ANDRANOMANELATRA", "ANTANAMBAO", "ANTANIMANDRY", "ANTSOATANY", "BELAZAO", "MANANDONA", "MANDROSOHASINA", "MANGARANO", "SAHANIVOTRY MANANDONA", "SOANINDRARINY", "TSARAHONENANA SAHANIVOTRY", "VINANINKARENA", "ALAKAMISY ANATIVATO", "ALAKAMISY MAROSOSONA", "ALAROBIA BEMAHA", "AMBATONIKOLAHY", "AMBOHIMANAMBOLA", "AMBOHIMASINA", "ANDRANOMAFANA", "ANDREMBESOA", "ANOSIARIVO MANAPA", "ANTOHOBE", "ANTSOSO", "BETAFO", "INANANTONANA", "MAHAIZA", "MANDRITSARA", "MANOHISOA", "SOAVINA", "TRITRIVA", "AMBOHIBORONA", "ANDRANOMIADY", "ANTSAMPANIMAHAZO", "FARATSIHO", "FARAVOHITRA", "MIANDRARIVO", "RAMAINANDRO", "VALABETOKANA", "VINANINONY SUD", "ANJOMA RAMARTINA", "ANKAZOMIRIOTRA", "ANTANAMBAO AMBARY", "BETSOHANA", "FIDIRANA", "MANDOTO", "MAROMANDRAY", "VASIANA", "VINANY"]

bongolava = ["AMBATOMAINTY SUD", "AMBOHITROMBY", "ANDRIAMPOTSY", "FENOARIVOBE", "FIRAVAHANA", "KIRANOMENA", "MAHAJEBY", "MANGATANY", "MORARANO MARITAMPONA", "TSINJOARIVO", "AMBALANIRANA", "AMBARARATABE", "AMBATOLAMPY", "ANKADINONDRY SAKAY", "ANKERANA NORD", "ANOSY", "ANTSAHALAVA", "BELOBAKA", "BEMAHATAZANA", "BEVATO", "FIADANANTSOA", "FIERENANA", "MAHASOLO", "MARITAMPONA", "MAROHARONA", "MIANDRARIVO", "SOANIERANA", "TSINJOARIVO-IMANGA", "TSIROANOMANDIDY FIHAONANA", "TSIROANOMANDIDY VILLE"]
		
sofia = ["AMBALIHA", "AMBARIJEBY SUD", "AMBOLOBOZO", "ANALALAVA", "ANDREVOREVO", "ANDRIBAVONTSINA", "ANGOAKA SUD", "ANKARAMY", "ANTONIBE", "BEFOTAKA NORD", "BEJOFO", "MAHADRODROKA", "MAROMANDIA", "MAROVANTAZANA", "MAROVATOLENA", "AMBALAFAMINTY", "AMBODIMADIRO", "AMBODIMANARY", "AMBODIMANDRESY", "AMPANDRIANKILANDY", "ANAHIDRANO", "ANDREBA", "ANJALAZALA", "ANJIAMANGIRANA", "ANKERIKA", "ANTSAHABE", "ANTSOHIHY", "MAROALA", "AMBALAROMBA", "AMBARARATA SOFIA", "AMBARARATABE NORD", "AMBATORIHA EST", "AMBATOSIA", "AMBODIADABO", "AMBODIAMPANA", "AMBODISIKIDY", "AMBOHIMISONDROTRA", "AMBOVONOMBY", "ANALILA", "ANJOZOROMADOSY", "ANKAZOTOKANA", "ANTANANIVO HAUT", "ANTSAMAKA", "ANTSIRADAVA", "BEALALANA", "BEANDRAREZONA", "MANGINDRANO", "MAROTOLANA", "AMBARARATA", "AMBODIMOTSO SUD", "AMBODIMOTSO-HAUT", "AMBOLIDIBE EST", "ANKARONGANA", "ANTSAKABARY", "ANTSAKANALABE", "BEFANDRIANA NORD", "BELALONA", "MAROAMALONA", "MATSONDAKANA", "MORAFENO", "TSARAHONENANA", "TSIAMALAO", "AMBODIHAZOAMBO", "AMBOHITOAKA", "AMPASIMATERA", "ANKIRIRIKY", "ANOVILAVA NORD", "BEKORATSAKA", "BETARAMAHAMAY", "KOMAJIA", "MALAKIALINA", "MAMPIKONY", "MAMPIKONY II", "AMBALAKIRAJY", "AMBARIKORANO", "AMBARIPAIKA", "AMBILOMBE", "AMBINANIFANGO", "AMBOABOA", "AMBODIADABO", "AMBODIAMONTANA KIANGA", "AMBOHISOA", "AMBORONDOLO", "AMPATAKAMARORENY", "ANDOHAJANGO", "ANDRATAMARINA", "ANJIABE", "ANKIABE  - SALOHY", "ANKIAKABE  - FONOKO", "ANTANAMBAON'AMBERINA", "ANTANANDAVA", "ANTSATRAMIDOLA", "ANTSIATSIAKA", "ANTSIRABE CENTRE", "ANTSOHA", "KALANDY", "MANAMPANEVA", "MANDRITSARA", "MAROTANDRANO", "PONT -  SOFIA", "TSARAJOMOKA", "TSARATANANA", "AMBANJABE", "AMBATOMILAHATRANO", "AMBODIMAHABIBO", "AMBODISAKOANA", "AMBODIVONGO", "AMPARIHY", "ANDRANOMENA I", "ANDRANOMEVA", "IHOBAKA", "LEANJA", "MAEVARANOHELY", "MAROVATO", "PORT BERGE II", "PORT-BERGE", "TSARAHASINA", "TSARATANANA I", "TSININGIA", "TSINJOMITONDRAKA"]

boeny = ["AMBATOBOENY", "AMBESISIKA", "AMBONDROMAMY", "ANDRANOFASIKA", "ANDRANOMAMY", "ANJIAJIA", "ANKIJABE", "ANKIRIHITRA", "MADIROVALO", "MANERINERINA", "SITAMPIKY", "TSARAMANDROSO", "MAHAJANGA", "AMBALABE BEFANJAVA", "AMBALAKIDA", "ANDRANOBOKA", "BEKOBAY CENTRE", "BELOBAKA", "BETSAKO", "BOANAMARY", "MAHAJAMBA USINE", "MARIARANO", "AMBOLOMOTY", "ANKABOKA", "ANKARAOBATO", "ANKAZOMBORONA", "ANOSINALAINOLONA", "ANTANAMBAO ANDRANOLAVA", "ANTANIMASAKA", "BEMAHARIVO", "MANARATSANDRY", "MAROSAKOA", "MAROVOAY", "MAROVOAY BANLIEUE", "TSARARANO", "AMBARIMANINGA", "ANTONGOMENA BEVARY", "ANTSEZA", "BEKIPAY", "KATSEPY", "MATSAKABANJA", "MITSINJO", "AMBOHIPAKY", "ANDRANOMAVO", "ANTSAKOAMILEKA", "SOALALA"]

betsiboka = ["AMBALIHA", "ANDASIBE", "ANTANIMBARIBE", "BEHAZOMATY", "BETAIMBOAY", "KANDREHO", "MAHATSINJO SUD", "AMBALAJIA", "AMBALANJANAKOMBY", "ANDRIBA", "ANTANIMBARY", "ANTSIAFABOSITRA", "BEANANA", "BEMOKOTRA", "BERATSIMANINA", "BERIVOTRA 5/5", "MADIROMIRAFY", "MAEVATANANA I", "MAEVATANANA II", "MAHATSINJO", "MAHAZOMA", "MANGABE", "MARIA", "MAROKORO", "MORAFENO", "TSARARANO", "AMBAKIRENY", "AMPANDRANA", "ANDRIAMENA", "BEKAPAIKA", "BETRANDRAKA", "BRIEVILLE", "ISINKO", "KELILOHA", "MANAKANA", "SAKOAMADINIKA", "SAROBARATRA", "TSARAROVA", "TSARATANANA"]

melaky = ["AMBATOMAINTY", "BEMARIVO", "MAKARAINGO", "MAROTSIALEHA", "SARODRANO", "ANTSALOVA", "BEKOPAKA", "BEMARAHA ATSINANANA", "MASOARIVO", "SOAHANY", "TRANGAHY", "AMBOLIDIA SUD", "AMPAKO", "ANKASAKASA TSIBIRAY", "ANTSIRASIRA", "BEKODOKA", "BESALAMPY", "MAHABE", "MAROVOAY SUD", "SOANENGA", "ANDABOTOKA", "ANDRANOVAO", "ANDREA", "ANKISATRA", "ANTSAIDOHA BEBAO", "ANTSONDRODAVA", "BEBABOKA SUD", "BELITSAKY", "BEMOKOTRA SUD", "BEREVO RANOBE", "BETANATANANA", "MAFAIJIJO", "MAINTIRANO", "MAROHAZO", "MAROMAVO", "TAMBOHORANO", "VEROMANGA", "ANDRAMY", "ANTRANOKOAKY", "BERAVINA", "MORAFENOBE"]

alotra = ["AMBANDRIKA", "AMBATONDRAZAKA", "AMBATONDRAZAKA SUBURBAINE", "AMBATOSORATRA","AMBOHIBOROMANGA","AMBOHIDAVA","AMBOHITSILAOZANA","AMPARIHINTSOKATRA","AMPITATSIMO","ANDILANATOBY","ANDROMBA","ANTANANDAVA","ANTSANGASANGA","BEJOFO","DIDY","FERAMANGA NORD","ILAFY","IMERIMANDROSO","MANAKAMBAHINY EST","MANAKAMBAHINY OUEST","SOALAZAINA","TANAMBAO BESAKAY","AMBATOMAINTY","AMBOAVORY","AMBODIMANGA","AMBODIRANO","AMBOHIJANAHARY","AMBOHIMANDROSO","AMBOHITRARIVO","AMPARAFARAVOLA","AMPASIKELY","ANDILANA NORD","ANDRANOBE","ANDREBAKELY NORD","ANDREBAKELY SUD","ANORORO","BEANANA","BEDIDY","MORARANO CHROME","RANOMAINTY","SAHAMAMY","TANAMBE","VOHIMENA","VOHITSARA","AMPONDRABE","ANDILAMENA","ANTANIMENABAKA","BEMAITSO","MAITSOKELY","MAROADABO","MAROVATO","MIARINARIVO","TANANANIFOLOLAHY","AMBALAOMBY","AMBATOHARANANA","AMBODIMERANA","AMPANDROANTRAKA","AMPASIMANEVA","ANOSIBE AN'ALA","ANTANDROKOMBY","LONGOZABE","NIAROVANA","TRATRAMARINA","TSARAVINANY","AMBATOVOLA","AMBOASARY","AMBOHIBARY","AMBOHIDRONONO","AMPASIPOTSY GARE","AMPASIPOTSY MANDIALAZA","ANALASOA","ANDAINGO","ANDASIBE","ANOSIBE IFODY","ANTANANDAVA","ANTANIDITRA","BEFORONA","BELAVABARY","BEMBARY","FIERENANA","LAKATO","MANDIALAZA","MANGARIVOTRA (EX  BEPARASY)","MORAMANGA","MORARANO GARE","SABOTSY ANJIRO","VODIRIANA"]

atsinanana = ["ANTANAMBAO MANAMPOTSY", "ANTANANDEHIBE", "MAHELA", "MANAKANA", "MANARATSANDRY", "SAIVAZA", "AMBALARONDRA", "AMBINANINONY", "AMBOHIMANANA", "AMPASIMBE", "ANDEKALEKA", "ANDOVORANTO", "ANIVORANO EST", "ANJAHAMANA", "ANTSAMPANANA", "BRICKAVILLE", "FANASANA", "FETRAOMBY", "LOHARIANDAVA", "MAHATSARA", "MAROSERANANA", "RANOMAFANA EST", "RAZANAKA", "VOHITRANIVONA", "AMBINANIDILANA", "AMBINANINDRANO", "AMBODIBONARA", "AMBODIHARINA", "ANDRANAMBOMARO", "ANKAZOTSIFANTATRA", "BEFOTAKA", "BETSIZARAINA", "MAHANORO", "MANJAKANDRIANA", "MASOMELOKA", "TSARAVINANY", "AMBALAPAISO II", "AMBATOFISAKA II", "AMBOASARY", "AMBODINONOKA", "AMBODIVOAHANGY", "AMBOHIMILANJA", "ANDONABE SUD", "ANDRORANGAVOLA", "ANOSIARIVO", "BETAMPONA", "LOHAVANANA", "MAROLAMBO", "MAROMITETY I", "SAHAKEVO", "TANAMBAO RABEMANANA", "CU TOAMASINA arr. AMBODIMANGA", "CU TOAMASINA arr. ANJOMA", "CU TOAMASINA arr. ANKIRIHIRY", "CU TOAMASINA arr. MORARANO", "CU TOAMASINA arr. TANAMBAO V", "AMBODILAZANA", "AMBODIRIANA", "AMBODITANDROHO", "AMPASIMADINIKA", "AMPASIMBE ONIBE", "AMPISOKINA", "AMPOROFORO", "ANDONDABE", "ANDRANOBOLAHA", "ANTENINA", "ANTETEZAMBARO", "FANANDRANA", "FITO", "FOULPOINTE", "MANGABE", "SAHAMBALA", "SATRANDROY", "TOAMASINA SUBURBAINE", "AMBALABE", "AMBALAVOLO", "AMBODINONOKA", "AMBODITAVOLO", "AMBODIVOANANTO", "AMPASIMADINIKA", "AMPASIMAZAVA", "ANTANAMBAO MAHATSARA", "IAMBORANO", "IFASINA I", "IFASINA II", "IFASINA III", "ILAKA EST", "MAINTINANDRY", "NIAROVANA CAROLINE", "NIHERENANA", "SAHAMATEVINA", "TANAMBAO VAHATRAKAKA", "TSARASAMBO", "TSIVANGIANA", "VATOMANDRY"]

analanjirofo = ["AMBANJAN 'I SAHALAVA", "AMBATOHARANANA", "AMBODIMANGA II","AMPASIMBE MANANTSANTRANA", "AMPASINA MANINGORY", "ANTSIATSIAKA", "BETAMPONA", "FENERIVE VILLE", "MAHAMBO", "MAHANORO", "MIORIMIVALANA", "SARANAMBANA", "VOHILENGO", "VOHIPENO", "AMBATOHARANANA", "AMBODIAMPANA", "AMBODIVOANIO", "ANALANAMPOTSY", "ANDASIBE", "ANTANAMBAOBE", "ANTANAMBE", "ANTANANANIVO", "IMORONA", "MAHANORO", "MANAMBOLOSY", "MANANARA NORD", "SANDRAKATSY", "SAROMAONA", "TANIBE", "VANONO", "AMBANIZANA", "AMBINANITELO", "AMBODIMANGA RANTABE", "ANANDRIVOLA", "ANDRANOFOTSY", "ANDRONDRONA", "ANJAHANA", "ANJANAZANA", "ANKOFA", "ANKOFABE", "ANTAKOTAKO", "ANTSIRABE SAHATANY", "MAHALEVONA", "MANAMBOLO", "MARIARANO", "MAROANTSETRA", "MORAFENO", "RANTABE", "SAHASINDRO", "VOLOINA", "SAINTE MARIE", "AMBAHOABE", "AMBINANISAKANA", "AMBODIAMPANA", "ANDAPAFITO", "ANTANIFOTSY", "ANTENINA", "FOTSIALANANA", "MANOMPANA", "SOANIERANA IVONGO", "AMBATOHARANANA", "AMBODIMANGAVALO", "AMBOHIBE", "AMPASIMAZAVA", "ANDASIBE", "ANJAHAMBE", "MAROMITETY", "MIARINARIVO", "SAHATAVY", "TANAMARINA", "VAVATENINA"]

amoro = ["AMBATOFINANDRAHANA","AMBATOMIFANONGOA","AMBONDROMISOTRA","AMBOROMPOTSY","FENOARIVO","ITREMO","MANDROSONORO","MANGATABOAHANGY","SOAVINA","ALAKAMISY AMBOHIJATO","AMBALAMANAKANA","AMBATOFITORAHANA","AMBINANINDRANO","AMBOHIMITOMBO I","AMBOHIMITOMBO II","AMBOHIPERIVOANA","AMBOSITRA","AMBOSITRA BANLIEUE","ANDINA","ANKAZOAMBO","ANKAZOTSARARAVINA","ANTOETRA","FAHIZAY","IHADILANANA AMBOHINAMBOARINA","ILAKA CENTRE","IMERINA IMADY","IVATO","IVONY MIARAMIASA","KIANJANDRAKEFINA","MAHAZINA AMBOHIPIERENANA","MAROSOA","SAHATSIHO AMBOHIMANJAKA","TSARASAOTRA","VOHIDAHY","ALAKAMISY AMBOHIMAHAZO","ANKARINORO","BETSIMISOTRA","FANDRIANA","FIADANANA","IMITO","ISANDRANDAHY AMBONY","MAHAZOARIVO","MIARINAVARATRA","MILAMAINA","SAHAMADIO FISAKANA","SANDRANDAHY","SOANAKAMBANA","TATAMALAZA","TSARAZAZA","AMBATOMARINA","AMBOHIMAHAZO","AMBOHIMILANJA","AMBOHIPO","AMBOVOMBE CENTRE","ANDAKATANY","ANJOMA NANDIHIZANA","ANJOMAN ' ANKONA","ILANJANA","SOATANANA","TALATA VOHIMENA","VINANY ANDAKATANIKELY"]

matsiatra = ["AMBALAVAO", "AMBINANINDOVOKA", "AMBINANIROA", "AMBOHIMAHAMASINA", "AMBOHIMANDROSO", "ANDRAINJATO", "ANJOMA", "ANKARAMENA", "BESOA", "FENOARIVO", "IARINTSENA", "KIRANO", "MAHAZONY", "MANAMISOA", "MIARINARIVO", "NAMOLY", "SENDRISOA", "VOHITSAOKA", "VOLAMENA", "AMBALAKINDRESY", "AMBATOSOA", "AMBOHIMAHASOA", "AMBOHINAMBOARINA", "AMPITANA", "ANKAFINA TSARAFIDY", "ANKERANA", "BEFETA", "CAMP ROBIN", "FIADANANA", "IKALALAO", "ISAKA", "MANANDROY", "MORAFENO", "SAHATONA", "SAHAVE", "VOHIPOSA", "VOHITRARIVO", "FIANARANTSOA   Arr. Andrainjato Sud", "FIANARANTSOA  Arr.  Lazana", "FIANARANTSOA  Arr.  Manolafaka", "FIANARANTSOA  Arr.  Vatosola", "FIANARANTSOA  Arr.  Ville Basse", "FIANARANTSOA  Arr. Andrainjato Nord", "FIANARANTSOA  Arr. Ville Haute", "AMBATOMAINTY", "FITAMPITO", "IKALAMAVONY", "MANGIDY", "SAKAY TANAMARINA", "SOLILA", "TANAMARINA BEKISOPA", "TSITONDROINA", "AMBALAMIDERA AMBOHIMANANA", "AMBALAMIDERA II", "AMBONDRONA", "ANDOHARANOMAITSO", "ANDREAMALAMA", "ANJOMA ITSARA", "ANKARINARIVO MANIRISOA", "FANJAKANA", "IAVINOMBY VOHIBOLA", "ISORANA", "MAHAZOARIVO", "NASANDRATRONY", "SOATANANA", "ALAKAMISY AMBOHIMAHA", "AMBALAKELY", "AMBALAMAHASOA", "AMPATSY AMPANGABE", "ANDRAINJATO CENTRE", "ANDRAINJATO EST", "ANDROY", "FANDRANDAVA", "IALAMARINA", "IALANANINDRO", "IVOAMBA", "MAHATSINJONY", "SAFATA", "SAHAMBAVY", "TAINDAMBO", "VINANINORO ANDREFANA", "ALAKAMISY ITENINA", "ANDRANOMIDITRA", "ANDRANOVORIVATO", "ANJANOMANANA TSIMANAVAKA", "ANKAROMALAZA", "IHAZOARA", "LAMOSINA", "MAHADITRA", "MAHASOABE", "MANEVA", "SOAINDRANA", "TALATA AMPANO", "VINANITELO", "VOHIBATO OUEST", "VOHIMARINA", "VOHITRAFENO"]

vatovavy = ["AMBIABE", "AMBOHIMANGA SUD", "AMBOHIMIERA", "AMPASINAMBO", "ANALAMPASINA", "ANDRORANGAVOLA", "ANTARETRA", "ANTSINDRA", "FASINTSARA", "IFANADIANA", "KELILALINA", "MAROHARATRA", "MAROTOKO", "RANOMAFANA", "TSARATANANA", "AMBATOFOTSY", "AMBINANITROMBY", "AMBOHIMISAFY", "AMBOLOMADINIKA", "ANDEFAPONY", "ANKARIMBELO", "ANTODINGA", "BELEMOKA", "IFANIREA", "IKONGO", "KALAFOTSY", "MANAMPATRANA", "MAROMIANDRA", "SAHALANONA", "TANAKAMBANA", "TOLONGOINA", "TSIFENOKATAKA", "AMBAHATRAZO", "AMBAHIVE", "AMBALAROKA", "AMBALAVERO", "AMBANDRIKA", "AMBILA", "AMBOANJO", "AMBOHITROVA", "AMBOHITSARA-M", "AMBORONDRA", "AMBOTAKA", "AMPASIMANJEVA", "AMPASIMBORAKA", "AMPASIPOTSY SUD", "ANALAVORY", "ANOROMBATO", "ANTEZA", "BEKATRA", "BETAMPONA", "FENOMBY", "KIANJANOMBY", "LOKOMBY", "MAHABAKO", "MAHAMAIBE", "MANAKARA", "MANGATSIOTRA", "MANJARIVO", "MAROFARIHY", "MAVORANO", "MITANTY", "MIZILO GARE", "NIHAONANA AMBANY", "NOSIALA", "ONILAHY", "SAHANAMBOHITRA", "SAHAREFO", "SAHASINAKA", "SAKOANA", "SOROMBO", "TATAHO", "VATANA", "VINANITELO", "VOHILAVA SAHASONDRY", "VOHIMANITRA", "VOHIMASINA NORD", "VOHIMASINA SUD", "VOHIMASY", "AMBALAHOSY NORD", "AMBODINONOKA", "AMBOHIMIARINA II", "AMBOHINIHAONANA", "AMBOHITSARA EST", "ANDONABE", "ANDRANAMBOLAVA", "ANDRANOMAVO", "ANKATAFANA", "ANOSIPARIHY", "ANTARETRA", "ANTSENAVOLO", "KIANJAVATO", "MAHATSARA IEFAKA", "MAHATSARA SUD", "MAHAVOKY NORD", "MAHELA", "MANAKANA NORD", "MANANJARY", "MAROFODY", "MAROFOTOTRA", "MAROKARIMA", "MAROSANGY", "MORAFENO", "NAMORONA", "SANDROHY", "TSARAHAFATRA", "TSARAVARY", "TSIATOSIKA", "VATOHANDRINA", "VOHILAVA", "AMBAHY", "AMBAKOBE", "AMBODIARA", "AMBODILAFA", "AMBODIRIAN'I SAHAFARY", "AMPASINAMBO", "ANDARA", "ANDRORANGAVOLA", "ANGODONGODONA", "ANTANAMBAO", "BEFODY", "FANIVELONA", "FIADANANA", "NOSY VARIKA", "SAHAVATO", "SOAVINA", "VOHIDROA", "VOHILAVA", "VOHITRANDRINA", "AMBOROBE", "ANDEMAKA", "ANKARIMBARY", "ANOLOKA", "ANTANANABO", "IFATSY", "ILAKATRA", "IVATO", "LANIVO", "MAHABO", "MAHASOABE", "MAHAZOARIVO", "NATO", "ONJATSY", "SAHALAVA", "SAVANA", "VOHILANY", "VOHINDAVA", "VOHIPENO", "VOHITRINDRY", "ZAFINDRAFADY"]

atsimoatsinanana = ["ANTANINARENINA", "ANTOKOBORITELO", "ANTONDAMBE", "BEFOTAKA SUD", "BEHARENA", "BEKOFAFA SUD", "INOSY", "MAROVITSIKA SUD", "RANOTSARA SUD", "AMBALATANY", "AMBALAVATO NORD", "AMBALAVATO/ANTEVATO", "AMBOHIGOGO", "AMBOHIMANDROSO", "AMPOROFORO", "ANKARANA MIRAIHINA", "ANOSIVELO", "ANOSY TSARARAFA", "ANTSERANAMBE", "BEVOAY BERETRA", "EFATSY ANANDROZA", "ETROTROKA", "EVATO", "FARAFANGANA", "FENOARIVO", "IABOHAZO", "IHOROMBE", "IVANDRIKA", "MAHABO MANANIVO", "MAHAFASA CENTRE", "MAHAVELO", "MAHERIRATY", "MANAMBOTRA SUD", "MAROVANDRIKA", "NAMOHORA IABORANO", "SAHAMADIO", "TANGAINONY", "TOVONA", "VOHILAVAN'I MANAMPATRANA", "VOHILENGO", "VOHIMASY", "VOHITROMBY", "ANDRANOLALINA", "ANKAZOVELO", "BEVAHO", "IVONDRO EX-LAVARATY", "NOSIFENO EX-MIDONGY SUD", "SOAKIBANY", "ZARA EX-MALIORANO", "AMBATOLAVA", "AMBONGO", "AMPARIHY EST", "AMPASIMALEMY", "AMPATAKA", "ANILOBE", "BEKARAOKY", "BEMA", "BEVATA", "FENOAMBANY", "FONILAZA", "IARA", "ISAHARA", "KARIMBARY", "LOHAFARY", "LOPARY", "MAHABE", "MANAMBONDRO", "MAROKIBO", "MASIANAKA", "MATANGA", "RANOMENA", "SANDRAVINANY", "SOAMANOVA", "TSIANOFANA", "TSIATELY", "VANGAINDRANO", "VATANATO", "VOHIMALAZA", "VOHIPAHO", "VOHITRAMBO", "AMBODIRANO", "AMBOHIMANA", "ANANDRAVY", "ANDAKANA", "ANDOHARANO", "ANTOKONALA", "IAMONTA", "IVATO", "KARIANGA", "MAHATSINJO", "MAHAVELO", "MAHAZOARIVO", "MANAMBIDALA", "MANATO", "MOROTEZA", "VOHIBOREKA", "VOHIMARY", "VONDROZO"]

ihorombe = ["ANDRANOMBAO", "BEGOGO", "IAKORA", "RANOTSARA NORD", "VOLAMBITA", "AMBATOLAHY", "AMBIA", "ANALALIRY", "ANALAVOKA", "ANDIOLAVA", "ANDOHAN'ILAKAKA", "ANKILY", "ANTSOHA", "IHOSY", "ILAKAKA-BE", "IRINA", "MAHASOA", "MENAMATY-ILOTO", "RANOHIRA", "SAHAMBANO", "SAKALALINA", "SATROKALA", "SOAMATASY", "TOLOHOMIADY", "ZAZAFOTSY", "ANTAMBOHOBE", "ANTARAMENA", "IVOHIBE", "IVONGO", "KOTIPA", "MAROPAIKA"]

menabe = ["ABOALIMENA", "AMBIKY", "ANDIMAKY MANAMBOLO", "ANKALALOBE", "ANKOROROKY", "ANTSOHA", "BELINTA", "BELO SUR TSIRIBIHINA", "BEMARIVO ANKIRONDRO", "BEREVO", "BEROBOKA", "DELTA", "MASOARIVO", "TSARAOTANA", "TSIMAFANA", "AMBIA", "ANALAMITSIVALANA", "ANKILIVALO", "ANKILIZATO", "BEFOTAKA", "BERONONO", "BEZEZIKA", "MAHABO", "MALAIMBANDY", "MANDABE", "TSIMAZAVA", "ANDRANOPASY", "ANKILIABO", "ANONTSIBE CENTRE", "BEHARONA", "BETSIOKY", "MANJA", "SOASERANA", "AMBATOLAHY", "AMPANIHY", "ANDRANOMAINTY", "ANKAVANDRA", "ANKONDROMENA", "ANKOTROFOTSY", "ANOSIMENA", "BEMAHATAZANA", "BETSIPOLITRA", "DABOLAVA", "ISALO", "ITONDY", "MANAMBINA", "MANANDAZA", "MIANDRIVAZO", "SOALOKA", "ANALAIVA", "BEFASY", "BELO SUR MER", "BEMANONGA", "MAROFANDILIA", "MORONDAVA"]

atsimoandrefana = ["AGNAVOHA", "AMBOROPOTSY", "AMPANIHY CENTRE", "ANDROIMPANO ", "ANDROKA", "ANKILIABO", "ANKILIMIVORY", "ANKILIZATO", "ANTALY", "BEAHITSE", "BEARA ", "BELAFIKE HAUT", "BEROY SUD", "EJEDA", "FOTADREVO", "GOGOGOGO", "ITAMPOLO", "MANIRY", "VOHITANY", "AMBATOLAHY", "ANDRANOMAFANA", "ANKAZOABO SUD", "ANKERIKY", "ANKILIVALOKELY", "BERENTY", "FOTIVOLO", "ILEMBY", "TANDRANO", "AMBALAVATO", "ANKILIMARY", "BENENITRA", "BENONOKY", "EHARA", "IANAPERA", "BEHISATSY", "BEMAVO", "BEROROHA", "FANJAKANA", "MANDRONARIVO", "MARERANO", "SAKENA", "TANAMARY", "TANANDAVA", "AMBATRY MITSINJO", "ANDRANOMANGATSIAKA", "ANKAZOMANGA OUEST", "ANKAZOMBALALA", "ANKILIVALO", "ANTOHABATO", "ANTSAVOA", "BEANTAKE", "BELAMOTY", "BEORA", "BESELY", "BETIOKY SUD", "BEZAHA", "FENOANDALA", "LAZARIVO", "MANALOBE", "MAROARIVO ANKAZOMANGA", "MAROSAVOA", "MASIABOAY", "MONTIFENO", "SAKAMASAY", "SALOBE", "SAVAZY II", "SOAMANONGA", "SOASERANA", "TANAMBAO HAUT", "TEMEANTSOA", "TONGOBORY", "VATOLATSAKA", "VOHIMARY", "AMBAHIKILY", "ANKATSAKANTSA SUD", "ANTANIMIEVA", "ANTONGO VAOVAO", "BASIBASY", "BEFANDEFA", "BEFANDRIANA SUD", "MOROMBE", "TANANDAVA STATION", "AMBINANY", "AMBORONABO", "ANDAMASINY VINETA", "ANDRANOLAVA", "BERAKETA", "MAHABOBOKA", "MIARY LAMATIHY", "MIARY TAHEZA", "MIHAVATSY", "MIKOBOKA", "MITSINJO", "SAKARAHA", "TOLIARA I", "AMBOHIMAHAVELONA","AMBOLOFOTY", "ANAKAO", "ANALAMISAMPY", "ANDRANOHINALY", "ANDRANOVORY", "ANKILILOAKA", "ANKILIMALINIKA", "ANTANIMENA", "BEHELOKA", "BEHOMPY", "BELALANDA", "BETSINJAKA", "EFOETSE", "MANOMBO SUD", "MANOROFIFY", "MAROFOTY", "MAROMIANDRA", "MIARY", "MILENAKA", "MITSINJO BETANIMENA", "SAINT AUGUSTIN", "SOAHAZO", "SOALARA SUD", "TSIANISIHA", "TSIFOTA"]

androy = ["AMBANISARIKA", "AMBAZOA", "AMBOHIMALAZA", "AMBONAIVO", "AMBONDRO", "AMBOVOMBE ANDROY", "AMPAMATA", "ANALAMARY", "ANDALATANOSY", "ANDOHARANO", "ANDRAGNANIVO", "ANJEKY ANKILIKIRA", "ANTANIMORA SUD", "ERADA", "IMANOMBO", "JAFARO", "MAROALOMAINTE", "MAROALOPOTY", "MAROVATO BEFENO", "SIHANAMARO", "TSIMANANADA", "AMBAHITA", "AMBATOSOLA", "ANIVORANO MITSINJO", "ANJA NORD", "ANKARANABO NORD", "ANTSAKOAMARO", "BEKILY CENTRALE", "BEKITRO", "BELINDO MAHASOA", "BERAKETA", "BESAKOA", "BETEZA", "BEVITIKY", "MANAKOMPY", "MAROVIRO", "MIKAIKARIVO AMBATOMAINTY", "TANANDAVA", "TSIKOLAKY", "TSIRANDRANY", "VOHIMANGA", "AMBATOTSIVALA", "BEHABOBO", "BELOHA ANDROY", "KOPOKY", "MAHAENEGNE", "MAROLINTA", "TRANOROA", "TRANOVAHO", "ANJAMPALY", "ANKILIVALO ", "ANTARITARIKA", "BEHAZOMANGA", "FAUX CAP", "IMONGY", "MAROVATO", "NIKOLY", "TSIHOMBE"]

anosy = ["AMBOASARY", "BEHARA", "BERANO VILLE", "EBELO", "ELONTY", "ESIRA", "IFOTAKA", "MAHABO ", "MAHALY", "MANEVY", "MAROMBY", "MAROTSIRAKA", "RANOBE", "SAMPONA", "TANANDAVA SUD", "TOMBOARIVO", "TRANOMARO", "TSIVORY", "AMBALASOA", "AMBATOMIVARY", "ANALAMARY", "ANDRIANDAMPY", "BEAMPOMBO I", "BEAMPOMBO II", "BEKOROBO", "BENATO TOBY", "BETROKA", "IABOROTRA", "IANABINDA", "IANAKAFY", "ISOANALA", "IVAHONA", "JANGANY","KELIVAHO", "MAHABO", "MAHASOA EST", "NANARENA BESAKOA", "NANINORA", "SAKAMAHILY", "TSARAITSO", "AMBATOABO", "AMPASIMENA", "AMPASY NAHAMPOANA", "ANALAMARY", "ANALAPATSY", "ANDRANOBORY", "ANKARAMENA", "ANKARIERA", "ANKILIVALO", "BEVOAY", "EMAGNOBO", "ENAKARA HAUT", "ENANILIHA", "FENOEVO EFITA", "IABOAKOHO", "IFARANTSA", "ISAKA IVONDRO", "MAHATALAKY", "MANAMBARO", "MANANTENINA", "MANDISO", "MANDROMODROMOTRA", "RANOMAFANA SUD", "RANOPISO", "SARISAMBO", "SOANIERANA", "SOAVARY", "TANANDAVA MANDRARE", "TOLAGNARO"]

region = []
reg.length.times do |i|
    region << Region.create(name: reg[i])
end

diana.length.times do |i|
	Commune.create(name: diana[i], region: region[0])
end

sava.length.times do |i|
	Commune.create(name: sava[i], region: region[1])
end

itasy.length.times do |i|
	Commune.create(name: itasy[i], region: region[2])
end

analamanga.length.times do |i|
    Commune.create(name: analamanga[i], region: region[3])
end

ankaratra.length.times do |i|
	Commune.create(name: ankaratra[i], region: region[4])
end

bongolava.length.times do |i|
	Commune.create(name: bongolava[i], region: region[5])
end

sofia.length.times do |i|
	Commune.create(name: sofia[i], region: region[6])
end

boeny.length.times do |i|
	Commune.create(name: boeny[i], region: region[7])
end

betsiboka.length.times do |i|
	Commune.create(name: betsiboka[i], region: region[8])
end

melaky.length.times do |i|
	Commune.create(name: melaky[i], region: region[9])
end

alotra.length.times do |i|
    Commune.create(name: alotra[i], region: region[10])
end

atsinanana.length.times do |i|
	Commune.create(name: atsinanana[i], region: region[11])
end

analanjirofo.length.times do |i|
	Commune.create(name: analanjirofo[i], region: region[12])
end

amoro.length.times do |i|
    Commune.create(name: amoro[i], region: region[13])
end

matsiatra.length.times do |i|
	Commune.create(name: matsiatra[i], region: region[14])
end

vatovavy.length.times do |i|
	Commune.create(name: vatovavy[i], region: region[15])
end

atsimoatsinanana.length.times do |i|
	Commune.create(name: atsimoatsinanana[i], region: region[16])
end

ihorombe.length.times do |i|
	Commune.create(name: ihorombe[i], region: region[17])
end

menabe.length.times do |i|
	Commune.create(name: menabe[i], region: region[18])
end

atsimoandrefana.length.times do |i|
	Commune.create(name: atsimoandrefana[i], region: region[19])
end

androy.length.times do |i|
	Commune.create(name: androy[i], region: region[20])
end

anosy.length.times do |i|
	Commune.create(name: anosy[i], region: region[21])
end


User.create(full_name: "User",age: 29,adress: "nill", email: "User@user.com", password:"azerty", is_admins: true)
# 10.times do |i|
#     User.create(full_name: Faker::Name.name, age: rand(18..77), adress: Faker::Address.street_address, email: Faker::Internet.email, password: "azertyop")
# end
rcommune = Commune.find_by(name: "ANTANANARIVO")
5.times do |i|
    Candidat.create(name: Faker::FunnyName.name, parti: Faker::Kpop.boy_bands, resultat: rand(99), commune: rcommune, region: region[3])
end

# 55.times do |i|
#     Promess.create(content: Faker::Kpop.boy_bands, candidat_id: rand(Candidat.first.id .. Candidat.last.id))
# end

puts "seeds FAIT"