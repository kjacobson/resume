module JobsHelper
	def get_month(start_date,short = false)
		month = ""
		case start_date
			when 0
				month = "Present"
			when 1
				month = "January"
			when 2
				month = "February"
			when 3
				month = "March"
			when 4
				month = "April"
			when 5
				month = "May"
			when 6
				month = "June"
			when 7
				month = "July"
			when 8
				month = "August"
			when 9
				month = "September"
			when 10
				month = "October"
			when 11
				month = "November"
			when 12
				month = "December"
		end

		if short
			if start_date == 0
				month = month[0..3]
			else
				month = month[0..2]
			end
		end

		return month
	end

	def sorting_href(column,order_by,direction)
		new_direction = direction
		if order_by == column
			if (direction == "DESC")
				new_direction = "ASC"
			else
				new_direction = "DESC"	
			end
		end
		return "?order_by=" + column + "&direction=" + new_direction
	end
end
