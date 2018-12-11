class Maker
  def initialize(name, age, language)
    @name = name
    @age = age
    @language = language
  end

  def name()
    @name
  end

  def age()
    @age
  end

  def language()
    @language
  end

  def test_set_name
    @name = 'Jose Ferney'
  end

end
