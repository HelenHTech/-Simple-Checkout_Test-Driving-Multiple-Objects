Makers - Simple Checkout Challenge
 
Write the code for a supermarket checkout that can calculate the price of a number of items. Each item should be priced individually, and the checkout should be able to scan them in any order.
 
 
User story 1
As a shopper
So I know how much an item costs
I would like to be able to see its price
 
 
Unit Test
 it '#price - See price of items' do
   expect(subject.check_price(:cheese)).to eq(700)
 end
 
 
Add global instance of checkout to spec doc - ‘let(:checkout) { Checkout.new }’ -  to ensure DRY
Create Checkout Class
Create a method for checking item price with one parameter, and return price for chosen item
Define a hash with a list of items with prices in initialise method
 
 
 
 
User story 2
As a shopper
So that I can buy an item
I would like to be able to scan items at the checkout
 
Unit Test
 it '#scan_item - See which items have been scanned at checkout' do
   expect(subject.scan([:cheese, :tea])).to eq([:cheese, :tea])
 end
 
Define an array for the checkout storage - and add in initialize method, and attr_reader
Define method push each item to the checkout storage array
 

User story 3
As a shopper
So that I know how much to pay
I would like to be able to see a total for all scanned items
 
Unit Test
 
 it '#total for 2 scanned items' do
   subject.scan([:cheese, :tea])
   expect(subject.total_price).to eq(950)
 end
 
 
When an item is scanned, it should add the item to the checkout storage array, and add the cost to a total accumulator
Define total variable in initialize method
Return total
 
 
 
 
User story 4
As a shopper
So that I know how much to pay
I would like to see all prices correctly formatted (£xx.xx)
 
Unit Test
 it '#total for all scanned items' do
   subject.scan([:cheese, :tea, :bacon, :sausages])
   expect(subject.total_price).to eq("£1.85")
 end
 
 
Show all amounts using the correct format by ensuring 2 decimals places are met and currency format
