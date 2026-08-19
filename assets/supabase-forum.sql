create table if not exists public.forum_threads (
  id uuid primary key default gen_random_uuid(),
  cat_id text not null,
  sub text,
  place text default '',
  title text not null,
  content text not null,
  author text default '',
  date text default '',
  likes integer not null default 0,
  replies jsonb not null default '[]'::jsonb,
  ts bigint,
  created_at timestamptz not null default now()
);

create index if not exists forum_threads_ts_idx on public.forum_threads (ts desc);

alter table public.forum_threads enable row level security;

drop policy if exists "forum_threads_select" on public.forum_threads;
create policy "forum_threads_select" on public.forum_threads for select using (true);

drop policy if exists "forum_threads_insert" on public.forum_threads;
create policy "forum_threads_insert" on public.forum_threads for insert with check (true);

drop policy if exists "forum_threads_update" on public.forum_threads;
create policy "forum_threads_update" on public.forum_threads for update using (true);

grant select, insert, update on public.forum_threads to anon;
grant usage on schema public to anon;
