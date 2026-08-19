create table if not exists public.page_views (
  id int primary key default 1,
  count bigint not null default 0,
  updated_at timestamptz default now()
);

insert into public.page_views (id, count) values (1, 0)
on conflict (id) do nothing;

alter table public.page_views enable row level security;

drop policy if exists "page_views_select" on public.page_views;
create policy "page_views_select" on public.page_views for select using (true);

drop policy if exists "page_views_insert" on public.page_views;
create policy "page_views_insert" on public.page_views for insert with check (true);

drop policy if exists "page_views_update" on public.page_views;
create policy "page_views_update" on public.page_views for update using (true);

grant select, insert, update on public.page_views to anon;

create or replace function public.increment_view()
returns bigint
language sql
security definer
set search_path = public
as $$
  update public.page_views set count = count + 1, updated_at = now() where id = 1 returning count;
$$;

grant execute on function public.increment_view() to anon;

select id, count from public.page_views;
