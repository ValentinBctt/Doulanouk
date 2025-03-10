const path = require('path');

module.exports = {
  entry: './app/javascript/packs/application.js', // Point d'entrée de votre application
  output: {
    path: path.resolve(__dirname, 'public/packs'), // Dossier de sortie
    filename: 'bundle.js', // Nom du fichier de sortie
  },
  module: {
    rules: [
      {
        test: /\.(js|jsx)$/, // Fichiers à traiter
        exclude: /node_modules/, // Exclure le dossier node_modules
        use: {
          loader: 'babel-loader', // Utiliser Babel pour transpiler le code
          options: {
            presets: ['@babel/preset-env', '@babel/preset-react'], // Utiliser les presets pour ES6+ et React
          },
        },
      },
    ],
  },
  resolve: {
    extensions: ['.js', '.jsx'], // Extensions à résoudre
  },
  devtool: 'source-map', // Générer des sourcemaps pour le débogage
};
