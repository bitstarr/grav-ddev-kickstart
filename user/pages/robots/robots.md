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

User-agent: AdsBot-Google
User-agent: Amazonbot
User-agent: anthropic-ai
User-agent: Applebot
User-agent: AwarioRssBot
User-agent: AwarioSmartBot
User-agent: Bytespider
User-agent: CCBot
User-agent: ChatGPT-User
User-agent: ClaudeBot
User-agent: Claude-Web
User-agent: cohere-ai
User-agent: DataForSeoBot
User-agent: FacebookBot
User-agent: Google-Extended
User-agent: GoogleOther
User-agent: GPTBot
User-agent: ImagesiftBot
User-agent: magpie-crawler
User-agent: omgili
User-agent: omgilibot
User-agent: peer39_crawler
User-agent: peer39_crawler/1.0
User-agent: PerplexityBot
User-agent: Seekr
User-agent: YouBot
Disallow: /