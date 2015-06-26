Given "there are some presentations in the database to be shown" do
	Presentation.create!(title: 'cats anonymous')
	Presentation.create!(title: 'such cat')
	Presentation.create!(title: 'many cats')
end

When "I vist the home page" do
	visit "/"
end

Then "I see the previously created presentations" do
	expect(page.body).to have_content 'cats anonymous'
	expect(page.body).to have_content 'such cat'
	expect(page.body).to have_content 'many cats'
end
