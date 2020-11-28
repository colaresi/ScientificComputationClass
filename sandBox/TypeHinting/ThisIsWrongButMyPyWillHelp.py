my_data = ["1", "2"]
def processor(num1:float, num2:float)->float:
    """add number of words in sentences"""
    temp: float = num1 + num2
    return temp
print(processor(my_data[0], my_data[1]))
