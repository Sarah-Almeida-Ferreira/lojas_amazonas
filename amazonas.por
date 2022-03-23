programa
{
	cadeia resposta_login, usuario, senha
	
	funcao inicio()
	{
		boas_vindas()
		login()
	}
	funcao boas_vindas()
	{
		escreva("Deseja entrar na loja?\n")
		escreva("Digite [s] para SIM ou [n] para NÃO. ")
		leia(resposta_login)
		limpa()
	}
	funcao login()
	{
		se(resposta_login == "s" ou resposta_login == "S"){
			escreva("Digite seu usuário: ")
			leia(usuario)
			escreva("Digite sua senha: ")
			leia(senha)
		}
		senao{
			escreva("Sem problemas, volte sempre que desejar!")
		}
		se((usuario == "wanderson" e senha == "123") ou (usuario == "patrick" e senha == "123")
		ou (usuario == "sara" e senha == "#7440") ou (usuario == "materia" e senha == "2027") ou (usuario == "aline" e senha == "2005")
		ou (usuario == "theogit" e senha == "0301")){
			limpa()
			escreva("Seja bem vindo(a), ", usuario, "!")			
		}
		senao
		{
			escreva("Usuário e senha incorretos, tente novamente!")
			login()
		}
	}
	funcao menu()
	{
		escreva("Menu")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 831; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */