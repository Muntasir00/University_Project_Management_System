// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require jquery
//= require jquery_ujs
//= require materialize
//= require_tree .

import "@hotwired/turbo-rails"
import "controllers"
// $(document).on('turbolinks:load',function(){
//     $(".dropdown-trigger").dropdown();
// })


import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    $(".dropdown-trigger").dropdown();
  }
}
