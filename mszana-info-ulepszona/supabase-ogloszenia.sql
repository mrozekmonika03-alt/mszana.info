-- ================================================
-- OGŁOSZENIA MIESZKAŃCÓW — tabela (wspólna baza)
-- Jak użyć:
--   1. https://supabase.com/dashboard → projekt → SQL Editor → New query
--   2. Wklej całość → RUN (Ctrl+Enter)
--   3. Uruchom też supabase-cleanup-ogloszen.sql (sprzątanie + usuwanie)
--   4. Ogłoszenia ze strony będą wspólne dla wszystkich mieszkańców
-- ================================================

create table if not exists public.ogloszenia (
  id uuid primary key default gen_random_uuid(),
  cat text,
  title text not null,
  descr text default '',
  price text default '',
  place text default '',
  addr text default '',
  phone text default '',
  img text default '',
  ts bigint,
  created_at timestamptz not null default now()
);

create index if not exists ogloszenia_ts_idx on public.ogloszenia (ts desc);

alter table public.ogloszenia enable row level security;

drop policy if exists "ogloszenia_select" on public.ogloszenia;
create policy "ogloszenia_select" on public.ogloszenia for select using (true);

drop policy if exists "ogloszenia_insert" on public.ogloszenia;
create policy "ogloszenia_insert" on public.ogloszenia for insert with check (true);

grant select, insert on public.ogloszenia to anon;
