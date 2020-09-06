from typing import List, Dict, Tuple, Sequence

# Vector will just be a list of floats
Vector = List[float]

def scale(scalar: float, vector: Vector) -> Vector:
    return [scalar * num for num in vector]

# More complicated example

ConnectionOptions = Dict[str, str] #Dict with str keys and vals
Address = Tuple[str, int] #tuple with first val str, second int
Server = Tuple[Address, ConnectionOptions] #tuple made up of other components
def broadcast_message(message: str, servers: Sequence[Server]) -> None:
    print(message, servers)

# Note that typing is nested so that Tuple[Address] is Tuple[Tuple[str, int]]

if __name__ == '__main__':
    print(scale(3.3, [1.0, 2.0]))
    print("Hopefully you just read, [3.3, 6.6]")
    broadcast_message('testing 1234', (('home', 1), {'test': 'test', 'out': 'out'}))

