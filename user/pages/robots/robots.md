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
Disallow: /.github/
Disallow: /.phan/
Disallow: /assets/
Disallow: /backup/
Disallow: /bin/
Disallow: /cache/
Disallow: /logs/
Disallow: /system/
Disallow: /tests/
Disallow: /tmp/
Disallow: /user/
Disallow: /vendor/
Disallow: /webserver-configs/
Allow: /user/pages/
Allow: /user/themes/
Allow: /user/images/
Allow: /data/assets/
Allow: /
Allow: *.css$
Allow: *.js$
Allow: /system/*.js$

User-agent: AddSearchBot
Disallow: /

User-agent: AgentTimes
Disallow: /

User-agent: AI2Bot
Disallow: /

User-agent: AI2Bot-DeepResearchEval
Disallow: /

User-agent: Ai2Bot-Dolma
Disallow: /

User-agent: aiHitBot
Disallow: /

User-agent: AIWebIndex
Disallow: /

User-agent: amazon-kendra
Disallow: /

User-agent: amazon-QBusiness
Disallow: /

User-agent: Amazonbot
Disallow: /

User-agent: AmazonBuyForMe
Disallow: /

User-agent: Amzn-SearchBot
Disallow: /

User-agent: Amzn-User
Disallow: /

User-agent: Andibot
Disallow: /

User-agent: Anomura
Disallow: /

User-agent: anthropic-ai
Disallow: /

User-agent: ApifyBot
Disallow: /

User-agent: ApifyWebsiteContentCrawler
Disallow: /

User-agent: Applebot
Disallow: /

User-agent: Applebot-Extended
Disallow: /

User-agent: Aranet-SearchBot
Disallow: /

User-agent: atlassian-bot
Disallow: /

User-agent: Awario
Disallow: /

User-agent: AzureAI-SearchBot
Disallow: /

User-agent: bedrockbot
Disallow: /

User-agent: bigsur.ai
Disallow: /

User-agent: Bravebot
Disallow: /

User-agent: Brightbot
Disallow: /

User-agent: Brightbot 1.0
Disallow: /

User-agent: BuddyBot
Disallow: /

User-agent: Bytespider
Disallow: /

User-agent: CCBot
Disallow: /

User-agent: Channel3Bot
Disallow: /

User-agent: ChatGLM-Spider
Disallow: /

User-agent: ChatGPT Agent
Disallow: /

User-agent: ChatGPT-User
Disallow: /

User-agent: Claude-Code
Disallow: /

User-agent: Claude-SearchBot
Disallow: /

User-agent: Claude-User
Disallow: /

User-agent: Claude-Web
Disallow: /

User-agent: ClaudeBot
Disallow: /

User-agent: Cloudflare-AutoRAG
Disallow: /

User-agent: CloudVertexBot
Disallow: /

User-agent: Code
Disallow: /

User-agent: cohere-ai
Disallow: /

User-agent: cohere-training-data-crawler
Disallow: /

User-agent: Cotoyogi
Disallow: /

User-agent: CragCrawler
Disallow: /

User-agent: Crawl4AI
Disallow: /

User-agent: Crawlspace
Disallow: /

User-agent: Cursor
Disallow: /

User-agent: Datenbank Crawler
Disallow: /

User-agent: DeepSeekBot
Disallow: /

User-agent: Devin
Disallow: /

User-agent: Diffbot
Disallow: /

User-agent: DuckAssistBot
Disallow: /

User-agent: Echobot Bot
Disallow: /

User-agent: EchoboxBot
Disallow: /

User-agent: ExaBot
Disallow: /

User-agent: FacebookBot
Disallow: /

User-agent: facebookexternalhit
Disallow: /

User-agent: Factset_spyderbot
Disallow: /

User-agent: FirecrawlAgent
Disallow: /

User-agent: FriendlyCrawler
Disallow: /

User-agent: GeistHaus-PageFetcher
Disallow: /

User-agent: Gemini-Deep-Research
Disallow: /

User-agent: Google-Agent
Disallow: /

User-agent: Google-CloudVertexBot
Disallow: /

User-agent: Google-Extended
Disallow: /

User-agent: Google-Firebase
Disallow: /

User-agent: Google-Gemini-CLI
Disallow: /

User-agent: Google-NotebookLM
Disallow: /

User-agent: GoogleAgent-Mariner
Disallow: /

User-agent: GoogleAgent-URLContext
Disallow: /

User-agent: GoogleOther
Disallow: /

User-agent: GoogleOther-Image
Disallow: /

User-agent: GoogleOther-Video
Disallow: /

User-agent: GPTBot
Disallow: /

User-agent: HenkBot
Disallow: /

User-agent: iAskBot
Disallow: /

User-agent: iaskspider
Disallow: /

User-agent: iaskspider/2.0
Disallow: /

User-agent: IbouBot
Disallow: /

User-agent: ICC-Crawler
Disallow: /

User-agent: ImagesiftBot
Disallow: /

User-agent: imageSpider
Disallow: /

User-agent: img2dataset
Disallow: /

User-agent: ISSCyberRiskCrawler
Disallow: /

User-agent: kagi-fetcher
Disallow: /

User-agent: Kangaroo Bot
Disallow: /

User-agent: Kimi-User
Disallow: /

User-agent: KlaviyoAIBot
Disallow: /

User-agent: KunatoCrawler
Disallow: /

User-agent: laion-huggingface-processor
Disallow: /

User-agent: LAIONDownloader
Disallow: /

User-agent: LCC
Disallow: /

User-agent: LinerBot
Disallow: /

User-agent: Linguee Bot
Disallow: /

User-agent: LinkupBot
Disallow: /

User-agent: Manus-User
Disallow: /

User-agent: meta-externalagent
Disallow: /

User-agent: Meta-ExternalAgent
Disallow: /

User-agent: meta-externalfetcher
Disallow: /

User-agent: Meta-ExternalFetcher
Disallow: /

User-agent: meta-webindexer
Disallow: /

User-agent: MistralAI-User
Disallow: /

User-agent: MistralAI-User/1.0
Disallow: /

User-agent: Mozilla-Tabstack
Disallow: /

User-agent: MyCentralAIScraperBot
Disallow: /

User-agent: NagetBot
Disallow: /

User-agent: netEstate Imprint Crawler
Disallow: /

User-agent: newsai
Disallow: /

User-agent: NotebookLM
Disallow: /

User-agent: NovaAct
Disallow: /

User-agent: OAI-SearchBot
Disallow: /

User-agent: omgili
Disallow: /

User-agent: omgilibot
Disallow: /

User-agent: OpenAI
Disallow: /

User-agent: opencode
Disallow: /

User-agent: Operator
Disallow: /

User-agent: PanguBot
Disallow: /

User-agent: Panscient
Disallow: /

User-agent: panscient.com
Disallow: /

User-agent: Perplexity-User
Disallow: /

User-agent: PerplexityBot
Disallow: /

User-agent: PetalBot
Disallow: /

User-agent: PhindBot
Disallow: /

User-agent: Poggio-Citations
Disallow: /

User-agent: Poseidon Research Crawler
Disallow: /

User-agent: QualifiedBot
Disallow: /

User-agent: Querit-SearchBot
Disallow: /

User-agent: QueritBot
Disallow: /

User-agent: QuillBot
Disallow: /

User-agent: quillbot.com
Disallow: /

User-agent: SBIntuitionsBot
Disallow: /

User-agent: Scrapy
Disallow: /

User-agent: SemrushBot-OCOB
Disallow: /

User-agent: SemrushBot-SWA
Disallow: /

User-agent: Shap-User
Disallow: /

User-agent: ShapBot
Disallow: /

User-agent: Sidetrade indexer bot
Disallow: /

User-agent: Spider
Disallow: /

User-agent: TavilyBot
Disallow: /

User-agent: Terra Cotta
Disallow: /

User-agent: TerraCotta
Disallow: /

User-agent: Thinkbot
Disallow: /

User-agent: TikTokSpider
Disallow: /

User-agent: Timpibot
Disallow: /

User-agent: TongyiBot
Disallow: /

User-agent: Trae
Disallow: /

User-agent: TwinAgent
Disallow: /

User-agent: UseAI
Disallow: /

User-agent: VelenPublicWebCrawler
Disallow: /

User-agent: WARDBot
Disallow: /

User-agent: Webzio-Extended
Disallow: /

User-agent: webzio-extended
Disallow: /

User-agent: wpbot
Disallow: /

User-agent: WRTNBot
Disallow: /

User-agent: YaK
Disallow: /

User-agent: YandexAdditional
Disallow: /

User-agent: YandexAdditionalBot
Disallow: /

User-agent: YiyanBot
Disallow: /

User-agent: YouBot
Disallow: /

User-agent: ZanistaBot
Disallow: /