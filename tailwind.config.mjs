/** @type {import('tailwindcss').Config} */
export default {
	content: ['./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}'],
	theme: {
		extend: {
			colors: {
				bgPrimary: '#fcfffc',
				textPrimary: '#01161e',
				dark: {
					backgroundColor: '#01161e',
					textPrimary: '#eff6e0',
				}
			},
		},
	},
	plugins: [],
}
