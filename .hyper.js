// Future versions of Hyper may add additional config options,
// which will not automatically be merged into this file.
// See https://hyper.is#cfg for all currently supported options.

module.exports = {
  config: {
    // choose either `'stable'` for receiving highly polished,
    // or `'canary'` for less polished but more frequent updates
    updateChannel: 'canary',

    // default font size in pixels for all tabs
    fontSize: 13,

    // font family with optional fallbacks
    fontFamily: 'Hasklig',

    // default font weight: 'normal' or 'bold'
    fontWeight: 'normal',

    // font weight for bold characters: 'normal' or 'bold'
    fontWeightBold: 'bold',

    // line height as a relative unit
    lineHeight: 1,

    // letter spacing as a relative unit
    letterSpacing: 0,

    // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
    cursorColor: 'rgba(248,28,229,0.8)',

    // terminal text color under BLOCK cursor
    cursorAccentColor: '#000',

    // `'BEAM'` for |, `'UNDERLINE'` for _, `'BLOCK'` for █
    cursorShape: 'BLOCK',

    // set to `true` (without backticks and without quotes) for blinking cursor
    cursorBlink: false,

    // color of the text
    foregroundColor: '#E6E6E6',

    // terminal background color
    // opacity is only supported on macOS
    backgroundColor: 'rgba(0,0,0,0.3)',

    // terminal selection color
    selectionColor: 'rgba(248,28,229,0.3)',

    // border color (window, tabs)
    borderColor: '#333',

    // custom CSS to embed in the main window
    css: ``,

    // custom CSS to embed in the terminal window
    termCSS: '',

    // if you're using a Linux setup which show native menus, set to false
    // default: `true` on Linux, `true` on Windows, ignored on macOS
    showHamburgerMenu: '',

    // set to `false` (without backticks and without quotes) if you want to hide the minimize, maximize and close buttons
    // additionally, set to `'left'` if you want them on the left, like in Ubuntu
    // default: `true` (without backticks and without quotes) on Windows and Linux, ignored on macOS
    showWindowControls: '',

    // custom padding (CSS format, i.e.: `top right bottom left`)
    padding: '12px 14px',

    // the full list. if you're going to provide the full color palette,
    // including the 6 x 6 color cubes and the grayscale map, just provide
    // an array here instead of a color map object
    colors: {
      black: '#292A2B',
      red: '#FF2C6D',
      green: '#19f9d8',
      yellow: '#FFB86C',
      blue: '#45A9F9',
      magenta: '#FF75B5',
      cyan: '#6FC1FF',
      white: '#FFFFFF',
      orange: '#B084EB',
      lightBlack: '#686868',
      lightRed: '#FF2C6D',
      lightGreen: '#19f9d8',
      lightYellow: '#ffcc95',
      lightBlue: '#6FC1FF',
      lightMagenta: '#FF9AC1',
      lightCyan: '#6FC1FF',
      lightWhite: '#FFFFFF',
    },

    shell: '/bin/zsh',
    shellArgs: ['--login'],

    // for environment variables
    env: {},

    // set to `false` for no bell
    bell: false,

    // if `true` (without backticks and without quotes), selected text will automatically be copied to the clipboard
    copyOnSelect: false,

    // if `true` (without backticks and without quotes), hyper will be set as the default protocol client for SSH
    defaultSSHApp: true,
  },

  plugins: [],

  // in development, you can create a directory under
  // `~/.hyper_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: [],

  keymaps: {},
};
