# glitch-svelte

Everything you need to build a Svelte project on [glitch.com](https://glitch.com), powered by [`create-svelte`](https://github.com/sveltejs/kit/tree/master/packages/create-svelte) and [Tailwind](https://tailwindcss.com/).

## Remixing on Glitch

Glitch will attempt to run `npm install` despite the version of Node that Glitch uses being not new enough to support SvelteKit. Glitch will still run whatever is in `package.json`'s `start` field anyway afterwards, at which point we delete `node_modules`, enable `pnpm`, and install the correct version of Node. This means your first startup time will be longer than usual if your app doesn't have a production build. Subsequent launches will be faster after a build is completed.

Glitch uses docker containers of an old version of Ubuntu, which uses an old version of the Linux kernel and associated `glibc`, Node 16 is the newest version of node that will ever run on Glitch, unless they update their container.

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

Glitch will attempt to run the production built version by default, ensure you build your changes. If it can't find a production build, it will fall back to the development version. You can force it to always run in development mode by changing the start command in `package.json` to `./glitch-dev.sh`