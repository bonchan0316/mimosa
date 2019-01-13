class ReportsController < ApplicationController
  def new
    @report = Report.new
    @report.report_details.build
  end

  def create
    @report = Report.new(report_params)
    if @report.save
      redirect_to root_path, success: "登録が完了しました"
    else
      redirect_to new_report_path, danger: "登録に失敗しました"
    end
  end

  private
  def report_params
    params.require(:report).permit(:user_id, report_details_attributes: [:id, :report_item_id, :report_body])
  end

end
