import { defineConfig } from 'astro/config'
import starlight from '@astrojs/starlight'
import sitemap from '@astrojs/sitemap'

// const siteAssets = "/site-asstes"
// https://astro.build/config
export default defineConfig({
  // output: 'server',
  // adapter: vercel({
  //   analytics: true,
  // }),
  site: 'https://dp.tamphus.com/',
  integrations: [
    // ref: https://docs.astro.build/en/guides/integrations-guide/sitemap/
    sitemap({
      changefreq: 'weekly',
      priority: 0.7,
      lastmod: new Date()
    }),
    starlight({
      title: 'Design Patterns',
      social: {
        github: 'https://github.com/nseepana/dp'
      },
      head: [
        {
          tag: 'script',
          attrs: {
            'src': '/_vercel/insights/script.js',
            'data-feature': 'web-analytics',
            'defer': true
          }
        },
        {
          tag: 'meta',
          attrs: { property: 'og:title', content: 'Design Patterns' }
        },
        {
          tag: 'meta',
          attrs: { property: 'og:description', content: 'Design Patterns' }
        },
        {
          tag: 'meta',
          attrs: { property: 'robots', content: 'index, follow' }
        },
        {
          tag: 'meta',
          attrs: { property: 'keywords', content: 'Design Patterns,Design Patterns real world scenarios, dp tamphus, design patterns tamphus, chatGPT design patterns, naresh design patterns,Software Design Patterns,Object-Oriented Design Patterns,Creational Patterns,Structural Patterns,Behavioral Patterns,Gang of Four Patterns,Singleton Pattern,Factory Pattern,Observer Pattern,Strategy Pattern,Adapter Pattern,Decorator Pattern,MVC Pattern (Model-View-Controller),Abstract Factory Pattern,Template Method Pattern,Command Pattern,Prototype Pattern,Mediator Pattern,Composite Pattern,Modern Design Patterns,Design Patterns in Java, C++, Python,Design Patterns for Web Development,Design Patterns for Beginners,Design Patterns for Experienced Developers,Design Patterns Cheat Sheet,Design Patterns Examples and Implementations,Best Practices for Design Patterns' }
        },
        {
          tag: 'link',
          attrs: {
            rel: 'shortcut icon',
            href: '/assets/favicon.ico',
            type: 'image/svg+xml'
          }
        },

        {
          tag: 'link',
          attrs: { rel: 'apple-touch-icon', sizes: '57x57', href: '/assets/apple-icon-57x57.png' }
        },
        {
          tag: 'link',
          attrs: { rel: 'apple-touch-icon', sizes: '60x60', href: '/assets/apple-icon-60x60.png' }
        },
        {
          tag: 'link',
          attrs: { rel: 'apple-touch-icon', sizes: '72x72', href: '/assets/apple-icon-72x72.png' }
        },
        {
          tag: 'link',
          attrs: { rel: 'apple-touch-icon', sizes: '76x76', href: '/assets/apple-icon-76x76.png' }
        },
        {
          tag: 'link',
          attrs: { rel: 'apple-touch-icon', sizes: '114x114', href: '/assets/apple-icon-114x114.png' }
        },
        {
          tag: 'link',
          attrs: { rel: 'apple-touch-icon', sizes: '120x120', href: '/assets/apple-icon-120x120.png' }
        },
        {
          tag: 'link',
          attrs: { rel: 'apple-touch-icon', sizes: '144x144', href: '/assets/apple-icon-144x144.png' }
        },
        {
          tag: 'link',
          attrs: { rel: 'apple-touch-icon', sizes: '152x152', href: '/assets/apple-icon-152x152.png' }
        },
        {
          tag: 'link',
          attrs: { rel: 'apple-touch-icon', sizes: '180x180', href: '/assets/apple-icon-180x180.png' }
        },
        {
          tag: 'link',
          attrs: { rel: 'icon', type: 'image/png', sizes: '192x192', href: '/assets/android-icon-192x192.png' }
        },
        {
          tag: 'link',
          attrs: { rel: 'icon', type: 'image/png', sizes: '32x32', href: '/assets/favicon-32x32.png' }
        },
        {
          tag: 'link',
          attrs: { rel: 'icon', type: 'image/png', sizes: '96x96', href: '/assets/favicon-96x96.png' }
        },
        {
          tag: 'link',
          attrs: { rel: 'icon', type: 'image/png', sizes: '16x16', href: '/assets/favicon-16x16.png' }
        },
        {
          tag: 'link',
          attrs: { rel: 'manifest', href: '/assets/manifest.json' }
        },
        {
          tag: 'meta',
          attrs: { name: 'msapplication-TileColor', content: '#ffffff' }
        },
        {
          tag: 'meta',
          attrs: { name: 'msapplication-TileImage', content: '/assets/ms-icon-144x144.png' }
        },
        {
          tag: 'meta',
          attrs: { name: 'theme-color', content: '#ffffff' }
        },

        // {
        //   tag: 'meta',
        //   attrs: { property: 'og:image', content: 'Design Patterns' },
        // },        
        {
          tag: 'meta',
          attrs: { property: 'og:locale', content: 'en_US' }
        },
        {
          tag: 'meta',
          attrs: { property: 'language', content: 'english' }
        }


      ],
      sidebar: [
        {
          'label': 'Creational',
          'items': [
            {
              'label': 'Abstract Factory',
              'link': 'patterns/creational/abstract_factory/context/'
            },
            {
              'label': 'Builder',
              'link': 'patterns/creational/builder/context/'
            },
            {
              'label': 'Factory',
              'link': 'patterns/creational/factory/context/'
            },
            {
              'label': 'Prototype',
              'link': 'patterns/creational/prototype/context/'
            },
            {
              'label': 'Singleton',
              'link': 'patterns/creational/singleton/context/'
            },
            {
              'label': 'Summary',
              'link': 'patterns/creational/'
            }
          ]
        },
        {
          'label': 'Structural',
          'items': [
            {
              'label': 'Adapter',
              'link': 'patterns/structural/adapter/context/'
            },
            {
              'label': 'Bridge',
              'link': 'patterns/structural/bridge/context/'
            },
            {
              'label': 'Composite',
              'link': 'patterns/structural/composite/context/'
            },
            {
              'label': 'Decorator',
              'link': 'patterns/structural/decorator/context/'
            },
            {
              'label': 'Facade',
              'link': 'patterns/structural/facade/context/'
            },
            {
              'label': 'Flyweight',
              'link': 'patterns/structural/flyweight/context/'
            },
            {
              'label': 'Mixin',
              'link': 'patterns/structural/mixin/context/'
            },
            {
              'label': 'Proxy',
              'link': 'patterns/structural/proxy/context/'
            },
            {
              'label': 'Summary',
              'link': 'patterns/structural/'
            }
          ]
        },
        {
          'label': 'Behavioral',
          'items': [
            {
              'label': 'Chain of Responsibility',
              'link': 'patterns/behavioral/chain_of_responsibility/context/'
            },
            {
              'label': 'Command',
              'link': 'patterns/behavioral/command/context/'
            },
            {
              'label': 'Interpreter',
              'link': 'patterns/behavioral/interpreter/context/'
            },
            {
              'label': 'Iterator',
              'link': 'patterns/behavioral/iterator/context/'
            },
            {
              'label': 'Mediator',
              'link': 'patterns/behavioral/mediator/context/'
            },
            {
              'label': 'Memento',
              'link': 'patterns/behavioral/memento/context/'
            },

            {
              'label': 'Observer',
              'link': 'patterns/behavioral/observer/context/'
            },
            {
              'label': 'State',
              'link': 'patterns/behavioral/state/context/'
            },
            {
              'label': 'Strategy',
              'link': 'patterns/behavioral/strategy/context/'
            },
            {
              'label': 'Template Method',
              'link': 'patterns/behavioral/template_method/context/'
            },
            {
              'label': 'Visitor',
              'link': 'patterns/behavioral/visitor/context/'
            },
            {
              'label': 'Summary',
              'link': 'patterns/behavioral/'
            }
          ]
        }
      ]
    })
  ],

  // Process images with sharp: https://docs.astro.build/en/guides/assets/#using-sharp
  image: { service: { entrypoint: 'astro/assets/services/sharp' } }
})
