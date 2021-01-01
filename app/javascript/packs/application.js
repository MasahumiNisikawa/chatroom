// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


//Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
// create a new folder at
// app/javascript/stylesheets
// we will then put our stylesheets in here and they will be managed by webpack
// create new file
// app/javascript/stylesheets/application.scss
// inside the file add line
import "bootstrap"
// in file app/javascript/packs/application.js, at bottomm of the file, add:
import "../application"

