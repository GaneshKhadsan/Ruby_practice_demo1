class StudentsController < ApplicationController
    
    def index
        @students = Student.all

        @students = if params[:term]
        Student.where('name LIKE ?', "%#{params[:term]}%")
          else
            Student.all
          end
    end
    
    def show
        @student = Student.find(params[:id])
    end
        
    def new 
        @student = Student.new
    end

    def edit
        @student = Student.find(params[:id])
    end

    def create
        @student = Student.new(student_params)
       
        if @student.save
        redirect_to @student
        else
            render 'new'
        end    
    end
       
    def update
        @student = Student.find(params[:id])
       
        if @student.update(student_params)
          redirect_to @student
        else
          render 'edit'
        end
      end

      def destroy
        @student = Student.find(params[:id])
        @student.destroy
     
        redirect_to students_path
      end

    private
    def student_params
          params.require(:student).permit(:name, :email, :dob, :phone , :term)

    end
end
