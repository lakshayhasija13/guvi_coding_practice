N = int(input())
L, R = map(int, input().split())
if N in range(L+1, R):
    print('yes')
else:
    print('no')
