# Mszana INFO — wersja ulepszona 🛠️

Kompletny serwis (główna strona + 4 artykuły + wszystkie grafiki) po poprawkach i ulepszeniach.

## Co zostało zrobione

### 🆕 Runda 10 — NOWY UKŁAD STRONY (layout)
- **Nagłówek**: logo i nazwa po lewej; menu po prawej: Strona główna • Aktualności (rozwijane — lista artykułów) • Sesje Rady • Forum • Ogłoszenia • Kontakt.
- **Banner ostrzegawczy (utrudnienia drogowe)**: pomarańczowy pasek pod nagłówkiem ⚠️ — alerty w jednym miejscu + przycisk „Szczegóły” (remont ul. 1 Maja, rozbudowa ul. Wolności).
- **Sekcja główna — 2 kolumny**:
  - Lewa (szeroka): **Aktualności** w kafelkach 2×2 (miniaturka/grafika, data, tytuł, 2-linijkowy skrót, „Czytaj więcej”).
  - Prawa (panel boczny, błękitne tło): **Sesje Rady** — ostatnia/najbliższa sesja, duże przyciski „🎥 Transmisja na żywo (eSesja)” i „📋 Porządek obrad (BIP)” + **archiwum** (rozwijane: protokoły 2024–2029 i 2018–2024, nagrania wideo, porządek obrad ostatniej sesji, protokoły komisji).
- **Stopka**: kontakt (e-mail, telefon, adres), godziny otwarcia urzędu, media społecznościowe, **deklaracja dostępności (WCAG)**, link do BIP.

### 🆕 Runda 9 (najnowsze zmiany) — FORUM W CHMURZE ☁️
- **Forum podłączone do Supabase** — posty, komentarze i głosy są teraz **wspólne dla wszystkich mieszkańców** (jak ogłoszenia).
- **WAŻNE — 1 raz utwórz tabelę** w Supabase:
  1. [supabase.com/dashboard](https://supabase.com/dashboard) → projekt → **SQL Editor** → New query,
  2. wklej zawartość pliku **`supabase-forum.sql`** (w tym folderze) → **RUN**,
  3. po tym forum działa w chmurze dla wszystkich.
- Bez tabeli forum działa w trybie lokalnym (posty tylko u Ciebie) i pokazuje komunikat w konsoli.
- Twoje "polubienia" (👍) są zapamiętywane per urządzenie (localStorage), ale liczba głosów i posty są wspólne.

### 🆕 Runda 8 (najnowsze zmiany)
- **Sekcja „O nas” przeniesiona na samą górę strony** — tuż pod hero („Forum Mieszkańców Gminy Mszana — Twój Głos / Twoja ulica, Twój głos się liczy.”), nad Aktualnościami.
- **„O nas” usunięte z menu górnego i ze stopki** (sekcja jest teraz widoczna od razu na górze strony, bez zakładki).

### 🆕 Runda 7 (najnowsze zmiany)
- **Artykuł „Rozbudowa ul. Wolności w Połomi” zaktualizowany pełną, rzetelną treścią** (stan: 6 sierpnia 2026): ZDW Katowice szuka wykonawcy DW 930, chodnik ~692 m (szer. 2,10 m), przepust na Kolejówce, oświetlenie, organizacja robót, terminy (oferty do 7.08.2026) i finansowanie (800 tys. zł dotacji, szac. koszt 3 633 821 zł) + **10 źródeł (S1–S10) z linkami**.
- Nowa grafika:  (1672×941, jasna).

### 🆕 Runda 6 (najnowsze zmiany)
- **Usunięte z górnego panelu (nawigacji)**: „Mapa” i „Sołtysi”.
- **„🧭 Asystent”** w menu górnym prowadzi teraz tam, gdzie wcześniej prowadziła mapa — do sekcji  (ważne miejsca + sołtysi).

### 🆕 Runda 5 (najnowsze zmiany)
- **Usunięto wszystkie dane przykładowe (fake)**: wątki forum (Marek K., Kasia M., GOKiR itd.), komentarze, ogłoszenia demo (Jabłka 5kg, Koparka mini itd.), avatary i „Anna, Marek i 23 sąsiadów”, overlay „Ostatnio na Forum” w hero.
- Forum i ogłoszenia startują **puste** — treści dodają mieszkańcy. Posty użytkowników nie są już nadpisywane przy odświeżeniu (localStorage czytany zamiast seeda).

### 🆕 Runda 4 (najnowsze zmiany)
- **Workout całkowicie usunięty** — baner-promo, sekcja wideo z Sanah, przycisk „🎬 Workout” w pasku, linki w menu i stopce.
- **Z paska górnego usunięte**: Workout, „👥 Radni” i „🗺️ Okręgi” (Radni/Okręgi pozostają w dolnej karcie „Radni dla Mieszkańca” przy Mapie).
- **Nowy artykuł „Rozbudowa ul. Wolności w Połomi”** (`artykuly/rozbudowa-ul-wolnosci-polomia.html`) z grafiką (`assets/ul-wolnosci-polomia.png`) + karta w Aktualnościach.
- **Forum ↔ artykuły**:
  - zakładki „Utrudnienia i drogi”, „Sesje” i „Fundusz Sołecki” pokazują teraz automatycznie **karty powiązanych artykułów** (m.in. „Co dalej z remontem ul. 1 Maja”, „XXVII Sesja”, „Fundusz sołecki”),
  - zakładka **Sesje** ma podkategorię **„Rok 2026”** — kliknięcie przekierowuje do artykułu o sesji,
  - kategoria **„Asystent mieszkańca” usunięta z zakładek forum**, a link **„🧭 Asystent” trafił do menu górnego** (wątki „studzienka” i „latarnia” przeniesione do zakładek Drogi / Bezpieczeństwo).
- **Sekcja „Informacje o posiedzeniach sesji Rady Gminy” przeniesiona na dół** — tuż przed „Oficjalne kanały gminy Mszana” (komisje zostają wyżej).

### 🆕 Runda 3 (najnowsze zmiany)
- **„Powiadomienia o posiedzeniach i sesjach” podzielone na 2 sekcje**:
  - 🏛️ **Komisje Rady Gminy** (id=`komisje`) — 4 komisje z linkami do oficjalnych stron + **najbliższe posiedzenie z porządkiem obrad** (Komisja Rewizyjna 11.08.2026, 8:00) + link do BIP „Porządek obrad komisji”.
  - 📢 **Sesje Rady Gminy** (id=`sesje`) — **porządek obrad ostatniej sesji** (27.07.2026, 14:30, 9 punktów) + linki: BIP „Porządek obrad sesji”, eSesja.tv na żywo, FB gminy.
- **„Oficjalne kanały gminy Mszana” przeniesione na dół — pod filmik (przed stopkę).**
- **Zakładka „O nas”** (zamiast „Zasady” w menu): baner z logo grupy + pełne informacje o grupie FB (z linkiem „Dołącz do grupy”) + zasady.
- **Hero**: usunięty opis z numerem admina → wstawiony **herb Gminy**; plakietka „Forum Mieszkańców Gminy Mszana — Twój Głos” (bez dubla „X aktywnych dyskusji”).
- **„Piekarnia Kozielska” → „Piekarnia Kozielski”** (strona główna + artykuł o ul. 1 Maja).

### 🆕 Runda 2 (najnowsze zmiany)
- **Sekcja „Ważna informacja — zasady naszej grupy”** — pełny regulamin grupy FB dodany między Forum a Mapą (link „📜 Zasady” w menu nagłówka i stopce).
- **Ogłoszenia przeniesione na sam dół strony** — teraz kolejność: Aktualności → Forum → Mapa/Sołtysi → **📢 Ogłoszenia** → **🎬 Wideo** → Stopka.
- **Tytuł strony** (zakładka przeglądarki + podgląd przy udostępnianiu): `Mszana INFO — Mszana – Przejrzysta Gmina & Sprawy Mieszkańców`. Nazwa grupy FB widoczna też w podtytule nagłówka i stopce.
- **Górny pasek przestawiony**: pierwszy od lewej **📧 kontakt@mszana.info**, potem **f Grupa → f Gmina → Gmina Mszana (z herbern) → 💬 Forum → 🎬 Workout → 👥 Radni → 🗺️ Okręgi**.
- **Sekcja wideo na samym dole (pod ogłoszeniami)**: osadzony film YouTube (Taneczny Workout Cardio z hitami Sanah) odtwarzany **od 7:00 do 9:30** (`start=420&end=570`), z pełnym tytułem i opisem.
- **„Film wskakuje na górę, spełza na dół”**: czerwony baner-promo na samej górze strony (pod nagłówkiem) + przycisk „🎬 Workout” w górnym pasku — kliknięcie przenosi płynnie na sam dół, do wideo.
- Link „🎬 Wideo” dodany też do nawigacji nagłówka i stopki.

### ✅ Poprawki („popraw”)
- **Zdublowane przyciski w górnym pasku** (e-mail ×3, „Radni/Okręgi” ×2) — usunięte, każdy link jest teraz raz.
- **Literówka kategorii** `bezpeiczenstwo` → `bezpieczenstwo` — wątek „Nie świeci latarnia…” w końcu pokazuje się w zakładce „Bezpieczeństwo”.
- **3× zdublowany wątek sesji** na forum (ten sam temat 3 razy) — usunięte 2 kopie.
- **Zdublowana linia zapisu** do localStorage — usunięta.
- **Usunięty „śmieciowy” tekst w stopce** („Otwórz grafikę forum…”).
- **Błędne CSS `.active-cat`** (`ring:` → poprawny `box-shadow`).
- **Niedziałająca liczba dyskusji** w hero (sztywno „14”) — teraz liczona automatycznie z danych forum.

### 🛡️ Herb Gminy Mszana („wstaw dodatkowo herb”)
- Twój herb wstawiony w **4 miejscach**: pasek górny (przycisk „Gmina Mszana”), nagłówek (obok „Mszana INFO”), karta „Oficjalne kanały gminy” oraz **stopka**.
- Przygotowany jako czysty plik `assets/herb-mszana.png` (obcięte białe marginesy).
- Herb jako **favicon** (`assets/favicon.png`) + ikona Apple (`assets/apple-touch-icon.png`).

### ✨ Ulepszenia („ulepsz”)
- **Meta tagi Open Graph** — po udostępnieniu na FB/WhatsApp strona pokaże ładną kartę z bannerem `assets/og-mszana-info.png` (wygenerowany: herb + „Mszana INFO”).
- **Favicon + theme-color** — zakładka przeglądarki i pasek adresu w kolorze zieleni/szałwi.
- **Responsywny górny pasek** — na telefonie ważne linki się nie rozjeżdżają (przewijane, „Radni/Okręgi” na mniejszych ekranach schowane).
- **Stopka przeprojektowana** — herb + nawigacja + oficjalne kanały + stopka prawna.
- **Accessibility**: `aria-label` dla nawigacji i pól wyszukiwania, `alt` dla obrazków, `scroll-margin-top` (kotwice nie chowają się pod przyklejonym paskiem).

## Jak wdrożyć na Netlify

1. Zaloguj się na https://app.netlify.com (konto, na którym jest `mszana-info`).
2. Otwórz witrynę **mszana-info** → zakładka **Deploys**.
3. Przeciągnij **cały folder `mszana-info-ulepszona`** w pole „Drag and drop your site folder here”.
4. Netlify zbuduje nowy deploy — gotowe w ~30 s. Stary deploy zostanie zachowany (można cofnąć).

> ⚠️ Wgrywaj **cały folder** (zawiera `artykuly/` i `assets/`), żeby nie zniknęły podstrony artykułów.

### Opcjonalnie — linia poleceń (CLI)
```bash
cd mszana-info-ulepszona
npx netlify-cli deploy --prod --dir .
```

## Struktura
```
mszana-info-ulepszona/
├── index.html            ← ulepszona strona główna
├── artykuly/             ← 4 artykuły (poprawione)
└── assets/
    ├── herb-mszana.png   ← nowy (herb, czysty)
    ├── favicon.png       ← nowy
    ├── apple-touch-icon.png ← nowy
    └── og-mszana-info.png   ← nowy (banner do udostępnień)
```

## 🐙 Przejście na GitHub Pages

### Krok 1 — załóż repozytorium
1. Wejdź na https://github.com/new (wymagane konto GitHub — założenie jest darmowe).
2. Nazwa repozytorium: np. **mszana-info**.
3. **Nie** zaznaczaj „Add a README file" (mamy własny) — resztę zostaw domyślnie → **Create repository**.

### Krok 2 — wgraj pliki (komendy do skopiowania)
Otwórz terminal w folderze `mszana-info-ulepszona` i wklej (podmień `TWOJA_NAZWA` na swoją nazwę GitHub):

```bash
cd mszana-info-ulepszona
git init
git add .
git commit -m "Mszana INFO - portal + forum mieszkańców"
git branch -M main
git remote add origin https://github.com/TWOJA_NAZWA/mszana-info.git
git push -u origin main
```

### Krok 3 — włącz GitHub Pages
1. GitHub → repozytorium **mszana-info** → **Settings** → **Pages** (menu z lewej).
2. **Source**: *Deploy from a branch* → Branch: **main** → Folder: **/ (root)** → **Save**.
3. Poczekaj ~1 min (odśwież — u góry zobaczysz zielony baner z adresem).

### Twoja strona będzie pod adresem
```
https://TWOJA_NAZWA.github.io/mszana-info/
```

### Ważne (naprawa po wdrożeniu)
- W paczce są już: **CNAME** (zawiera `mszana.info`), **.nojekyll** i `og:url`/`og:image` ustawione na **https://mszana.info/**.
- Wgrywaj **CAŁĄ zawartość** folderu na branch, który serwuje Pages — koniecznie z podfolderami `assets/` i `artykuly/`. Jeśli wgrasz tylko `index.html`, wszystkie grafiki i artykuły będą zwracać **404**.
- Po wgraniu wszystko (strona, grafiki, artykuły) powinno działać od ręki. 🎉

### Uwagi
- Linki w serwisie są **względne** — działają pod `...github.io/mszana-info/` (i pod domeną własną, jeśli kiedyś podepniesz).
- Ogłoszenia działają przez Supabase (chmura) z trybem offline — bez zmian.
- Forum i głosy zapisują się w localStorage przeglądarki (jak dotychczas).
- Plik `.nojekyll` w folderze wyłącza przetwarzanie Jekyll przez GitHub Pages.

## 🌐 Własna domena (opcjonalnie) — plik CNAME

> **Uwaga:** plik CNAME jest potrzebny **tylko przy własnej domenie**. Na domyślnym adresie
> `https://TWOJA_NAZWA.github.io/mszana-info/` **nie twórz go** — zepsułby stronę.

Kiedy kupisz domenę (np. `mszana.info`):

1. W repozytorium, **obok `index.html`** (w głównym folderze), utwórz plik **`CNAME`** (bez rozszerzenia).
2. W środku **jedna linia, sama domena**, np.:

   ```
   mszana.info
   ```

   (albo `www.mszana.info`, jeśli chcesz wersję z www). Bez `https://`, bez ukośnika, bez spacji.

3. U rejestratora domeny dodaj rekordy DNS:
   - **A** (domena główna): `185.199.108.153`, `185.199.109.153`, `185.199.110.153`, `185.199.111.153`
   - **CNAME** (www): `TWOJA_NAZWA.github.io`

4. Można też zamiast ręcznego pliku: **Settings → Pages → Custom domain** → wpisz domenę → GitHub utworzy CNAME sam.
5. Po ustawieniu włącz opcję **Enforce HTTPS** (po chwili GitHub wyda darmowy certyfikat).
