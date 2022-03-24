programa
{
	inclua biblioteca Util --> ut
	inclua biblioteca Sons

	
	cadeia guloseimas[10] = {"KIT KAT","M&M'S","AMANDITA","TORTUGUITA","KINDER OVO"," "," "," "," "," "}
	cadeia descguloseimas[10] = {"
	funcao inicio()
	{
		
		admin_guloseimas()
	}
	
	funcao admin_guloseimas()
	{
		caracter opcao
		cadeia troca, novoproduto
		inteiro contador,parar = 0,x
		escreva("\nO que você deseja?\n1 - Alterar os produtos\n2 - Adicionar produtos\n3 - Excluir produtos\n4 - Voltar ao menu inicial")
		leia (contador)
			
		
		escolha (contador)
		{
			caso 1:
			x=0
			escreva("Qual dos seguintes produtos: ")
			para(contador = 0;contador<10;contador++)
			{
				se(guloseimas[contador] != " ")
				{
					
					escreva("\n ",x," : ",guloseimas[contador])
					x++
				}
			}
			escreva("\n")
			leia(contador)
			escreva("E qual será o nome do novo produto? ")
			leia(troca)
			limpa()
			guloseimas[contador] = troca
			escreva("Os produtos atualizados são: ")
			para(contador = 0;contador<10;contador++)
			{
				se(guloseimas[contador] != " ")
				{
					escreva("\n ",contador," : ",guloseimas[contador])
				}
			}
			admin_guloseimas()
			caso 2:
			para(contador = 0;contador<10;contador++)
			{
				se(guloseimas[contador] == " ")
				{
					escreva("Qual será o novo produto? ")
					leia(novoproduto)
					guloseimas[contador] = novoproduto
					escreva("Agora o produto de número ",contador," é o ",guloseimas[contador])
					ut.aguarde(4000)
					limpa()
					admin_guloseimas()
				}
				senao
				{
					parar++
					se(parar == 10)
					{
					escreva("não há espaço para adicionar seu novo produto, exclua um antes")
					ut.aguarde(4000)
					limpa()
					admin_guloseimas()
					}
				}
				
			}
			pare
			caso 3:
			x = 0
			escreva("Deseja excluir qual dos seguintes produtos: ")
			para(contador = 0;contador<10;contador++)
			{
				se(guloseimas[contador] != " ")
				{
					escreva("\n ",x," : ",guloseimas[contador])
					x++
				}
			}
			escreva("\n")
			leia(contador)
			guloseimas[contador] = " "
			escreva("Produto ",contador," excluído com sucesso")
			ut.aguarde(3000)
			limpa()
			admin_guloseimas()
			pare
			caso contrario:
			admin_guloseimas()
		}
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 202; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */