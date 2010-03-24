class Symbol
  def ==(object)
    object.kind_of?(Wijet::SimpleEnumerations::EnumerationString::Enumeration) ? object == self : super
  end
end
