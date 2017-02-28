class PhotosController < Appli
  cationController
  # ======= index =======
    def index
      @photos = Photo.order('created_at')
    end

    # ======= show =======
    def show
        puts"\n******* show *******"
    end

    # ======= new =======
    def new
      @photo = Photo.new
    end

    # ======= create =======
    def create
      @photo = Photo.new(photo_params)
      if @photo.save
        flash[:success] = "The photo was added!"
        redirect_to "/photos"
      else
        render 'new'
      end
    end

    # ======= destroy =======
    def destroy
        puts"\n******* destroy *******"
        puts"** params: #{params.inspect}"
        @photo = Photo.find(params[:id])
        @photo.destroy
        respond_to do |format|
            format.html { redirect_to photos_path, notice: 'photo was successfully destroyed.' }
        end
    end

    # ======= private =======
    private
		def photo_params
			params.require(:photo).permit(:image, :title)
		end
end
