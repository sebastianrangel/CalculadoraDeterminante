class CalculatorController < ApplicationController
    require 'matrix'
  
    def index
      @determinant = flash[:determinant]
    end
  
    def calculate
      matrix_input = params[:matrix]
      matrix = matrix_input.split("\n").map { |row| row.split(' ').map(&:to_i) }
      
      puts matrix.inspect # Imprime la matriz en la consola para debugging
      
      @determinant = calculate_determinant(matrix)
      flash[:determinant] = @determinant
      redirect_to calculator_index_path
    end
  
    private
  
    def calculate_determinant(matrix)
      matrix = Matrix.rows(matrix)
      determinant = matrix.det
      determinant
    end
  end
  