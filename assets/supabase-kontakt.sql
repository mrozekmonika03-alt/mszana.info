create table if not exists public.kontakt_widget (
  id uuid primary key default gen_random_uuid(),
  imie text,
  nazwisko text,
  email text,
  wiadomosc text,
  ts bigint,
  created_at timestamptz not null default now()
);

alter table public.kontakt_widget enable row level security;

drop policy if exists "kontakt_widget_insert" on public.kontakt_widget;
create policy "kontakt_widget_insert" on public.kontakt_widget for insert with check (true);

drop policy if exists "kontakt_widget_select" on public.kontakt_widget;
create policy "kontakt_widget_select" on public.kontakt_widget for select using (true);

grant insert, select on public.kontakt_widget to anon;

select id, imie, nazwisko, email, created_at from public.kontakt_widget order by created_at desc;
