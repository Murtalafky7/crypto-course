
import 'package:flutter/material.dart';

void main() => runApp(const CryptoApp());

class Lesson {
  final String title;
  final String body;
  final String? quiz;
  final List<String>? options;
  final int? answer;
  const Lesson(this.title, this.body, {this.quiz, this.options, this.answer});
}

class Module {
  final String title;
  final String subtitle;
  final List<Lesson> lessons;
  const Module(this.title, this.subtitle, this.lessons);
}

const modules = <Module>[
  Module('Module 1: Fahimtar Crypto Currency', 'Daga tushe zuwa fahimtar blockchain', [
    Lesson('Menene Crypto Currency?', 'Crypto currency digital asset ce da ke amfani da cryptography da blockchain ko wasu distributed-ledger technologies. Ba ka riƙe coin ɗin a jaka ta zahiri; kana amfani da keys domin hulɗa da asset ɗin da ke kan network.'),
    Lesson('Bitcoin da dalilin ƙirƙirarsa', 'Bitcoin an ƙaddamar da shi a 2009 a ƙarƙashin sunan Satoshi Nakamoto. An tsara shi a matsayin peer-to-peer electronic cash system da ba ya buƙatar banki a matsayin mai tsaka-tsaki.'),
    Lesson('Blockchain Technology', 'Blockchain wani tsarin adana bayanai ne a cikin blocks da aka haɗa jere. Network participants suna amfani da consensus da cryptography domin tabbatar da bayanai da hana sauƙin canza tarihin transactions.'),
    Lesson('Coin da Token', 'Coin yawanci native asset ne na blockchain ɗinsa, kamar BTC na Bitcoin da ETH na Ethereum. Token kuwa ana gina shi a kan wata blockchain da ke akwai, misali ERC-20 token a Ethereum.'),
    Lesson('Layer 1, Layer 2 da Smart Contract', 'Layer 1 ita ce babbar blockchain network. Layer 2 protocols suna gina a saman Layer 1 domin taimakawa scalability ko rage costs. Smart contract kuwa program ne da ke aiwatar da dokoki ta atomatik a blockchain.'),
  ]),
  Module('Module 2: Wallet da Tsaro', 'Kare keys ɗinka da fahimtar wallets', [
    Lesson('Menene Crypto Wallet?', 'Wallet kayan aiki ne da ke baka damar sarrafa private keys da yin hulɗa da blockchain. Asset ɗin kansa yana kan blockchain; wallet yana taimaka maka samun damar sarrafa shi.'),
    Lesson('Hot Wallet da Cold Wallet', 'Hot wallet yana haɗe da internet yayin amfani. Cold wallet yana ajiye keys a yanayin da ba ya kasancewa a kullum a online, misali hardware wallet. Cold storage na iya rage wasu online attack risks, amma yana buƙatar kulawa da backup.'),
    Lesson('Seed Phrase da Private Key', 'Seed phrase kalmomi ne da ake amfani da su wajen dawo da wallet a wasu wallet systems. Private key yana ba da ikon sanya hannu kan transactions. Kada a aika su ga kowa, kuma kada a saka su a website da ba ka tabbatar da shi ba.'),
    Lesson('Yadda ake kare Wallet daga Scam', 'Ka guji fake links, phishing, DM da ke neman seed phrase, da apps marasa tabbas. Ka duba domain, transaction details da permissions kafin ka sa hannu.'),
    Lesson('CEX da DEX', 'CEX kamar Binance ko Bybit exchange ne da kamfani ke gudanarwa. DEX kamar Uniswap yana ba da trading kai tsaye ta smart contracts. Kowanne yana da fa’idodi da risks.'),
  ]),
  Module('Module 3: Buying da Selling Crypto', 'Hanyoyin saye, sayarwa da kudade', [
    Lesson('Yadda ake sayen Crypto', 'Za ka iya amfani da CEX, DEX ko P2P gwargwadon asset da network. Kafin ka saya, ka duba price, liquidity, fees, network da withdrawal requirements.'),
    Lesson('Spot Trading', 'Spot trading shi ne saye ko sayar da asset a kasuwar spot ba tare da leverage ba. Kana mallakar asset ɗin da ka saya a exchange ko wallet ɗinka, bisa tsarin platform.'),
    Lesson('P2P Trading', 'P2P yana haɗa buyers da sellers kai tsaye ta hanyar platform. Ka bi escrow da payment rules na platform kuma kada ka saki crypto kafin ka tabbatar da payment.'),
    Lesson('Fees da Gas Fees', 'Trading fee kuɗin service ne na exchange ko DEX. Gas fee kuwa kuɗin da ake biya domin transaction ya samu sarari a blockchain network. Gas ba lallai ya zama daidai da trading fee ba.'),
    Lesson('Stablecoins', 'Stablecoins assets ne da aka tsara su domin bin wani reference value, sau da yawa USD. Misalai sun haɗa da USDT da USDC. Duk da haka, akwai issuer, reserve, depeg da counterparty risks da ya kamata a fahimta.'),
  ]),
  Module('Module 4: Technical Analysis', 'Karanta chart da market structure', [
    Lesson('Candlestick Basics', 'Candlestick yana nuna Open, High, Low da Close na wani timeframe. Body yana nuna bambancin open da close; wicks suna nuna high da low da aka samu a lokacin.'),
    Lesson('Support da Resistance', 'Support yanki ne inda buying interest ya taɓa rage saukar price. Resistance yanki ne inda selling interest ya taɓa rage tashin price. Ka fi kallonsu a matsayin zones, ba layi mai sihiri ba.'),
    Lesson('Trend', 'Uptrend yawanci yana da Higher Highs da Higher Lows. Downtrend yana da Lower Highs da Lower Lows. Sideways market yana yawan motsi tsakanin range boundaries.'),
    Lesson('Market Structure', 'Market structure yana amfani da swing highs da swing lows domin fahimtar yanayin price. HH, HL, LH da LL su ne muhimman kalmomi wajen karanta structure.'),
    Lesson('Higher High da Higher Low', 'Higher High sabon high ne da ya fi previous high. Higher Low sabon low ne da ya fi previous low. Haɗuwarsu tana taimakawa wajen gane bullish structure.'),
    Lesson('Lower High da Lower Low', 'Lower High sabon high ne da bai kai previous high ba. Lower Low sabon low ne da ya kasa previous low. Haɗuwarsu tana taimakawa wajen gane bearish structure.'),
    Lesson('Break of Structure (BOS)', 'BOS ana amfani da shi wajen bayyana karya wani muhimmin swing point na structure, musamman a continuation context. Muhimmancin swing da timeframe suna da tasiri wajen fassara shi.'),
    Lesson('Change of Character (CHOCH)', 'CHOCH kalma ce da traders ke amfani da ita wajen bayyana yiwuwar canjin character na structure. Ba guarantee na reversal ba ne; ana buƙatar context da confirmation.'),
  ]),
  Module('Module 5: Advanced Trading', 'Price action, indicators da risk', [
    Lesson('Order Block', 'A wasu price-action methodologies, Order Block na nufin wani price area da trader ke ganin ya taka rawa kafin strong move. Ba kowane candle kafin move ba ne ingantaccen Order Block.'),
    Lesson('Liquidity', 'Liquidity a wannan context tana nuni da wuraren da traders ke tsammanin akwai orders ko stops, kamar equal highs, equal lows da previous swing points.'),
    Lesson('Fair Value Gap (FVG)', 'FVG kalma ce da wasu traders ke amfani da ita wajen nuna price imbalance a wani strong move. Price na iya komawa yankin, amma ba dole ba ne.'),
    Lesson('Volume Analysis', 'Volume yana nuna yawan trading activity. Haɗa volume da price action na iya taimakawa wajen tantance strength na move, amma volume shi kaɗai ba guarantee ba ne.'),
    Lesson('VWAP', 'VWAP yana lissafa average traded price tare da weighting na volume. Traders na amfani da shi a wasu setups domin fahimtar intraday value da context.'),
    Lesson('Fibonacci', 'Fibonacci retracement ana amfani da shi wajen duba potential pullback zones kamar 38.2%, 50%, 61.8% da 78.6%. Ba crystal ball ba ce; tana buƙatar context.'),
    Lesson('Risk Management', 'Kare capital ya fi neman trade ɗaya mai girma. Ka tsara risk per trade, stop-loss/invalidation, position size da maximum daily loss kafin ka shiga.'),
    Lesson('Trading Psychology', 'FOMO, revenge trading, overtrading da tsoron loss na iya lalata tsarin trader. Rubuta trading plan da journal, sannan ka bi dokokinka.'),
  ]),
  Module('Module 6: Investing a Crypto', 'Long-term, DCA da fundamental research', [
    Lesson('Long-Term Holding', 'Long-term holding yana nufin riƙe asset na dogon lokaci bisa thesis. Ka fayyace dalilin saye, invalidation conditions da abin da zai sa ka fita.'),
    Lesson('Dollar Cost Averaging (DCA)', 'DCA yana raba capital zuwa purchases a lokuta daban maimakon saka komai lokaci guda. Yana rage dogaro da entry guda, amma ba ya kawar da market risk.'),
    Lesson('Yadda ake binciken Project', 'Duba problem da project ke warwarewa, team, technology, users, revenue, competition, token utility, unlocks, treasury da security history.'),
    Lesson('Max Supply', 'Max supply shi ne iyakar adadin tokens da protocol ya tsara ko zai iya samu bisa dokokinsa. Wasu assets ba su da fixed maximum supply.'),
    Lesson('Circulating Supply', 'Circulating supply shi ne adadin units da ake ɗauka suna cikin circulation. Ya bambanta da total ko max supply.'),
    Lesson('Inflation', 'Inflation a tokenomics yana faruwa idan supply yana ƙaruwa. Ka duba issuance rate, emissions da abin da ake yi da sabbin tokens.'),
    Lesson('Fundamental Analysis', 'Fundamental analysis yana nazarin value drivers kamar adoption, product, revenue, token economics, competition, governance da risks.'),
  ]),
  Module('Module 7: DeFi da Blockchain', 'Ayyukan kuɗi a blockchain', [
    Lesson('Staking', 'Staking yana ba da damar shiga consensus ko security na wasu proof-of-stake networks ta hanyar locking/delegating assets. Rewards suna zuwa da network da smart-contract risks gwargwadon tsarin.'),
    Lesson('Validators', 'Validator yana taimakawa wajen tabbatar da transactions da/ko samar da blocks a PoS network. A wasu networks ana buƙatar stake, uptime da bin dokoki.'),
    Lesson('Yield Farming', 'Yield farming yana nufin neman returns ta hanyar samar da liquidity ko amfani da DeFi protocols. Returns masu yawa na iya zuwa da smart-contract, impermanent-loss da token risks.'),
    Lesson('Liquidity Pools', 'Liquidity pool tarin assets ne da ake amfani da su wajen DEX trading. Liquidity providers na iya samun fees, amma suna fuskantar risks kamar impermanent loss.'),
    Lesson('Bridges', 'Bridge yana taimakawa wajen motsa assets ko messages tsakanin networks. Bridges suna da technical da security risks, don haka ka binciki protocol kafin amfani.'),
    Lesson('DAOs', 'DAO wani tsarin governance ne da ke amfani da smart contracts da voting mechanisms domin bai wa community damar shiga yanke shawara.'),
  ]),
  Module('Module 8: Meme Coin da Degen Trading', 'High-risk market research', [
    Lesson('Yadda ake binciken Meme Coin', 'Duba liquidity, market cap, holders, contract, deployer, trading activity, social signals da liquidity lock/burn claims. Meme coins suna da matuƙar volatility.'),
    Lesson('Dev Wallet Analysis', 'Duba wallet na deployer/dev da movements dinsa. Ka kula da transfers zuwa exchanges, wallets masu alaƙa da supply concentration. On-chain data na iya zama mai rikitarwa, don haka ka tabbatar da wallet identity.'),
    Lesson('Holder Distribution', 'Duba ko few wallets suna riƙe babban kaso na supply. High concentration na iya ƙara risk idan manyan holders suka sayar.'),
    Lesson('Bundle da Cluster Analysis', 'Bundle analysis da cluster analysis wasu hanyoyi ne na nazarin alaƙar wallet activity. Ba su da cikakkiyar tabbaci; labels da wallet relationships na iya zama kuskure.'),
    Lesson('Risk Management na Meme Coin', 'Meme coin na iya yin babban profit ko babban loss cikin sauri. Yi amfani da ƙaramin risk, ka guji leverage mai yawa, kuma kada ka saka kuɗin da ba za ka iya rasa ba.'),
  ]),
];

class CryptoApp extends StatefulWidget {
  const CryptoApp({super.key});
  @override State<CryptoApp> createState() => _CryptoAppState();
}

class _CryptoAppState extends State<CryptoApp> {
  bool dark = false;
  final Set<String> completed = {};
  int get totalLessons => modules.fold(0, (s, m) => s + m.lessons.length);

  @override
  Widget build(BuildContext context) {
    final progress = totalLessons == 0 ? 0.0 : completed.length / totalLessons;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crypto Currency',
      themeMode: dark ? ThemeMode.dark : ThemeMode.light,
      theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      home: HomePage(
        modules: modules, completed: completed, progress: progress,
        onToggle: (id) => setState(() => completed.contains(id) ? completed.remove(id) : completed.add(id)),
        dark: dark, onDark: () => setState(() => dark = !dark),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  final List<Module> modules; final Set<String> completed; final double progress;
  final void Function(String) onToggle; final bool dark; final VoidCallback onDark;
  const HomePage({super.key, required this.modules, required this.completed, required this.progress, required this.onToggle, required this.dark, required this.onDark});
  @override State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String q = '';
  @override
  Widget build(BuildContext context) {
    final filtered = widget.modules.map((m) => Module(m.title, m.subtitle,
      m.lessons.where((l) => l.title.toLowerCase().contains(q.toLowerCase())).toList()
    )).where((m) => m.lessons.isNotEmpty).toList();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crypto Currency'),
        actions: [IconButton(onPressed: widget.onDark, icon: Icon(widget.dark ? Icons.light_mode : Icons.dark_mode))],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Icon(Icons.currency_bitcoin, size: 64),
          const Text('CRYPTO CURRENCY', textAlign: TextAlign.center, style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          const Text('From Beginner to Advanced Trading', textAlign: TextAlign.center, style: TextStyle(fontSize: 17)),
          const SizedBox(height: 8),
          const Text('Muhammad Tukur\nMasanin Lissafi, wanda ya kammala karatun Lissafi a Jami’ar Maiduguri', textAlign: TextAlign.center),
          const SizedBox(height: 18),
          LinearProgressIndicator(value: widget.progress),
          const SizedBox(height: 6),
          Text('${widget.completed.length}/${widget.modules.fold(0, (s,m)=>s+m.lessons.length)} darussa an kammala'),
          const SizedBox(height: 16),
          TextField(decoration: const InputDecoration(prefixIcon: Icon(Icons.search), labelText: 'Nemo darasi...', border: OutlineInputBorder()), onChanged: (v)=>setState(()=>q=v)),
          const SizedBox(height: 16),
          ...filtered.asMap().entries.map((e) => Card(
            child: ListTile(
              leading: CircleAvatar(child: Text('${widget.modules.indexOf(e.value)+1}')),
              title: Text(e.value.title),
              subtitle: Text(e.value.subtitle),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => ModulePage(module: e.value, completed: widget.completed, onToggle: widget.onToggle))),
            ),
          )),
          const SizedBox(height: 12),
          const Card(child: Padding(padding: EdgeInsets.all(14), child: Text('GARGADI: Wannan app na ilimi ne, ba shawarar kuɗi ba. Crypto na da babban haɗari. Ka yi bincike kafin ka yanke shawarar saka jari ko trading.'))),
        ],
      ),
    );
  }
}

class ModulePage extends StatelessWidget {
  final Module module; final Set<String> completed; final void Function(String) onToggle;
  const ModulePage({super.key, required this.module, required this.completed, required this.onToggle});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text(module.title)),
    body: ListView.builder(
      padding: const EdgeInsets.all(12), itemCount: module.lessons.length,
      itemBuilder: (_, i) {
        final l = module.lessons[i]; final id = '${module.title}:$i'; final done = completed.contains(id);
        return Card(child: ListTile(
          leading: Icon(done ? Icons.check_circle : Icons.menu_book),
          title: Text('Darasi na ${i+1}: ${l.title}'),
          trailing: const Icon(Icons.chevron_right),
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => LessonPage(lesson:l, done:done, onDone:()=>onToggle(id)))),
        ));
      },
    ),
  );
}

class LessonPage extends StatelessWidget {
  final Lesson lesson; final bool done; final VoidCallback onDone;
  const LessonPage({super.key, required this.lesson, required this.done, required this.onDone});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Darasi')),
    body: ListView(padding: const EdgeInsets.all(20), children: [
      Text(lesson.title, style: const TextStyle(fontSize: 27, fontWeight: FontWeight.bold)),
      const SizedBox(height: 20),
      Text(lesson.body, style: const TextStyle(fontSize: 18, height: 1.65)),
      const SizedBox(height: 28),
      if (lesson.quiz != null) ...[
        Text('Tambaya', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 8), Text(lesson.quiz!),
        const SizedBox(height: 8),
        ...lesson.options!.asMap().entries.map((e) => OutlinedButton(onPressed: ()=>showDialog(context:context,builder:(_)=>AlertDialog(title:Text(e.key==lesson.answer?'Daidai!':'Ka sake nazari'),content:Text(e.key==lesson.answer?'Amsar daidai ce.':'Wannan ba ita ce amsar ba.'),actions:[TextButton(onPressed:()=>Navigator.pop(context),child:const Text('OK'))])), child: Text(e.value))),
        const SizedBox(height: 18),
      ],
      FilledButton.icon(onPressed: done ? null : onDone, icon: const Icon(Icons.check), label: Text(done ? 'An kammala' : 'Na kammala wannan darasi')),
    ]),
  );
}
