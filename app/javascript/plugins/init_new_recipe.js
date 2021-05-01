const addIngredient = () => {
  const $addIngredient = document.getElementById('ingredient-add');
  if ($addIngredient) {
    const ingredientInputHTML = '<div class="line-ingredient"><input class="ingredient" placeholder="Ingredient" type="text" name="ingredient[]" id="ingredient"> <input class="amount" placeholder="Amount" type="text" name="amount[]" id="amount"> <input class="unit" placeholder="Unit" type="text" name="unit[]" id="unit"></div>';

    $addIngredient.addEventListener('click', () => {
      $addIngredient.insertAdjacentHTML('beforebegin', ingredientInputHTML)
    })
  }
}

export { addIngredient };