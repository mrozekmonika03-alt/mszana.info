# Mszana INFO 🏘️

**Portal + Forum Mieszkańców Gminy Mszana** — niezależna strona mieszkańców wsi **Mszana, Połomia i Gogołowa**.

> Grupa FB: **Mszana – Przejrzysta Gmina & Sprawy Mieszkańców**

## Co jest na stronie

- 📰 **Aktualności** — lokalne sprawy (remonty dróg, sesje Rady Gminy, fundusz sołecki)
- 🏛️ **Komisje i sesje Rady Gminy** — osobne sekcje z porządkami obrad i linkami do BIP
- 👋 **O nas** — informacje o grupie FB „Mszana – Przejrzysta Gmina & Sprawy Mieszkańców” i zasady
- 📢 **Ogłoszenia** — kupię/sprzedam/oddam/usługi (dane w chmurze Supabase + tryb offline)
- 💬 **Forum mieszkańców** — kategorie, głosowanie 👍, komentarze (dane w localStorage)
- ⚠️ **Zasady grupy** — regulamin obowiązujący wszystkich
- 🎬 **Wideo** — Taneczny Workout Cardio w rytmie hitów Sanah (fragment 7:00–9:30)
- 🗺️ **Mapa + sołtysi** — ważne miejsca i kontakty

## Technologie

- Czysty **HTML + Tailwind CSS** (CDN) + Vanilla JS — zero builda
- Grafiki lokalne w `assets/`
- Ogłoszenia: **Supabase** (opcjonalnie — bez kluczy działa w trybie offline)

## Wdrożenie na GitHub Pages

1. Utwórz repozytorium na GitHub (np. `mszana-info`).
2. Wrzuć **zawartość tego folderu** (index.html, assets/, artykuly/, .nojekyll) do repozytorium (branch `main`).
3. GitHub → **Settings → Pages** → Source: **Deploy from a branch** → `main` → `/ (root)` → **Save**.
4. Po ~1 min strona będzie pod adresem:
   - `https://<twoja-nazwa>.github.io/<nazwa-repo>/` — dla zwykłego repo,
   - `https://<twoja-nazwa>.github.io/` — jeśli repo nazywa się `<twoja-nazwa>.github.io`.

> ⚠️ Linki w serwisie są **względne** — działają w obu wariantach.
> ✅ Tagi `og:url` / `og:image` są już ustawione na **https://mszana.info/**.
> ⚠️ Wgrywaj **całą zawartość** folderu (index.html + assets/ + artykuly/ + CNAME + .nojekyll) — inaczej grafiki i artykuły zwrócą 404.

## Struktura

```
├── index.html          ← strona główna (cała aplikacja)
├── artykuly/           ← podstrony artykułów
├── assets/             ← grafiki (herb, favicon, baner OG, zdjęcia)
├── .nojekyll           ← wymagane przez GitHub Pages
└── JAK-WDROZYC.md      ← szczegółowa instrukcja
```
