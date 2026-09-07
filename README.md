# olyve.studio

Static marketing site for Olyve (iOS). Served by nginx; deployed on Railway from this repo.

- `public/` — HTML, CSS, assets. Clean URLs: `/privacy` → `public/privacy.html`.
- `nginx/default.conf.template` — nginx config; `${PORT}` is injected by Railway.
- `Dockerfile` — `nginx:alpine` + the files above.
