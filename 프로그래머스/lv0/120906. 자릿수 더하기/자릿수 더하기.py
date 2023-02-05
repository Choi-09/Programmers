def solution(n):
    lst = []
    string = str(n)
    
    for i in range(len(string)):
        lst.append(string[i])
    lst = list(map(int, lst))
    answer = sum(lst)
    return answer


