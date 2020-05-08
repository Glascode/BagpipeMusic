const plugin = require('tailwindcss/plugin')

module.exports = {
  theme: {
    colors: {
      accent: '#00c888',
      gray: {
        '100': '#fafafa',
        '200': '#eeeeee',
        '300': '#e0e0e0',
        '400': '#bdbdbd',
        '500': '#9e9e9e',
        '600': '#757575',
        '700': '#616161',
        '800': '#424242',
        '900': '#212121'
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
