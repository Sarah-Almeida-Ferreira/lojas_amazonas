programa
{
	inclua biblioteca Util
	
	cadeia usuario = "wanderson"
	inteiro opcao_menu, opcao_logoff
	
	funcao inicio()
	{
		menu()
	}
	funcao menu()
	{
		//Menu principal do sistema.
		escreva("USUÁRIO: ", usuario, "\n")//Exibe o usuário que está logado no sistema.
		escreva("+------------------------------------------------------------+\n")
		escreva("|\t\t\t\tMenu de Opções\t\t\t  |\n")
		escreva("+------------------------------------------------------------+\n\n")
		escreva("# Selecione uma categoria:\n\n")
		escreva("  ", "ALIMENTOS", "\t\t[1]\n")
		escreva("  ", "ELETRÔNICOS", "\t\t[2]\n")
		escreva("  ", "VESTUÁRIO", "\t\t[3]\n\n")
		escreva("=============================================================\n")
		escreva("Finalizar Compra  [4]", "\t\t\t\t     Logoff [5]\n\n")
		leia(opcao_menu)//Coleta a opção selecionada no menu pelo usuário.

		//Direciona o usuário até a opção selecionada.
		escolha(opcao_menu){
			caso 1:
				limpa()
				escreva("Insira a funcão 'categoria_alimentos' aqui")
			pare
			caso 2:
				limpa()
				escreva("Insira a funcão 'categoria_eletronicos' aqui")
			pare
			caso 3:
				limpa()
				escreva("Insira a funcão 'categoria_vestuario' aqui")
			pare
			caso 4:
				limpa()
				escreva("Insira a funcão 'finalizar_compra' aqui")
			pare
			caso 5:
				limpa()
				escreva("Deseja realmente retornar à tela de Login?\n\n")
				escreva("Digite [1] para SIM ou [2] para NÃO: ")
				leia(opcao_logoff)

				se(opcao_logoff == 1){
					limpa()
					escreva("Insira a funcão 'login' aqui")
				}
				se(opcao_logoff == 2){
					limpa()
					menu()
				}
			pare
			caso contrario:
					limpa()
					escreva("Opção inválida, tente novamente!")
					Util.aguarde(2000)
					limpa()
					menu()
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1605; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */