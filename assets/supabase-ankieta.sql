create table if not exists public.ankieta_fundusz (
  id uuid primary key default gen_random_uuid(),
  solectwo text,
  priorytety jsonb,
  pomysl text,
  zebranie text,
  ts bigint,
  created_at timestamptz not null default now()
);

alter table public.ankieta_fundusz enable row level security;

drop policy if exists "ankieta_fundusz_insert" on public.ankieta_fundusz;
create policy "ankieta_fundusz_insert" on public.ankieta_fundusz for insert with check (true);

drop policy if exists "ankieta_fundusz_select" on public.ankieta_fundusz;
create policy "ankieta_fundusz_select" on public.ankieta_fundusz for select using (true);

grant insert, select on public.ankieta_fundusz to anon;

select id, solectwo, priorytety, zebranie, created_at from public.ankieta_fundusz order by created_at desc;
