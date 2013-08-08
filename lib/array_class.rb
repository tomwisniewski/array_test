class Array

  def inject(base=nil)
    total = base
    for i in 0..count-1
      if total
        total = yield(total, self[i])
      else
        total = self[i]
      end  
    end  
    total
  end

  def reduce(operation)
    total = nil
    for i in 0..count-1
      if total
        total = total.send(operation, self[i])
      else
        total = self[i]
      end
    end
    total
  end

end


