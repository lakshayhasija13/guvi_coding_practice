N = int(input())
lst = []
for ele in str(N):
    if int(ele) % 2 != 0:
        lst.append(ele)
if lst == []:
    print(-1)
else:
    print(*lst)
