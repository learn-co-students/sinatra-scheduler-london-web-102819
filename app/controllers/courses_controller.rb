class CoursesController < ApplicationController

    get '/courses' do
        @courses = Course.all.order(:name)

        erb :"courses/index"
    end

    get '/courses/:id' do
        @course = Course.find(params[:id])

        erb :"courses/show"
    end

    get '/courses/:id/edit' do
        
        @course = Course.find(params[:id])

        erb :"courses/edit"
    end

    post '/courses/:id' do
        @course = Course.find(params[:id])

        @course.update(params[:course])

        redirect "/courses/#{@course.id}"
    end


end