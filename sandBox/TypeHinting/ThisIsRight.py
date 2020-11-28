from typing import Union


my_data = ["1", "2"]
def processor(num1:Union[str, float], num2:Union[str, float])->Union[float, None]:
    """add number of words in sentences"""
    try: 
        num1, num2 = float(num1), float(num2)
    except ValueError:
        print("If a string is given, must pertain to a float")
        return None        
    temp: float = num1 + num2
    return temp
print(processor(my_data[0], my_data[1]))
