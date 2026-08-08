-- ================================================
-- SPRZĄTANIE + UPRAWNIENIA DLA OGŁOSZEŃ
-- Jak użyć:
--   1. https://supabase.com/dashboard → projekt → SQL Editor → New query
--   2. Wklej całość → RUN (Ctrl+Enter)
--   3. Usunie testowe ogłoszenia i da przyciskowi "usuń" moc usuwania z chmury
-- ================================================

-- 1) Usuń testowe / śmieciowe ogłoszenia
delete from public.ogloszenia
where title ilike 'Test%' or title ilike '%test%' or cat = 'test' or cat = 'sprzedam' and title ilike 'Test%';

-- 2) Uprawnienie DELETE dla roli anonimowej (żeby „🗑️ Usuń” działało w chmurze)
alter table public.ogloszenia enable row level security;

drop policy if exists "ogloszenia_delete" on public.ogloszenia;
create policy "ogloszenia_delete" on public.ogloszenia for delete using (true);

grant delete on public.ogloszenia to anon;

-- 3) Kontrola: pokaż co zostało w ogłoszeniach
select id, title, cat, place from public.ogloszenia order by ts desc nulls last limit 50;
