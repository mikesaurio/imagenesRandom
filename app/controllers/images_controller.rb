class ImagesController < ApplicationController
   before_action :set_arreglo, only: [:index]

  def index
  #.sample
      if params[:commit]
          @ganador =  @arreglo.sample
      else
           @arreglo
      end
  
  end


private
     def set_arreglo
      @arreglo = ['aleman.jpg', 'arellano.jpg', 'avalos.jpg', 'caballero.jpg', 'caldino.jpg', 'castro.jpg', 'farfan.jpg', 'fernandez.jpg', 'galardo.jpg', 'garcia.jpg', 
      'gonzalez.jpg', 'hernandez.jpg', 'iturbide.jpg', 'juarez.jpg', 'limon.jpg', 'lua.jpg', 'miguel.jpg', 'millan.jpg', 'ortiz.jpg', 
      'pareda.jpg', 'perez.jpg', 'ramirez.jpg', 'redriguez.jpg', 'sanchez.jpg', 'tenorio.jpg', 'viurquis.jpg', 'zavala.jpg']
    end

end
