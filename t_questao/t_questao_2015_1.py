#!/usr/bin/python
# -*- coding: utf-8 -*-

arquivo1 = open('resultado_1.csv', 'r')
arquivo2 = open('resultado_2.csv', 'w')

z = 0
y = 0

for line in arquivo1:

    k = 1
    l = 6
    m = 11

    p = line.split(",")

    if (p[0] == '231' or p[0] == '232' or p[0] == '233' or p[0] == '234' or p[0] == '251' or p[0] == '271' or
            p[0] == '272' or p[0] == '273' or p[0] == '274'):  # Prova de CH
        for i in range(1, 46):
            b = '2015' + p[0] + str(i) + "," + p[i] + '\n'
            arquivo2.writelines(b)
    elif (p[0] == '235' or p[0] == '236' or p[0] == '237' or p[0] == '238' or p[0] == '252' or p[0] == '275' or
          p[0] == '276' or p[0] == '277' or p[0] == '278'):  # Prova de CN
        for i in range(46, 91):
            z = z + 1

            b = '2015' + p[0] + str(i) + "," + p[z] + '\n'
            arquivo2.writelines(b)
        z = 0
    elif (p[0] == '239' or p[0] == '240' or p[0] == '241' or p[0] == '242' or p[0] == '253' or p[0] == '279' or
          p[0] == '280' or p[0] == '281' or p[0] == '282'):  # Prova de LC
        for i in range(91, 136):
            if (i <= 95):
                b = '2015' + p[0] + str(i) + "," + p[k] + "," + p[l] + '\n'
                arquivo2.writelines(b)
                k = k + 1
                l = l + 1
            elif (i >= 96):
                b = '2015' + p[0] + str(i) + "," + p[m] + '\n'
                arquivo2.writelines(b)
                m = m + 1
    elif (p[0] == '243' or p[0] == '244' or p[0] == '245' or p[0] == '246' or p[0] == '254' or p[0] == '283' or
          p[0] == '284' or p[0] == '285' or p[0] == '286'):  # Prova de MT
        for i in range(136, 181):
            y = y + 1

            b = '2015' + p[0] + str(i) + "," + p[y] + '\n'
            arquivo2.writelines(b)

        y = 0

arquivo1.close()
arquivo2.close()
