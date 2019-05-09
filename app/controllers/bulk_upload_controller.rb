require "rake"


Rake::Task.clear # necessary to avoid tasks being loaded several times in dev mode

class BulkUploadController < ApplicationController
	Rake.application.rake_require  "tasks/bulk_upload_task"
	Rake::Task.define_task(:environment)

 	def index

 	end

 	def import
		Rake::Task["bulk_upload:from_csv"].reenable
		Rake.application.invoke_task("bulk_upload:from_csv")
 		redirect_to root_url, notice: "Roles imported"
 	end
  
end