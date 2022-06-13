/** @type {import('tailwindcss').Config} */
const path = require('node:path');

module.exports = {
  content: [path.join(__dirname, "templates/**/*.html")],
  theme: {
    extend: {},
  },
  plugins: [],
}
