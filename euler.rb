module Euler

    def getMultipleSumUpToNum(num,upTos = [])
        upTos = [upTos].flatten
        dupArry = []

        upTos.each do |multipleNum|
            divNum = num / multipleNum

            divNum = (divNum - 1) if num % multipleNum == 0
            puts divNum
            divNum.times do |x|
                dupArry << ((x+1) * multipleNum)
            end
        end

        dupArry.uniq.inject(0){|sum,x| sum + x}
    end
end


include Euler
puts Euler.getMultipleSumUpToNum(1000,[5,3])