require 'application_system_test_case'

class InventoryFoodsTest < ApplicationSystemTestCase
  setup do
    @inventory_food = inventory_foods(:one)
  end

  test 'visiting the index' do
    visit inventory_foods_url
    assert_selector 'h1', text: 'Inventory foods'
  end

  test 'should create inventory food' do
    visit inventory_foods_url
    click_on 'New inventory food'

    click_on 'Create Inventory food'

    assert_text 'Inventory food was successfully created'
    click_on 'Back'
  end

  test 'should update Inventory food' do
    visit inventory_food_url(@inventory_food)
    click_on 'Edit this inventory food', match: :first

    click_on 'Update Inventory food'

    assert_text 'Inventory food was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Inventory food' do
    visit inventory_food_url(@inventory_food)
    click_on 'Destroy this inventory food', match: :first

    assert_text 'Inventory food was successfully destroyed'
  end
end
