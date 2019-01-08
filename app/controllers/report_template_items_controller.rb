class ReportTemplateItemsController < ApplicationController
  def new
    @report_template_item = ReportTemplateItem.new
  end

  def create
    report_template = ReportTemplate.find_by(report_template_name: params[:report_template_name])
    report_item = ReportItem.find_by(report_item_name: params[:report_item_name])

    if report_template.nil? || report_item.nil?
      redirect_to new_report_template_item_path, danger: "登録に失敗しました（report_templateまたはreport_itemが見つかりません）"
    else
      @report_template_item = ReportTemplateItem.new
      @report_template_item.report_template_id = report_template.id
      @report_template_item.report_item_id = report_item.id

      if @report_template_item.save
        redirect_to new_report_template_item_path, success: "登録が完了しました"
      else
        redirect_to new_report_template_item_path, danger: "登録に失敗しました"
      end
    end
  end

  def index
    @report_template_items = ReportTemplateItem.all
  end

  def show
    @report_template_item = ReportTemplateItem.find_by(params[:id])
  end

end
