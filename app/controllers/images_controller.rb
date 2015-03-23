class ImagesController < ApplicationController
   before_action :set_arreglo, only: [:index]

  def index
  #.sample
      if params[:commit]=='Random'
        
          Win.all.each do |win|
                @arreglo.delete(win.foto)
           end 
           @ganador = @arreglo.sample 
          Win.create(foto:  @ganador )
          @arreglo.sort
      else
           @arreglo.sort
      end

      if params[:commit]=='Restart'
          Win.delete_all
      end
  
  end


private
     def set_arreglo
      @arreglo = ['aleman.jpg', 'arellano.jpg', 'avalos.jpg', 'caballero.jpg', 'caldino.jpg', 'castro.jpg', 'farfan.jpg', 'fernandez.jpg', 'gallardo.jpg', 'garcia.jpg', 
      'garcia.jpg', 'gonzalez.jpg', 'hernandez.jpg', 'iturbide.jpg', 'juarez.jpg', 'limon.jpg', 'lua.jpg', 'miguel.jpg', 'millan.jpg', 'ortiz.jpg', 
      'pereda.jpg', 'perez.jpg', 'ramirez.jpg', 'rodriguez.jpg', 'sanchez.jpg', 'tenorio.jpg', 'viurquis.jpg', 'zavala.jpg'].sort
    end

end
