module.exports = {
  entry: './compile.js',
  output: {
    filename: './compileDJS.js'
  },
  resolve: {
      extensions: ['', '.webpack.js', '.web.js', '.js', '.json']
  }
}
