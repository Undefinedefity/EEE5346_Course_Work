file = open('kitti_ldso_00.txt', 'r+', encoding='utf-8')
file_cp = open('kitti_ldso_00_copy.txt', 'r+', encoding='utf-8')
for i in file_cp:
    idx = i.find(' ')
    file.write(i[idx:])
file.close()
file_cp.close()
