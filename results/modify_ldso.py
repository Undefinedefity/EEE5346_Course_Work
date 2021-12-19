j = [0,1,2]
for k in j:
    file = open('kitti_ldso_0'+str(k)+'.txt', 'r+', encoding='utf-8')
    file_cp = open('kitti_ldso_0'+str(k)+'_copy.txt', 'r+', encoding='utf-8')
    for i in file_cp:
        idx = i.find(' ')
        file.write(i[idx+1:])
    file.close()
    file_cp.close()
