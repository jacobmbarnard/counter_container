require_relative '../lib/counter_container'

class TempClass
  include CounterContainer

  def initialize
    @counter = 1
    @start_val = 1
  end
end

require 'test/unit'

class Tests < Test::Unit::TestCase
  def test_initial_value
    tmp_cls = TempClass.new
    assert_true(tmp_cls.count == 1)
  end

  def test_incrementation
    tmp_cls = TempClass.new
    assert_true(tmp_cls.count == 1)
    tmp_cls.inc!
    assert_true(tmp_cls.count == 2)
    tmp_cls.increment!
    assert_true(tmp_cls.count == 3)
  end

  def test_decrementation
    tmp_cls = TempClass.new
    assert_true(tmp_cls.count == 1)
    tmp_cls.dec!
    assert_true(tmp_cls.count == 0)
    tmp_cls.decrement!
    assert_true(tmp_cls.count == -1)
  end

  def test_reset
    tmp_cls = TempClass.new
    assert_true(tmp_cls.count == 1)
    3.times { tmp_cls.dec! }
    assert_true(tmp_cls.count == -2)
    tmp_cls.reset!
    assert_true(tmp_cls.count == 1)
  end
end
