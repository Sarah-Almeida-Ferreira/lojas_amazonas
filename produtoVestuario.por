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
	inteiro estoqueCamisa[5]= {3,3,3,3,3}

	//INSERIR aqui a variável que guardará os produtos do carrinho, creio eu//

	
	funcao inicio()
	{	

		produtosCamisaFutebol()

	}
			funcao produtosCamisaFutebol ()
			{
				cadeia resposta
				inteiro i
				inteiro opcao
				cadeia camisaTime[5] = {"CAMISETA DO FLAMENGO","CAMISETA DO VASCO","CAMISETA DO BOTAFOGO","CAMISETA DO FLUMINENSE","CAMISETA DO TABAJARA"}
				const real valorCamisaTime = 40.99
				
		
				
				escreva("============ CAMISAS DE FUTEBOL ====================\n")
				escreva("============ VISTA A CAMISA DO SEU TIME ============\n\n")
				
				para (i=0; i<=4; i++)
				{	u.aguarde(1000)
					escreva("\n", camisaTime[i], " - POR APENAS R$: ", valorCamisaTime,"\nEstoque: ", estoqueCamisa[i],".\n============================================\nCamisa do time do seu coração <3\nTecido 100% poliéster com tratamento DRY.\nVersão quase oficial licenciada.\n============================================\n \n")
		          }
				
				escreva("============ CAMISAS DE FUTEBOL ====================\n")
				escreva("============ VISTA A CAMISA DO SEU TIME ============\n\n")
				u.aguarde(1000)
				escreva("Escolha a camisa do seu time dentre as opções [1], [2], [3], [4] ou [5]:\n[1]FLAMENGO ### [3]BOTAFOGO   ### [5]TABAJARA \n[2]VASCO    ### [4]FLUMINENSE ###\n============================================\n Ou escolha [6] para voltar à Página Principal ou [7] para ir para o Carrinho.\n [6]PÁGINA PRINCIPAL [7]IR PARA O CARRINHO \n============================================\n Opção: ")	 
				leia(opcao)
				escolha (opcao)
				{
					caso (1): 
					se (estoqueCamisa[0]>0)
					{
					escreva("Você optou pela ", camisaTime[0], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
					leia(resposta)
						se (resposta == "S" ou resposta == "s") 
						{ 	estoqueCamisa[0] = estoqueCamisa[0] - 1
						  	produtosCamisaFutebol()
						 	
						} 
						senao 
					     {
					      produtosCamisaFutebol()
					     }	
					}
					senao
					{
						escreva("Ops, tivemos um arrastão da torcida do Flamengo e não há mais camisas disponíveis, tente uma do Vasco!")
					}
					
					pare
		
					caso (2):
					se (estoqueCamisa[1]>0)
					{
					escreva("Você optou pela ", camisaTime[1], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
					leia(resposta)
						se (resposta == "S" ou resposta == "s") 
						{ 	estoqueCamisa[1] = estoqueCamisa[1] - 1
						  	produtosCamisaFutebol()
						 	
						} 
						senao 
					     {
					      produtosCamisaFutebol()
					     }	
					}
					senao
					{
						escreva("Ops, tivemos um arrastão da torcida do Vasco e não há mais camisas disponíveis, tente uma do Fogão!")
					}
					pare	
					
					caso (3):
					se (estoqueCamisa[2]>0)
					{
					escreva("Você optou pela ", camisaTime[2], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
					leia(resposta)
						se (resposta == "S" ou resposta == "s") 
						{ 	estoqueCamisa[2] = estoqueCamisa[2] - 1
						  	produtosCamisaFutebol()
						 	
						} 
						senao 
					     {
					      produtosCamisaFutebol()
					     }	
					}
					senao
					{
						escreva("Ops, tivemos um arrastão da torcida do Fogão e não há mais camisas disponíveis, tente uma do Fluzão!")
					}
					pare
		
					caso (4):
					se (estoqueCamisa[3]>0)
					{
					escreva("Você optou pela ", camisaTime[3], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
					leia(resposta)
						se (resposta == "S" ou resposta == "s") 
						{ 	estoqueCamisa[3] = estoqueCamisa[3] - 1
						  	produtosCamisaFutebol()
						 	
						} 
						senao 
					     {
					      produtosCamisaFutebol()
					     }	
					}
					senao
					{
						escreva("Ops, tivemos um arrastão da torcida do Fluzão e não há mais camisas disponíveis, tente uma do Tabajara!")
					}
					pare
		
					caso (5):
					se (estoqueCamisa[4]>0)
					{
					escreva("Você optou pela ", camisaTime[4], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
					leia(resposta)
						se (resposta == "S" ou resposta == "s") 
						{ 	estoqueCamisa[4] = estoqueCamisa[4] - 1
						  	produtosCamisaFutebol()
						 	
						} 
						senao 
					     {
					      produtosCamisaFutebol()
					     }	
					}
					senao
					{
						escreva("Ops, tivemos um arrastão da torcida do Tabajara Futebol Clube e não há mais camisas disponíveis, tente uma do Mengão!")
					}
					pare

					/*caso (6):
					//insira aqui função menu principal//
					pare*/

					/*caso (7):
					//insira aqui função IR PARA O CARRINHO//
					pare*/
					
					caso contrario:
					escreva("Opção inválida! Seu time vai pra série B assim.\n")
					produtosCamisaFutebol()
				}
			}
}	



/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5051; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */