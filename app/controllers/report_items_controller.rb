class ReportItemsController < ApplicationController
  def new
    @report_item = ReportItem.new
  end

  def create
    @report_item = ReportItem.new(report_item_params)

    if @report_item.save
      #render :new, success: '登録が完了しました'
      #Rails04 redirect_toを参照
      flash.now[:success] = "登録が完了しました"
      render :new
    else
      flash.now[:danger] = "登録に失敗しました"
      render :new
    end
  end

  private
  def report_item_params
    params.require(:report_item).permit(:report_item_name)
  end

end
