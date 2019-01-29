require_relative '../scripts/lambdatest.rb'

describe "Sample ToDo List Functions" do
  it "Mark Done 2 items and add one in the TODO list" do
   itemName = 'Yey, Lets add it to list'

   @driver.get("https://lambdatest.github.io/sample-todo-app/" )

   #Click on First Checkbox
     @driver.find_element(:name, 'li1').click

     #Click on Second Checkbox
     @driver.find_element(:name, 'li2').displayed?

     #Enter item name
     @driver.find_element(:id, 'sampletodotext').send_keys itemName


     @driver.find_element(:id, 'addbutton').displayed?
     @driver.find_element(:id, 'addbutton').click

     # Verify Item added successfully
     textAddedItem = @driver.find_element(:css, "[class='list-unstyled'] li:nth-child(6) span").text
     expect(textAddedItem).to eq(itemName)
   end
end
