const $addIngredient = document.getElementById('ingredient-add');
const $form = document.getElementsByClassName('form-simple');

const ingredientInputHTML = '<div class="line-ingredient"><input type="text" class="ingredient" name="ingredient" placeholder="Ingredient"><input type="text" class="amount" name="amount" placeholder="Amount"><input type="text" class="unit" name="unit" placeholder="Unit"></div>';

const addIngredient = () => $addIngredient.addEventListener('click', () => {
  $addIngredient.insertAdjacentHTML('beforebegin', ingredientInputHTML)
});
