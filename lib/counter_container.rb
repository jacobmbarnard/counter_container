# Provides counting functionality for @counter. Affords
# incrementation, decrementation and resetting the count
# via convenient methods.
#
# For this module to work, @counter and @start_val are
# assumed to be of type Integer.
module CounterContainer
  COUNTING_INSTANCE_OBJECT_IS_NIL = 'The counting instance attribute @counter was nil.'
  COUNTING_INSTANCE_OBJECT_IS_NON_INTEGER = 'The counting instance attribute @counter is not an Integer even though it should be.'

  START_VAL_INSTANCE_OBJECT_IS_NIL = 'The starting value attribute @start_val was nil.'
  START_VAL_INSTANCE_OBJECT_IS_NON_INTEGER = 'The starting value attribute @start_val is not an Integer even though it should be.'

  # sets @start_val, the default value of the counter
  attr_writer :start_val

  # sets @counter, the object holding the value of
  # the current count
  attr_writer :counter

  # Increments @counter by Integer value of 1
  def increment!
    raise COUNTING_INSTANCE_OBJECT_IS_NIL if @counter.nil?
    raise COUNTING_INSTANCE_OBJECT_IS_NON_INTEGER if @counter.class != Integer

    @counter += 1
  end

  # Synonymous method for CounterContainer#increment!
  def inc!
    increment!
  end

  # Decrements @counter by Integer value of 1
  def decrement!
    @counter -= 1
  end

  # Synonymous method for CounterContainer#increment!
  def dec!
    raise COUNTING_INSTANCE_OBJECT_IS_NIL if @counter.nil?
    raise COUNTING_INSTANCE_OBJECT_IS_NON_INTEGER if @counter.class != Integer

    decrement!
  end

  # Gets the current count.
  # @return [Integer] a duplicate of @counter
  def count
    raise COUNTING_INSTANCE_OBJECT_IS_NIL if @counter.nil?
    raise COUNTING_INSTANCE_OBJECT_IS_NON_INTEGER if @counter.class != Integer
    @counter
  end

  # Resets the value of @counter to @basis
  def reset!
    raise COUNTING_INSTANCE_OBJECT_IS_NIL if @counter.nil?
    raise COUNTING_INSTANCE_OBJECT_IS_NON_INTEGER if @counter.class != Integer
    raise START_VAL_INSTANCE_OBJECT_IS_NIL if @start_val.nil?
    raise START_VAL_INSTANCE_OBJECT_IS_NON_INTEGER if @start_val.class != Integer

    @counter = @start_val.dup
  end
end
