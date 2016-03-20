class DogsController < InheritedResources::Base

  private

    def dog_params
      params.require(:dog).permit(:name, :breed, :age, :cgc, :registration, :therapy_group, :renewal_date, :image, :description, :gender, :member, :retired)
    end
end

