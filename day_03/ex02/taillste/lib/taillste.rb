module Taillste
  class Drum

    attr_accessor :beat, :shuffle
    
    def initialize
      @beat = [1, 4, 9]
      @shuffle = @beat.rotate(-1)
    end

    def played_with
      "Both arms and legs"
    end

    def count
      "1\n.\n.\n4\n.\n.\n.\n.\n9\n"
    end
  end

  class Beat_box < Drum

    def initialize
      @beat = [1, 5, 7]
      @shuffle = @beat.rotate(-1)
    end

    def count
      "1\n.\n.\n.\n5\n.\n7\n"
    end

    def played_with
      "Mouth"
    end

  end

  class Clap < Drum

    def initialize
      @beat = [2, 3, 7, 8]
      @shuffle = @beat
    end

    def count
      "2\n3\n.\n.\n.\n7\n8\n"
    end

    def shuffle
      @shuffle = @shuffle.rotate(-1)
    end

  end

end
=begin
  def test_1
    a = Taillste::Drum.new
    assert_equal(a.class,Taillste::Drum)
  end
  def test_1_2
    a = Taillste::Drum.new
    assert_equal(a.beat,[1,4,9])
  end
  def test_1_3
    a = Taillste::Drum.new
    assert(a.shuffle,[9, 1, 4])
  end
  def test_1_4
    a = Taillste::Drum.new
    str = "1\n.\n.\n4\n.\n.\n.\n.\n9\n"
    assert(a.count,str)
  end
  def test_1_5
    a = Taillste::Drum.new
    assert(a.played_with,"Both arms and legs")
  end
  def test_2
    a = Taillste::Beat_box.new
    assert_equal(a.class.superclass,Taillste::Drum)
  end
  def test_2_2
    a = Taillste::Beat_box.new
    assert_equal(a.beat,[1,5,7])
  end
  def test_2_3
    a = Taillste::Beat_box.new
    assert(a.shuffle,[7, 5, 1])
  end
  def test_2_4
    a = Taillste::Beat_box.new
    str = "1\n.\n.\n.\n5\n.\n7\n"
    assert(a.count,str)
  end
  def test_2_5
    a = Taillste::Beat_box.new
    assert(a.played_with,"Mouth")
  end
  def test_3
    a = Taillste::Clap.new
    assert_equal(a.class.superclass,Taillste::Drum)
  end
  def test_3_2
    a = Taillste::Clap.new
    assert_equal(a.beat,[2, 3, 7, 8])
  end
  def test_3_3
    a = Taillste::Clap.new
    sample_b= a.shuffle
    sample_c= a.shuffle
    assert_equal((sample_b != sample_c && sample_c != a.beat) , true)
  end
  def test_3_4
    a = Taillste::Clap.new
    str = "2\n3\n.\n.\n.\n7\n8\n"
    assert(a.count,str)
  end
  def test_3_5
    a = Taillste::Clap.new
    assert(a.played_with,"Both_hands")
  end

=end