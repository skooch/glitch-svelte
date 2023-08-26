# glitch-svelte

Everything you need to build a Svelte project on [glitch.com](https://glitch.com), powered by [`create-svelte`](https://github.com/sveltejs/kit/tree/master/packages/create-svelte) and [Tailwind](https://tailwindcss.com/).

## Developing

Run `./glitch-dev.sh` if you're using the terminal on Glitch.

If you're developing in a different environment, install dependencies with `pnpm install`, start a development server:

```bash
pnpm run dev

# or start the server and open the app in a new browser tab
pnpm run dev -- --open
```

## Building

To create a production version of your app:

```bash
pnpm run build
```

Glitch will only run the production version by default, ensure you build your changes. You can run in development mode by changing the start command in `package.json` to `./glitch-dev.sh`