programa
{	/*Produtos
	a. Nome do produto; 
	b. Descrição breve do produto;
	c. Quantidade de itens;
	d. Preço do produto (ex: R$ 10,99);
	e. Opção de inserir no carrinho;
	f. Opção de voltar ao menu anterior;
	g. Dois tratamentos de erro nos produtos.*/
	inclua biblioteca Util--> u
	inteiro estoqueGuloseimas[5]= {3,3,3,3,3}

	//INSERIR aqui a variável que guardará os produtos do carrinho, creio eu//

	
	funcao inicio()
	{	

		produtosAlimentos()

	}
			funcao produtosAlimentos ()
			{
				cadeia resposta
				inteiro i
				inteiro opcao
				cadeia guloseimas[5] = {"KIT KAT","M&M'S","AMANDITA","TORTUGUITA","KINDER OVO"}
				cadeia descricaoItensGuloseimas = ".\n============================================\nChocolates pra adoçar a vida!\nContém alguma porcentagem de cacau e leite.\nNão contém regime.\n============================================\n \n"
				cadeia semEstoqueGuloseimas[2] = {"Ops, o PAC-MAN comeu todo esse produto e não há mais disponíveis, tente uma outra guloseima!", "Ops, opção inválida, tente novamente!"}
				const real valorGuloseimas = 4.99
				
		
				
				escreva("============ GULOSEIMAS & GORDICES =========================\n")
				escreva("============ VIRE UM AVIÃO E AUMENTE SEUS PNEUS ============\n\n")
				
				para (i=0; i<=4; i++)
				{	u.aguarde(1000)
					escreva("\n", guloseimas[i], " - POR APENAS R$: ", valorGuloseimas,"\nEstoque: ", estoqueGuloseimas[i], descricaoItensGuloseimas)
		          }
				
				escreva("============ GULOSEIMAS & GORDICES =========================\n")
				escreva("============ VIRE UM AVIÃO E AUMENTE SEUS PNEUS ============\n\n")
				u.aguarde(1000)
				escreva("Escolha a sua guloseima dentre as opções [1], [2], [3], [4] ou [5]:\n[1]KIT KAT ### [3]AMANDITA   ### [5]KINDER OVO \n[2]M&M'S    ### [4]TORTUGUITA ###\n============================================\n Ou escolha [6] para voltar à Página Principal ou [7] para ir para o Carrinho.\n [6]PÁGINA PRINCIPAL [7]IR PARA O CARRINHO \n============================================\n Opção: ")	 
				leia(opcao)
				escolha (opcao)
				{
					caso (1): 
					se (estoqueGuloseimas[0]>0)
					{
					escreva("Você optou pela ", guloseimas[0], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
					leia(resposta)
						se (resposta == "S" ou resposta == "s") 
						{ 	estoqueGuloseimas[0] = estoqueGuloseimas[0] - 1
						  	produtosAlimentos()
						 	
						} 
						senao 
					     {
					      produtosAlimentos()
					     }	
					}
					senao
					{
						escreva(semEstoqueGuloseimas[0])
						escreva("\n")
						produtosAlimentos()
					}
					
					pare
		
					caso (2):
					se (estoqueGuloseimas[1]>0)
					{
					escreva("Você optou pela ", guloseimas[1], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
					leia(resposta)
						se (resposta == "S" ou resposta == "s") 
						{ 	estoqueGuloseimas[1] = estoqueGuloseimas[1] - 1
						  	produtosAlimentos()
						 	
						} 
						senao 
					     {
					      produtosAlimentos()
					     }	
					}
					senao
					{
						escreva(semEstoqueGuloseimas[0])
						escreva("\n")
						produtosAlimentos()
					}
					pare	
					
					caso (3):
					se (estoqueGuloseimas[2]>0)
					{
					escreva("Você optou pela ", guloseimas[2], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
					leia(resposta)
						se (resposta == "S" ou resposta == "s") 
						{ 	estoqueGuloseimas[2] = estoqueGuloseimas[2] - 1
						  	produtosAlimentos()
						 	
						} 
						senao 
					     {
					      produtosAlimentos()
					     }	
					}
					senao
					{
						escreva(semEstoqueGuloseimas[0])
						escreva("\n")
						produtosAlimentos()
					}
					pare
		
					caso (4):
					se (estoqueGuloseimas[3]>0)
					{
					escreva("Você optou pela ", guloseimas[3], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
					leia(resposta)
						se (resposta == "S" ou resposta == "s") 
						{ 	estoqueGuloseimas[3] = estoqueGuloseimas[3] - 1
						  	produtosAlimentos()
						 	
						} 
						senao 
					     {
					      produtosAlimentos()
					     }	
					}
					senao
					{
						escreva(semEstoqueGuloseimas[0])
						escreva("\n")
						produtosAlimentos()
					}
					pare
		
					caso (5):
					se (estoqueGuloseimas[4]>0)
					{
					escreva("Você optou pela ", guloseimas[4], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
					leia(resposta)
						se (resposta == "S" ou resposta == "s") 
						{ 	estoqueGuloseimas[4] = estoqueGuloseimas[4] - 1
						  	produtosAlimentos()
						 	
						} 
						senao 
					     {
					      produtosAlimentos()
					     }	
					}
					senao
					{
						escreva(semEstoqueGuloseimas[0])
						escreva("\n")
						produtosAlimentos()
					}
					pare

					/*caso (6):
					//insira aqui função ir para o menu principal//
					pare*/

					/*caso (7):
					//insira aqui função IR PARA O CARRINHO//
					pare*/
					
					caso contrario:
					escreva(semEstoqueGuloseimas[1])
					u.aguarde(1000)
					escreva("\n")
					produtosAlimentos()
				}
			}
}	



/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5101; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */