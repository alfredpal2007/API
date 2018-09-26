class ReportsController < ApplicationController
    def index
      @reports=Report.all
      puts @reports
      render json: @reports, status: :ok
    end

    def create
        @report=Report.create(params.permit(:usuario,:reporte,:foto,:direccion,:latitud,:longitud,:created_at,:updated_at))
        puts "inicio"
        puts params
        puts "fin"
        render json: @report,status: :created
    end

end
