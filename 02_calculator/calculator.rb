#write your code here
def add num1, num2
    num1 + num2
end

def subtract num1, num2
    num1 - num2
end

def sum array
    if array == []
        lastest = 0
    else
        lastest = array.pop
        while array != []
            laster = array.pop
            lastest += laster
        end
    end
    lastest
end


