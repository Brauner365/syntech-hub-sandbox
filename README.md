# Syntech Hub sandbox

A review copy of Syntech Hub with sample data only. No real candidates, clients or Atlas records, and no connection to Atlas, Lusha, People Data Labs or the live Hub.

Reviewers can add notes, draw with a pen, box or arrow, move and delete anything, and undo. The tools are bottom right.

## Put it live on GitHub Pages

1. On github.com, create a new repository, for example `syntech-hub-sandbox`. Private is fine on a paid plan; on a free plan Pages needs it to be public.
2. Upload `index.html` (drag it onto the repository page and press **Commit changes**).
3. Go to **Settings → Pages**. Under **Build and deployment**, choose **Deploy from a branch**, branch `main`, folder `/ (root)`, then **Save**.
4. After a minute the address appears at the top of that page, for example `https://<your-username>.github.io/syntech-hub-sandbox/`. Send that link.

Without step 5 each reviewer's notes stay in their own browser; they press **Copy all for Steve** in the Notes list and email it.

## Optional: shared notes everyone sees

5. Create a **new, separate** Supabase project (do not use the live Hub's project). In its **SQL editor**, run `setup.sql`.
6. In that project, go to **Project Settings → API keys** and copy the **Project URL** and the **publishable** key (starts `sb_publishable_`). Never use the secret or service role key.
7. In `index.html`, find `window.RV_CONFIG = { url: "", key: "" };`, paste the two values in, and commit. Notes now sync between everyone with the link every few seconds.

## For V20

Ask Claude to read the notes: either paste the copied text, or give it access to the sandbox Supabase project.
