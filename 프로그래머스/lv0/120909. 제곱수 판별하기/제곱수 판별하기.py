import math
def solution(n):
    n > 0 and n == int(n)
    if (math.sqrt(n)) % 1 == 0:
        answer = 1
    else:
        answer = 2
    return answer