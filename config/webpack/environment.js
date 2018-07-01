const { environment } = require('@rails/webpacker')
const { VueLoaderPlugin } = require('vue-loader')
const vue =  require('./loaders/vue')
const webpack = require('webpack')

environment.plugins.append('VueLoaderPlugin', new VueLoaderPlugin())
environment.plugins.prepend( // Webpacker 3.3.0 以降は set ではなく prepend を使用する
  'Provide',
  new webpack.ProvidePlugin({
    jQuery: 'jquery/dist/jquery',
    Popper: 'popper.js/dist/popper'
  })
)
environment.loaders.append('vue', vue)
module.exports = environment
