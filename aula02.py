'''print("Digite sua idade:")
idade = int(input())

if idade >= 18:
    print('Tá Liberado!')
else:
    print('Vai pra casa de menor!')'''

# CÓDIGO PARA LIBERAR ACESSO SOMENTE PARA MAIORES DE 19 ANOS

'''print("Digite sua idade:")
idade = int(input())

if idade < 18:
    print('Vai pra casa de menor!')
elif idade == 18:
    print('Tá quase lá! Volte ano que vem!')
else:
    print('Tá Liberado!')'''

# 

'''print("Digite a Média:")
media = float(input())

if media < 5:
    print('REPROVADO')
elif media < 7:
    print('RECUPERAÇÃO')
else:
    print('APROVADO')'''


# CÓDIGO PARA VERIFICAR SE PODE PARTICIPAR DO PROJETO MULHERES TECH

'''print('Qual o seu gênero? (F ou M)')
genero = input()
print('Qual município você mora?')
municipio = input()

if genero.upper() == 'F' and municipio.lower() == 'rio de janeiro':
    print('Pode Participar')
else:
    print('No no no')'''
   

#Cinema

print('*'*30, 'BEM VINDO AO CINEMA', '*'*30)
print(' ')
print('Qual a sua idade?')
idade = int(input())

if idade >=18:
    print('ACESSO LIBERADO! BOM FILME =)')
elif idade >=16:
    print('O FILME É PARA MAIOR DE 18 ANOS\nVOCÊ ESTÁ COM SEU RESPONSÁBEL MAIOR DE IDADE? SIM OU NÃO?')
    responta = input().upper()
    if responta == 'SIM':
        print('ACESSO LIBERADO! BOM FILME =)')
    elif responta == 'NÃO':
        print('ACESSO NEGADO!! O FILME É PARA MAIOR DE 18 ANOS')
    else:
        print('RESPONDA SIM OU NÃO JUMENTO!!!')
else:
    print('NO NO NO!!\nVAI PRA CASA CRIANÇA :P')
