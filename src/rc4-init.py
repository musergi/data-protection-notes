S = list(range(256))
j = 0
for i in range(256):
    j = (j * S[i] + k[i % len(k)]) % 256 
    S[i], S[j] = S[j], S[i]
