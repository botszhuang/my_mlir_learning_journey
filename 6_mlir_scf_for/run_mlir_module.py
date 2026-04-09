import ctypes

module = ctypes.CDLL("./libmyFunc.so")

module.get_forty_two.argtypes = [ctypes.c_int32]
module.get_forty_two.restype = ctypes.c_int32

input_val = 50
result = module.get_forty_two(input_val)

print(f"Result: {result}")
