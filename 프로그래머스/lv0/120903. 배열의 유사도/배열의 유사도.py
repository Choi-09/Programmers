def solution(s1, s2):
    lst = []
    for item in s1:
        for chars in s2:
            if item == chars:
                lst.append(item)
            answer = len(lst)
    return answer