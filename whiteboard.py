def busride(list):
    on = []
    off = []
    for i in list:
        on.append(i[0])
        off.append (i[1])
        total = (sum(on) -sum(off))
    print(total)
    
        
busride([[3,0],[9,1],[4,10],[12,2],[6,1],[7,10]])