const { environment } = require('@rails/webpacker')


const webpack = require('webpack')
environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery'
  })
)

const aliasConfig = {
    'd3': 'd3/dist/d3.js'
  };
  
  environment.config.set('resolve.alias', aliasConfig);

module.exports = environment

