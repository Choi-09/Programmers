def solution(n):
    if n % 2==0:
        answer = (n/2)*(n/2+1)
    else:
        answer = ((n-1)/2) * (((n-1)/2)+1)
    return answer