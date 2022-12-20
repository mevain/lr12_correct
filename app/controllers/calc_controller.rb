class CalcController < ApplicationController
  def input
  end

  def output
    return @cuts = 'Нет элементов'.split if params[:array].nil?
    @array = params[:array]
    @result = @array.split(' ').select do |i|
      (1..(i.to_i / 2)).to_a.select do |j|
        (i.to_i % j).zero?
      end.sum.eql? i.to_i
    end
    @indexs = @result.map { |i| @array.split(' ').index(i) }
    @cuts = []
    @cuts[0] = []
    @cuts[0][0] = @result[0]
    ind = 0
    1.upto(@result.size - 1) do |i|
      if @indexs[i] != @indexs[i - 1] + 1
        ind += 1
        @cuts[ind] = []
      end
      @cuts[ind].append(@result[i])
    end
  end
end
