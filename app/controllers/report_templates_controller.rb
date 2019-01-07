class ReportTemplatesController < ApplicationController
  def new
    @report_template = ReportTemplate.new
  end

  def create
    @report_template = ReportTemplate.new(report_template_params)

    if @report_template.save
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
  def report_template_params
    params.require(:report_template).permit(:report_template_name)
  end

end
