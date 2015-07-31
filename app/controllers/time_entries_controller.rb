class TimeEntriesController < ApplicationController
	def create
		e = Employee.find(params[:employee_id])
		e.time_entries.create(time_entry_params)
		redirect_to employee_path(e)
	end

	private

	def time_entry_params
		params.require(:time_entry).permit(:time, :account_id)
	end
end
