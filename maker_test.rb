require "minitest/autorun"
require_relative "maker"

class MakerTest < Minitest::Test  
  def setup
    @maker = Maker.new('ferney',26,'ruby')
  end

  def test_get_name
    assert_equal 'ferney', @maker.name
  end

  def test_get_age
    assert_equal 26, @maker.age
  end

  def test_get_language
    assert_equal 'ruby', @maker.language
  end 

  def test_set_name
    @maker.name= 'Jose Ferney'
    assert_equal 'Jose Ferney',@maker.name
  end

  def test_set_age
    @maker.age= 25
    assert_equal 25,@maker.age
  end

  def test_set_languaje
    @maker.language= 'Ruby/Js'
    assert_equal 'Ruby/Js',@maker.language
  end
 
  def test_say_hi
    assert_equal 'Hola soy ferney tengo 26 años y mi lenguaje favorito es ruby',@maker.say_hi
  end

  def test_happy_birthday
    current_age= @maker.age
    @maker.happy_birthday
    assert_equal current_age+1, @maker.age
  end
  
  def test_is_old
    assert @maker.is_old
  end
  
  def test_is_old_false
    @maker.age = 12
    refute @maker.is_old
  end


end