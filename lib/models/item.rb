module Models
  class Item
    attr_accessor :content, :status
    def display
      if(@status)
        "#{@content} #done"
      else
        @content
      end
    end
  end
end
