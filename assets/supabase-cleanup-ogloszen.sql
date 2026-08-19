delete from public.ogloszenia
where title ilike 'Test%' or title ilike '%test%' or cat = 'test' or cat = 'sprzedam' and title ilike 'Test%';

alter table public.ogloszenia enable row level security;

drop policy if exists "ogloszenia_delete" on public.ogloszenia;
create policy "ogloszenia_delete" on public.ogloszenia for delete using (true);

grant delete on public.ogloszenia to anon;

select id, title, cat, place from public.ogloszenia order by ts desc nulls last limit 50;
