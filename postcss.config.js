module.exports = {
  "plugins": [
    require('postcss-import')(),
    require('tailwindcss')('./app/javascript/src/tailwind.js'),
    require('postcss-cssnext')(),
  ]
}
