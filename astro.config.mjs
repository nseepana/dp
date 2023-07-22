import { defineConfig } from 'astro/config';
import starlight from '@astrojs/starlight';

// https://astro.build/config
export default defineConfig({
  integrations: [
    starlight({
      title: 'Design Patterns',
      social: {
        github: 'https://github.com/withastro/starlight',
      },
      sidebar: [
        {
          label: 'Design Patterns',
          items: [
            // Each item here is one entry in the navigation menu.
            { label: 'Creational', link: '/designpatterns/creational/' },
            { label: 'Structural', link: '/designpatterns/structural/' },
            { label: 'Behavioral', link: '/designpatterns/behavioral/' },
          ],
        },

        {
          label: 'Reference',
          autogenerate: { directory: 'reference' },
        },
      ],
    }),
  ],

  // Process images with sharp: https://docs.astro.build/en/guides/assets/#using-sharp
  image: { service: { entrypoint: 'astro/assets/services/sharp' } },
});
