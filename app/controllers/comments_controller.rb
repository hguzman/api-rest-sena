class CommentsController < ApplicationController
  def index
    # Todos los comentarios
    comentarios = Comment.all
    render json: comentarios, status: 200
  end

  def create
    # Crear comentario
    comment = Comment.create!(
      email: params[:email],
      nombre: params[:nombre],
      body: params[:body]
    )
    render json: comment, status: 201
  end

  def show
    comment = Comment.find(params[:id])
    render json: comment, status: 200
  end

  def update
    comment = Comment.find(params[:id])
    comment.update!(
      email: params[:email],
      nombre: params[:nombre],
      body: params[:body]
    )
    render json: comment, status: 200
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy!
    render status: 200
  end
end
