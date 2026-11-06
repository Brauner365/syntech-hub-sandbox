-- Run this once in a NEW, separate Supabase project (not the one the live Hub uses).
-- It creates the only table the sandbox needs. Anyone with the sandbox link can read and edit notes in it, and nothing else.
create table if not exists public.hub_review_items (
  id text primary key,
  data jsonb not null,
  updated_at timestamptz not null default now()
);
alter table public.hub_review_items enable row level security;
create policy "sandbox read"   on public.hub_review_items for select to anon using (true);
create policy "sandbox add"    on public.hub_review_items for insert to anon with check (true);
create policy "sandbox change" on public.hub_review_items for update to anon using (true) with check (true);
create policy "sandbox remove" on public.hub_review_items for delete to anon using (true);
