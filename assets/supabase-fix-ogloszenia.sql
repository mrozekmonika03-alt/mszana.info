-- NAPRAWA: ogłoszenia nie zapisują się (RLS violation)
-- Jak użyć: SQL Editor -> New query -> wklej całość -> RUN
-- Bezpieczne przy wielokrotnym uruchomieniu.

alter table public.ogloszenia enable row level security;

drop policy if exists "ogloszenia_select" on public.ogloszenia;
create policy "ogloszenia_select" on public.ogloszenia for select using (true);

drop policy if exists "ogloszenia_insert" on public.ogloszenia;
create policy "ogloszenia_insert" on public.ogloszenia for insert with check (true);

drop policy if exists "ogloszenia_update" on public.ogloszenia;
create policy "ogloszenia_update" on public.ogloszenia for update using (true);

drop policy if exists "ogloszenia_delete" on public.ogloszenia;
create policy "ogloszenia_delete" on public.ogloszenia for delete using (true);

grant select, insert, update, delete on public.ogloszenia to anon;
grant usage on schema public to anon;
