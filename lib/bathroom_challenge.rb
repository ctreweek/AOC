def up(num)
  if num >= 4 && num <= 9
    return num - 3
  else
    return num
  end
end

def down(num)
  if num >=1 && num <= 6
    return num + 3
  else
    return num
  end
end

def left(num)
  if num != 1 && num != 4 && num != 7
    return num - 1
  else
    return num
  end
end

def right(num)
  if num != 3 && num != 6 && num != 9
    return num + 1
  else
    return num
  end
end

def unlock(instructions)
  #instructions is an array of arrays
  code = " "
  last_num = 5
  i = 0

  while i < instructions.length
    x = 0
    while x < instructions[i].length
      if instructions[i][x] == "U"
        last_num = up(last_num)
      elsif instructions[i][x] == "L"
        last_num = left(last_num)
      elsif instructions[i][x] == "D"
        last_num = down(last_num)
      else
        last_num = right(last_num)
      end
      x += 1
    end
    code += last_num.to_s
    i += 1
  end
  return code.to_i
end
