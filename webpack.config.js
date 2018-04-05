
const path = require("path");
const HtmlWebpackPlugin = require("html-webpack-plugin")
const webpack = require("webpack")

module.exports = {
    mode: 'development',
    entry: ['./src/index.js','bootstrap'],
    output:{
        path: path.resolve(__dirname,"dist"),
        filename: "bundle.js"
    },
    module: {
        rules: [
            { 
              test: /\.js$/, 
              use: "babel-loader" 
            },
            {
              test: /\.css$/,
              use: ['style-loader','css-loader']
            }
            
        ]
    },
    plugins: [
        new HtmlWebpackPlugin({
            template: './src/index.html',
            hash: true
        }),
        new webpack.ProvidePlugin({
            riot: 'riot',
            $: 'jquery',
            jQuery: 'jquery',
            Popper: 'popper.js'
        })    
    ]
}