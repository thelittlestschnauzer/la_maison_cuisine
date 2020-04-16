// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("local-time").start()

window.Rails = Rails

import 'bootstrap'
import 'data-confirm-modal'

$(document).on("turbolinks:load", () => {
  $('[data-toggle="tooltip"]').tooltip()
  $('[data-toggle="popover"]').popover()
})

const Uppy = require('@uppy/core')
const Dashboard = require('@uppy/dashboard')
const ActiveStorageUpload = require('@excid3/uppy-activestorage-upload')

require('@uppy/core/dist/style.css')
require('@uppy/dashboard/dist/style.css')

document.addEventListener('turbolinks:load', () => {
  document.querySelectorAll('[data-uppy]'),forEach(element => setupUppy(element)) 
})


function setupUppy(element) {
  let trigger = element.querySelector('[data-behavior="uppy-trigger"]')
  let form = element.closest('form')
  let direct_upload_url = document.querySelector("meta[name='direct_upload_url]").getAttribute("content")
  let field_name = element.dataset.uppy 

  trigger.addEventListener("click", (event) => event.preventDefault())

  let uppy = Uppy({
    autoProceed: true,
    allowMultipleUploads: false, 
    logger: Uppy.debugLogger 
  })

  uppy.use(ActiveStorageUpload, {
    directUploadUrl: direct_upload_url
  })

  uppy.use(Dashboard, {
    trigger: trigger,
    closeAfterFinish: true,
  })

  uppy.on('complete', (result) => {
    console.log(result)
  })
}
// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
