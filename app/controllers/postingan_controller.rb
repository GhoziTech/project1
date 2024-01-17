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
end
