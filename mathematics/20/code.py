N = int(input())
st = []
for ele in str(N):
    if ele != '0':
        st.append(ele)
st.reverse()
print("".join(st))
