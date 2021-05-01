// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

const addIngredient = () => {
  const $addIngredient = document.getElementById('ingredient-add');
  if ($addIngredient) {
    const ingredientInputHTML = '<div class="line-ingredient"><input class="ingredient" placeholder="Ingredient" type="text" name="ingredient"> <input class="amount" placeholder="Amount" type="text" name="amount"> <input class="unit" placeholder="Unit" type="text" name="unit" id="unit"></div>';

    $addIngredient.addEventListener('click', () => {
      console.log(EventTarget)
      $addIngredient.insertAdjacentHTML('beforebegin', ingredientInputHTML)
    })
  }
}

document.addEventListener("turbolinks:load", () => {
  addIngredient();
});
