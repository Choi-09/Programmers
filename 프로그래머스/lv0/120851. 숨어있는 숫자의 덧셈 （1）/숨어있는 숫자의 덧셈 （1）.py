def solution(my_string):
    stringlst = list(my_string)
    num = []
    for item in stringlst:
        if item.isdigit() == True:
            num.append(item)
        else:
            pass
        num = list(map(int, num))
    answer = sum(num)
        
    return answer