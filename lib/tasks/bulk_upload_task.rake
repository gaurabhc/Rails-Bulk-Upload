namespace :bulk_upload do
	require 'csv'
	desc ""
	task :from_csv => :environment do 

	csv_text = File.read('/home/mbeanland@v.com/workspace/Project1/test.csv')
	csv = CSV.parse(csv_text, :headers => true, skip_blanks: true)

	csv.each_with_index do |row, i|
		u = User.new()
		u.id = row[0]
		u.name = row[1]
		u.email = row[2]
		u.created_at = Time.now
		u.balance = 0
		u.save()
	end
	end
end
