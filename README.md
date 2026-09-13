# Topotree Landing Page

Rails landing page for [Topotree](https://gumroad.com/l/topotree).

## Setup

```bash
bundle install
rails server
```

## Images needed in public/images/
- `icon.png` — app icon (128x128)
- `screenshot-treemap.png` — hero screenshot (full width treemap)
- `ss1.png` — scan screen
- `ss2.png` — treemap view
- `ss3.png` — sunburst/rings view
- `ss4.png` — delete confirmation with preview

## Deploy
Railway: connect repo, set RAILS_ENV=production, RAILS_MASTER_KEY

## Structure
Single page, no database needed.
PagesController#home → views/pages/home.html.erb
