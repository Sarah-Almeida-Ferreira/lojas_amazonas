programa
{
	inclua biblioteca Util --> u
	
	inteiro opcao_menu 
	cadeia resposta_login, usuario, senha, opcao_logoff
	cadeia vetor_usuario [10] = {"chevrand", "sarah", "patrick","materia", "aline", "theogit", "cgp", "", "", ""}
	cadeia vetor_senha [10] = {"123", "#7440", "321", "2027", "2005", "0301", "2022", "", "", ""} 
	
	funcao inicio()
	{
		boas_vindas()
		login()
	}
	funcao boas_vindas()
	{
		limpa()
		logo()
		u.aguarde(500)
		escreva("\n\nDeseja entrar na loja?\n")
		escreva("Digite [s] para SIM ou [n] para NÃO. ")
		leia(resposta_login)
	}
	funcao login()
	{	
		se(resposta_login != "s" e resposta_login != "n")
		{
			escreva ("Operação inválida! Tente novamente.")
			u.aguarde (500)
			limpa()
			boas_vindas()
		}
		senao se (resposta_login == "s")
		{
			verifica_login()
		}
		senao
		{
			escreva("Sem problemas, volte sempre que desejar!")
		}
	}
	funcao verifica_login()
	{
			limpa()
			escreva("Digite seu usuário: ")
				leia(usuario)
			escreva("Digite sua senha: ")
				leia(senha)
			
			se (usuario == "wanderson" e senha == "123" ou usuario == "patrick" e senha == "123" ou usuario == "sarah" e senha == "#7440" ou usuario == "materia" e senha == "2027" ou usuario == "aline" e senha == "2005" ou usuario == "theogit" e senha == "0301") 
			//(usuario == vetor_usuario[posicao_matriz] e senha ==vetor_senha[posicao_matriz])
			{
				limpa()
				menu()		
			}
			senao 
			{
				limpa()
				escreva("Usuário e senha incorretos. Tente novamente:\n\n")
				u.aguarde(1000)
				login()
			} 
		
			escreva("Digite seu usuário: ")
			leia(usuario)
			escreva("Digite sua senha: ")
			leia(senha)
			se(usuario == "wanderson" e senha == "123" ou usuario == "patrick" e senha == "123" ou usuario == "sarah" e senha == "#7440" ou usuario == "materia" e senha == "2027" ou usuario == "aline" e senha == "2005" ou usuario == "theogit" e senha == "0301")
			{
				limpa()
				escreva("Seja bem vindo(a), ", usuario, "!")		
			}
			senao 
			{
				limpa()
				escreva("Usuário e senha incorretos. Tente novamente:\n\n")
				login()
			}
	} 
	funcao menu()
	{
		limpa()
		//Menu principal do sistema.
		escreva("USUÁRIO: ", usuario, "\n")//Exibe o usuário que está logado no sistema.
		escreva("+------------------------------------------------------------+\n")
		escreva("|\t\tMenu de Opções\t\t\t  |\n")
		escreva("+------------------------------------------------------------+\n\n")
		escreva("# Selecione uma categoria:\n\n")
		escreva("  ", "ALIMENTOS", "\t\t[1]\n")
		escreva("  ", "ELETRÔNICOS", "\t\t[2]\n")
		escreva("  ", "VESTUÁRIO", "\t\t[3]\n\n")
		escreva("=============================================================\n")
		escreva("Finalizar Compra  [4]", "\t\t\t\t     Logoff [5]\n\n")
		leia(opcao_menu)//Coleta a opção selecionada no menu pelo usuário.

		//Direciona o usuário até a opção selecionada.
		escolha(opcao_menu)
		{
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
				logoff()
				pare
			caso contrario:
				limpa()
				escreva("Opção inválida, tente novamente!")
				u.aguarde(2000)
				menu()
		}
	}
	funcao logoff()
	{
		limpa()
		escreva("Deseja realmente retornar à tela inicial?\n\n")
		escreva("Digite [s] para SIM ou [n] para NÃO: ")
			leia(opcao_logoff)

		se(opcao_logoff == "s")
		{
			limpa()
			boas_vindas()
		}
		senao se(opcao_logoff == "n")
		{
			limpa()
			menu()
		}
	}
	funcao logo()
     {    u.aguarde(60)
     	escreva("░█████╗░███╗░░░███╗░█████╗░███████╗░█████╗░███╗░░██╗░█████╗░░██████╗")
	     u.aguarde(60)
	     escreva("\n██╔══██╗████╗░████║██╔══██╗╚════██║██╔══██╗████╗░██║██╔══██╗██╔════╝")
	      u.aguarde(60)
	     escreva("\n███████║██╔████╔██║███████║░░███╔═╝██║░░██║██╔██╗██║███████║╚█████╗░")
	      u.aguarde(60)
	     escreva("\n██╔══██║██║╚██╔╝██║██╔══██║██╔══╝░░██║░░██║██║╚████║██╔══██║░╚═══██╗")
	      u.aguarde(60)
	     escreva("\n██║░░██║██║░╚═╝░██║██║░░██║███████╗╚█████╔╝██║░╚███║██║░░██║██████╔╝")
	       u.aguarde(60)   
	     escreva("\n╚═╝░░╚═╝╚═╝░░░░░╚═╝╚═╝░░╚═╝╚══════╝░╚════╝░╚═╝░░╚══╝╚═╝░░╚═╝╚═════╝░")
     
     } 
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 361; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */