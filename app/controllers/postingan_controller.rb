class PostinganController < ApplicationController
  def index
    # @postingan1 = "Belajar Ruby On Rails"
    # @postingan2 = "Macam Macam Bahasa Pemrograman"

    # @data =[
    #     "1. Pemrograman Ruby",
    #     "2. Pemrograman C++",
    #     "3. Pemrograman PHP",
    #     "4. Pemrograman JavaScript",
    #     "5. Pemrograman Python",
    #     "6. Pemrograman Java",
    # ]

    @data = Post.all
  end

  def detail
    @data = Post.find_by(id: params[:id])
  end

  def input

  end

  def create
    @data = Post.new(title: params[:judul], content: params[:deskripsi])
    @data.save

    flash[:pesan] = "Data Berhasil Di Simpan!"

    redirect_to("/postingan")
  end

  def edit
    @data = Post.find_by(id: params[:id])
  end

  def update 
    @data = Post.find_by(id: params[:id])
    @data.title = params[:judul]
    @data.content = params[:deskripsi] 
    @data.save

    flash[:pesan] = "Data Berhasil Di Update!"

    redirect_to("/postingan")
  end

  def delete
    @data = Post.find_by(id: params[:id])
    @data.destroy
    flash[:pesan] = "Data Berhasil Di Hapus!"

    redirect_to("/postingan")
  
  end

end
