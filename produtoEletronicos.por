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
	inteiro estoqueEletronicos[5]= {3,3,3,3,3}

	//INSERIR aqui a variável que guardará os produtos do carrinho, creio eu//

	
	funcao inicio()
	{	

		produtosEletronicos()

	}
			funcao produtosEletronicos ()
			{
				cadeia resposta
				inteiro i
				inteiro opcao
				cadeia smartEletronicos[5] = {"SMARTWATCH","UAIPHONE ÉPOU","SMART SPEAKER ALEXIA","SMART SPEAKER ASSISTENTE GÚGOL","SMART TV"}
				cadeia descricaoItensEletronicos = ".\n============================================\nProdutos que facilitarão sua vida em alta tecnologia!\n100% mais SMARTS que você!!.\nVersão brasileira Herbert Richards.\n============================================\n \n"
				cadeia semEstoqueEletronicos[2] = {"A revolução das máquinas começou e o seu produto está indisponível, arrisque outro Smart produto!", "Ops, falha na Matrix, tente novamente!"}
				const real valorEletronicos = 400.99
				
		
				
				escreva("============ SMART TECHNOLOGIES =============\n")
				escreva("============ SUA VIDA MAIS SMART ============\n\n")
				
				para (i=0; i<=4; i++)
				{	u.aguarde(1000)
					escreva("\n", smartEletronicos[i], " - POR APENAS R$: ", valorEletronicos,"\nEstoque: ", estoqueEletronicos[i], descricaoItensEletronicos)
		          }
				
				escreva("============ SMART TECHNOLOGIES =============\n")
				escreva("============ SUA VIDA MAIS SMART ============\n\n")
				u.aguarde(1000)
				escreva("Escolha o seu gadget dentre as opções [1], [2], [3], [4] ou [5]:\n[1]SMARTWATCH       ### [3]SMART SPEAKER ALEXIA           ### [5]SMART TV \n[2]UAIPHONE ÉPOU    ### [4]SMART SPEAKER ASSISTENTE GÚGOL ###\n============================================\n Ou escolha [6] para voltar à Página Principal ou [7] para ir para o Carrinho.\n [6]PÁGINA PRINCIPAL [7]IR PARA O CARRINHO \n============================================\n Opção: ")	 
				leia(opcao)
				escolha (opcao)
				{
					caso (1): 
					se (estoqueEletronicos[0]>0)
					{
					escreva("Você optou pela ", smartEletronicos[0], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
					leia(resposta)
						se (resposta == "S" ou resposta == "s") 
						{ 	estoqueEletronicos[0] = estoqueEletronicos[0] - 1
						  	produtosEletronicos()
						 	
						} 
						senao 
					     {
					      produtosEletronicos()
					     }	
					}
					senao
					{
						escreva(semEstoqueEletronicos[0])
						escreva("\n")
						produtosEletronicos()
					}
					
					pare
		
					caso (2):
					se (estoqueEletronicos[1]>0)
					{
					escreva("Você optou pela ", smartEletronicos[1], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
					leia(resposta)
						se (resposta == "S" ou resposta == "s") 
						{ 	estoqueEletronicos[1] = estoqueEletronicos[1] - 1
						  	produtosEletronicos()
						 	
						} 
						senao 
					     {
					      produtosEletronicos()
					     }	
					}
					senao
					{
						escreva(semEstoqueEletronicos[0])
						escreva("\n")
						produtosEletronicos()
					}
					pare	
					
					caso (3):
					se (estoqueEletronicos[2]>0)
					{
					escreva("Você optou pela ", smartEletronicos[2], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
					leia(resposta)
						se (resposta == "S" ou resposta == "s") 
						{ 	estoqueEletronicos[2] = estoqueEletronicos[2] - 1
						  	produtosEletronicos()
						 	
						} 
						senao 
					     {
					      produtosEletronicos()
					     }	
					}
					senao
					{
						escreva(semEstoqueEletronicos[0])
						escreva("\n")
						produtosEletronicos()
					}
					pare
		
					caso (4):
					se (estoqueEletronicos[3]>0)
					{
					escreva("Você optou pela ", smartEletronicos[3], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
					leia(resposta)
						se (resposta == "S" ou resposta == "s") 
						{ 	estoqueEletronicos[3] = estoqueEletronicos[3] - 1
						  	produtosEletronicos()
						 	
						} 
						senao 
					     {
					      produtosEletronicos()
					     }	
					}
					senao
					{
						escreva(semEstoqueEletronicos[0])
						escreva("\n")
						produtosEletronicos()
					}
					pare
		
					caso (5):
					se (estoqueEletronicos[4]>0)
					{
					escreva("Você optou pela ", smartEletronicos[4], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
					leia(resposta)
						se (resposta == "S" ou resposta == "s") 
						{ 	estoqueEletronicos[4] = estoqueEletronicos[4] - 1
						  	produtosEletronicos()
						 	
						} 
						senao 
					     {
					      produtosEletronicos()
					     }	
					}
					senao
					{
						escreva(semEstoqueEletronicos[0])
						escreva("\n")
						produtosEletronicos()
					}
					pare

					/*caso (6):
					//insira aqui função menu principal//
					pare*/

					/*caso (7):
					//insira aqui função IR PARA O CARRINHO//
					pare*/
					
					caso contrario:
					escreva(semEstoqueEletronicos[1])
					u.aguarde(1000)
					escreva("\n")
					produtosEletronicos()
				}
			}
}	



/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2679; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */