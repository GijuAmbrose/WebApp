require 'csv'    


class HomeController < ApplicationController

  def index
  end

  def upload;end

  def employees
    @employees = Employee.all.paginate(:page=>params[:page],per_page:5)
  end

  def import_file
    path = params[:csv_file]
    csv_text = File.read("/home/tech33/Downloads/#{path}")
    csv = CSV.parse(csv_text, headers: true)
    csv.each do |data|
      name = data["Name Prefix"]+data["First Name"]+data["Middle Initial"]+data["Last Name"]
      Employee.create!(emp_id: "TV-"+data["Emp ID"], name: name, gender: data["Gender"], email: data["E Mail"], dob: data["Date of Birth"])
    end
    redirect_to root_url, notice: "successfully created"
  end

end
