module Models
  class Item
    attr_accessor :content, :status
    def initialize(content=nil,status=nil)
      @content = content
      @status = !!status
    end
    def display
      if(@status)
        "#{@content} #done"
      else
        @content
      end
    end
    def self.from(content)
      if(content =~ /\#done$/)
        content = content.gsub(/\#done$/,'').strip
        item = Item.new(content,true)
        item
      end
    end
  end
end
