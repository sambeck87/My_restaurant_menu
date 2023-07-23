import defaultTheme from 'tailwindcss/defaultTheme'

export const content = [
  './public/*.html',
  './app/helpers/**/*.rb',
  './app/javascript/**/*.js',
  './app/views/**/*.{erb,haml,html,slim}'
]
export const theme = {
  fontFamily: {
    nunito: ['Nunito', 'sans-serif'],
    montserrat: ['Montserrat Alternates', 'sans-serif'],
    padauk: ['Padauk', 'sans-serif'],
  },
}
export const plugins = [
  require('@tailwindcss/forms'),
  require('@tailwindcss/aspect-ratio'),
  require('@tailwindcss/typography'),
  require('@tailwindcss/container-queries'),
]
