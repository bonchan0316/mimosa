class ReportItemsController < ApplicationController
  def new
    @report_item = ReportItem.new
  end

  def create
    @report_item = ReportItem.new(report_item_params)

    if @report_item.save
      redirect_to new_report_item_path, success: "登録が完了しました"
    else
      redirect_to new_report_item_path, danger: "登録に失敗しました"
    end
  end

  private
  def report_item_params
    params.require(:report_item).permit(:report_item_name)
  end

end
