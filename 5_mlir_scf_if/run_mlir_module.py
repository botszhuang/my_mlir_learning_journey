import ctypes

module = ctypes.CDLL("./libmyFunc.so")

module.get_forty_two.argtypes = [ctypes.c_int32]
module.get_forty_two.restype = ctypes.c_bool

input_val = 50
result = module.get_forty_two(input_val)

if result > 0:
    print(f"Result: {input_val} > 42")
else:
    print(f"Result: {input_val} <= 42")
