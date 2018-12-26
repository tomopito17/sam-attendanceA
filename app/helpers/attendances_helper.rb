module AttendancesHelper
  def attendance_count
    Attendance.where(user_id: params[:id], attendance_date: Time.new(@first_day.year,@first_day.month).all_month).select("leaving_at").count
  end
end
