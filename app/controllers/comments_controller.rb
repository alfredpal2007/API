class CommentsController < ApplicationController

    def index
        report=Report.find(params[:report_id])
        render json: report.comments, status: :ok
      end




end
