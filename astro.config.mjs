import { defineConfig } from 'astro/config'
import starlight from '@astrojs/starlight'
import vercel from '@astrojs/vercel/serverless';


// https://astro.build/config
export default defineConfig({
  // output: 'server',
  // adapter: vercel({
  //   analytics: true,
  // }),
  integrations: [
    starlight({
      title: 'Design Patterns',
      social: {
        github: 'https://github.com/nseepana/dp'
      },
      head:[
        {
          tag: 'script',
          attrs: {
            'src': '/_vercel/insights/script.js',
            'data-feature': 'web-analytics',
            'defer': true,
          },
        },
      ],
      sidebar: [
        {
          "label": "Creational",
          "items": [
            {
              "label": "Abstract Factory",
              "link": "patterns/creational/abstract_factory/context/"
            },
            {
              "label": "Builder",
              "link": "patterns/creational/builder/context/"
            },
            {
              "label": "Factory",
              "link": "patterns/creational/factory/context/"
            },
            {
              "label": "Prototype",
              "link": "patterns/creational/prototype/context/"
            },
            {
              "label": "Singleton",
              "link": "patterns/creational/singleton/context/"
            },
            {
              "label": "Summary",
              "link": "patterns/creational/"
            }
          ]
        },
        {
          "label": "Structural",
          "items": [
            {
              "label": "Adapter",
              "link": "patterns/structural/adapter/context/"
            },
            {
              "label": "Bridge",
              "link": "patterns/structural/bridge/context/"
            },
            {
              "label": "Composite",
              "link": "patterns/structural/composite/context/"
            },
            {
              "label": "Decorator",
              "link": "patterns/structural/decorator/context/"
            },
            {
              "label": "Facade",
              "link": "patterns/structural/facade/context/"
            },
            {
              "label": "Flyweight",
              "link": "patterns/structural/flyweight/context/"
            },
            {
              "label": "Mixin",
              "link": "patterns/structural/mixin/context/"
            },
            {
              "label": "Proxy",
              "link": "patterns/structural/proxy/context/"
            },
            {
              "label": "Summary",
              "link": "patterns/structural/"
            }
          ]
        },
        {
          "label": "Behavioral",
          "items": [
            {
              "label": "Chain of Responsibility",
              "link": "patterns/behavioral/chain_of_responsibility/context/"
            },
            {
              "label": "Command",
              "link": "patterns/behavioral/command/context/"
            },
            {
              "label": "Interpreter",
              "link": "patterns/behavioral/interpreter/context/"
            },
            {
              "label": "Iterator",
              "link": "patterns/behavioral/iterator/context/"
            },
            {
              "label": "Mediator",
              "link": "patterns/behavioral/mediator/context/"
            },
            {
              "label": "Memento",
              "link": "patterns/behavioral/memento/context/"
            },

            {
              "label": "Observer",
              "link": "patterns/behavioral/observer/context/"
            },
            {
              "label": "State",
              "link": "patterns/behavioral/state/context/"
            },
            {
              "label": "Strategy",
              "link": "patterns/behavioral/strategy/context/"
            },
            {
              "label": "Template Method",
              "link": "patterns/behavioral/template_method/context/"
            },
            {
              "label": "Visitor",
              "link": "patterns/behavioral/visitor/context/"
            },
            {
              "label": "Summary",
              "link": "patterns/behavioral/"
            }
          ]
        },
      ],      
    })
  ],

  // Process images with sharp: https://docs.astro.build/en/guides/assets/#using-sharp
  image: { service: { entrypoint: 'astro/assets/services/sharp' } }
})
