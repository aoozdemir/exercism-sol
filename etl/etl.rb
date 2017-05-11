class ETL
  def self.transform(old)
    expected = Hash.new

    old.each_value do |arr_value|
      expected.merge!(Hash[arr_value.map { |v| [v.downcase, old.key(arr_value)] }])
    end

    expected
  end
end
