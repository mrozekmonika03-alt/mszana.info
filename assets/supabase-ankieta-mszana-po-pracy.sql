create table if not exists public.ankieta_mszana_po_pracy (
  id uuid primary key default gen_random_uuid(),
  plec text,
  wiek text,
  q1 text,
  q2 text,
  q3 text,
  q4 text,
  q5 text,
  q6 text,
  q7 text,
  q8 text,
  q9 text,
  ts bigint,
  created_at timestamptz not null default now()
);

alter table public.ankieta_mszana_po_pracy enable row level security;

drop policy if exists "ankieta_mszana_po_pracy_insert" on public.ankieta_mszana_po_pracy;
create policy "ankieta_mszana_po_pracy_insert" on public.ankieta_mszana_po_pracy for insert with check (true);

drop policy if exists "ankieta_mszana_po_pracy_select" on public.ankieta_mszana_po_pracy;
create policy "ankieta_mszana_po_pracy_select" on public.ankieta_mszana_po_pracy for select using (true);

grant insert, select on public.ankieta_mszana_po_pracy to anon;
