 class Menu 

    def initialize
        @cookie = []
        @cake = []
        @muffin = []
    end

    def add_cookie(name, price , description)
        cookie = Cookies.new(name, price, description)
        @cookie.push(cookie)

    end

    def add_cake(name, price , description)
        cake = Cakes.new(name, price, description)
        @cake.push(cake)
        
    end

    def add_muffins(name, price , description)
        muffin = Muffins.new(name, price, description)
        @muffin.push(muffin)
    end

    def cookies
        @cookies
    end

    def cakes
        @cakes
    end

    def muffins
        @muffins
    end

end