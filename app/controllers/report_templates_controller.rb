class ReportTemplatesController < ApplicationController
  def new
    @report_template = ReportTemplate.new
  end

  def create
    @report_template = ReportTemplate.new(report_template_params)

    if @report_template.save
      redirect_to new_report_template_path, success: "登録が完了しました"
    else
      redirect_to new_report_template_path, danger: "登録に失敗しました"
    end
  end

  private
  def report_template_params
    params.require(:report_template).permit(:report_template_name)
  end

end
