---
# see https://learn.getgrav.org/17/cookbook/general-recipes#display-different-robots-
routes:
  default: /robots.txt
process:
  markdown: false
dev:
  - 'User-agent: *'
  - 'Disallow: /'
---
User-agent: *
Disallow: /backup/
Disallow: /bin/
Disallow: /cache/
Disallow: /grav/
Disallow: /logs/
Disallow: /system/
Disallow: /vendor/
Disallow: /user/
Allow: /user/pages/
Allow: /user/themes/
Allow: /user/images/
Allow: /data/assets/
Allow: /
Allow: *.css$
Allow: *.js$
Allow: /system/*.js$