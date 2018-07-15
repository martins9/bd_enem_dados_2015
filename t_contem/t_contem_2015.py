#!/usr/bin/python
# encoding: utf-8

arquivo1 = open('tabela_contem_2015.csv', 'r')
arquivo2 = open('t_contem_final.csv', 'w')

for f in arquivo1:
    texto = f.split(',')

    if (texto[2] == 'CH' and (texto[0] == '231' or texto[0] == '232' or texto[0] == '233' or texto[0] == '234'
         or texto[0] == '251' or  texto[0] == '271' or texto[0] == '272' or texto[0] == '273' or texto[0] == '274')):  # Prova de CH
        for i in range(1, 46):
            a = '2015' + texto[0] + ',' + '2015' + texto[0] + str(i) + '\n'
            arquivo2.writelines(a)
    elif (texto[2] == 'CN' and (texto[0] == '235' or texto[0] == '236' or texto[0] == '237' or texto[0] == '238'
          or texto[0] == '252' or texto[0] == '275' or texto[0] == '276' or texto[0] == '277' or texto[0] == '278')):  # Prova de CN
        for i in range(46, 91):
            a = '2015' + texto[0] + ',' + '2015' + texto[0] + str(i) + '\n'
            arquivo2.writelines(a)
    elif (texto[2] == 'LC' and (texto[0] == '239' or texto[0] == '240' or texto[0] == '241' or texto[0] == '242'
            or texto[0] == '253' or texto[0] == '279' or texto[0] == '280' or texto[0] == '281' or texto[0] == '282')):  # Prova de LC
        for i in range(91, 136):
            a = '2015' + texto[0] + ',' + '2015' + texto[0] + str(i) + '\n'
            arquivo2.writelines(a)
    elif (texto[2] == 'MT' and (texto[0] == '243' or texto[0] == '244' or texto[0] == '245' or texto[0] == '246' or texto[0] == '254'
            or texto[0] == '283' or texto[0] == '284' or texto[0] == '285' or texto[0] == '286')):  # Prova de MT
        for i in range(136, 181):
            a = '2015' + texto[0] + ',' + '2015' + texto[0] + str(i) + '\n'
            arquivo2.writelines(a)

arquivo1.close()
arquivo2.close()
