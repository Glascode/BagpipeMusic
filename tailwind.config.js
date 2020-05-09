const plugin = require('tailwindcss/plugin')

module.exports = {
  theme: {
    extend: {
      colors: {
        accent: '#00c888',
        gray: {
          '100': '#fafafa',
          '200': '#eaeaea',
          '300': '#aaa',
          '400': '#999',
          '500': '#888',
          '600': '#666',
          '700': '#444',
          '800': '#222',
          '900': '#111'
        }
      }
    }
  },
  variants: {
    margin: ['responsive', 'last']
  },
  plugins: [
    plugin(function ({ addUtilities }) {
      const containers = {
        '.container': {
          width: '90%',
          maxWidth: '900px',
          marginLeft: 'auto',
          marginRight: 'auto'
        },

        '.container-sm': {
          width: '90%',
          maxWidth: '640px',
          marginLeft: 'auto',
          marginRight: 'auto'
        }
      }

      addUtilities(containers, ['responsive'])
    })
  ]
}
