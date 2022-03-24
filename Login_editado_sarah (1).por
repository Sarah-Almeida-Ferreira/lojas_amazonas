programa{
	inclua biblioteca Util --> u
	
	const inteiro numeroMaximoUsuarios = 10
	inteiro quantidadeAtualUsuarios = 0, opcao_menu
	cadeia vetorLogins[numeroMaximoUsuarios] = {"","","","","","","","","",""}
	cadeia vetorSenhas[numeroMaximoUsuarios] = {"","","","","","","","","",""}
	cadeia usuarioLogado = "", opcao_entrar, opcao_logoff
	logico fim = falso
	
//	funcao inicio(){
//	funcao cargaInicialDeUsuarios()
//	funcao logico loginUsuario(){
//	funcao logoutUsuario(){
//	funcao listarUsuariosSigiloso()
//	funcao listarUsuariosCompleto()
//	funcao logico adicionarUsuario(cadeia nome, cadeia senha)
//	funcao logico alterarNomeUsuario(cadeia nomeAntigo, cadeia nomeNovo)
//	funcao logico alterarSenhaUsuario(cadeia nome, cadeia senhaNova)
//	funcao logico validarLoginUsuario(cadeia nome, cadeia senha)
//	funcao logico pesquisarSeEhUsuario(cadeia nome)
//	funcao inteiro pesquisarIndiceUsuario(cadeia nome)

	funcao inicio(){
		cargaInicialDeUsuarios()
		
		//listarUsuariosCompleto()
		//enquanto((loginUsuario()e(nao fim))){
		//	entrar_na_loja()
		//}
		//escreva("Volte sempre!\n")
	}
	funcao cargaInicialDeUsuarios(){
		adicionarUsuario("chevrand","123")
		adicionarUsuario("sarah","#7440")
		adicionarUsuario("patrick","321")
		adicionarUsuario("materia","2027")
		adicionarUsuario("theogit","2005")
		adicionarUsuario("aline","0301")
		adicionarUsuario("cgp","2022")
		entrar_na_loja()
	}
	funcao entrar_na_loja(){
		logo()
		escreva("\t\t----Deseja entrar na loja?----")
		escreva("\n\nPressione [s] para sim e [n] para não: ")
			leia(opcao_entrar)
		se (opcao_entrar != "s" e opcao_entrar != "n"){
			escreva("\n\nOperação inválida! Tente novamente.")
			u.aguarde (500)
			entrar_na_loja()
		}
		senao se (opcao_entrar == "s"){
			loginUsuario()
		}
		senao{
			limpa()
			fim = verdadeiro
			escreva ("Volte sempre! Já estamos com saudade.")
		}
	}
	funcao logico loginUsuario(){
		cadeia usuario = ""
		cadeia senha = ""
		logo()
		escreva("\t\t----Deseja fazer login?---- \n\nDigite seu usuário: \n(ou pressione enter para sair)\n")
		leia(usuario)
		se(usuario==""){
			fim = verdadeiro
			retorne falso
		}
		escreva("Digite sua senha:\n")
		leia(senha)
		se(validarLoginUsuario(usuario, senha)){
			escreva("SUCESSO: O usuário ",usuario," está logado\n")
			usuarioLogado = usuario
			menu()
			fim = falso
			retorne verdadeiro
		}senao{
			escreva("FALHA: usuário ou senha inválida\n")
			fim = falso
			retorne falso
		}
	}
	funcao logoutUsuario(){
		escreva("O usuario ",usuarioLogado,"foi deslogado\n")
		
	}
	funcao listarUsuariosSigiloso(){
		para(inteiro i=0;i<numeroMaximoUsuarios;i++){
			escreva((i+1),"-",vetorLogins[i],"\n")
		}
	}
	funcao listarUsuariosCompleto(){
		para(inteiro i=0;i<numeroMaximoUsuarios;i++){
			escreva((i+1),"-",vetorLogins[i],"/",vetorSenhas[i],"\n")
		}
	}
	funcao logico adicionarUsuario(cadeia nome, cadeia senha){
		se(quantidadeAtualUsuarios<numeroMaximoUsuarios){
			vetorLogins[quantidadeAtualUsuarios]=nome
			vetorSenhas[quantidadeAtualUsuarios]=senha
			quantidadeAtualUsuarios++
			retorne verdadeiro
		}
		retorne falso
	}
	funcao logico alterarNomeUsuario(cadeia nomeAntigo, cadeia nomeNovo){
		inteiro indice = pesquisarIndiceUsuario(nomeAntigo)
		se(indice<numeroMaximoUsuarios){
			vetorLogins[indice]=nomeNovo
			retorne verdadeiro
		}
		retorne falso
	}
	funcao logico alterarSenhaUsuario(cadeia nome, cadeia senhaNova){
		inteiro indice = pesquisarIndiceUsuario(nome)
		se(indice<numeroMaximoUsuarios){
			vetorSenhas[indice]=senhaNova
			retorne verdadeiro
		}
		retorne falso
	}
	funcao logico validarLoginUsuario(cadeia nome, cadeia senha){
		inteiro indice = pesquisarIndiceUsuario(nome)
		se((indice<numeroMaximoUsuarios)e(vetorSenhas[indice]==senha)){
			retorne verdadeiro
		}
		retorne falso
	}
	funcao logico pesquisarSeEhUsuario(cadeia nome){
		inteiro indice = pesquisarIndiceUsuario(nome)
		se(indice<numeroMaximoUsuarios){
			retorne verdadeiro
		}
		retorne falso
	}
	funcao inteiro pesquisarIndiceUsuario(cadeia nome){
		logico achou = falso
		inteiro indice = -1
		faca{
			indice++
			achou=(vetorLogins[indice]==nome)
		}enquanto((nao achou)e(indice<numeroMaximoUsuarios))
		se(achou){
			retorne indice
		}
		retorne numeroMaximoUsuarios
	}
	funcao menu()
	{
		limpa()
		//Menu principal do sistema.
		escreva("USUÁRIO: ", usuarioLogado, "\n")//Exibe o usuário que está logado no sistema.
		escreva("+--------------------------------------------------------------+\n")
		escreva("|\t\t\tMenu de Opções\t\t\t       |\n")
		escreva("+--------------------------------------------------------------+\n\n")
		escreva("\t\t   Selecione uma categoria:\n\n")
		escreva("░░░░░░░░░░░░░░░\t\t", "░░░░░░░░░░░░░░░\t\t", "░░░░░░░░░░░░░░░\n")
		escreva("░░░█▀█▀█░░░░░░░\t\t", "░░░█▀▀▀▀▀▀▀█░░░\t\t", "░░████░░░████░░\n")
		escreva("░░░█▄█▄▀▄░░░░░░\t\t", "░░░█░█████░█░░░\t\t", "░░█░░░███░░░█░░\n")
		escreva("░░░█▄█▄█▄█░░░░░\t\t", "░░░█░█████░█░░░\t\t", "░░███░░░░░███░░\n")
		escreva("░░█████████░░░░\t\t", "░░░█░█████░█░░░\t\t", "░░░░█░░░░░█░░░░\n")
		escreva("░░█████████░░░░\t\t", "░░░█░░▄▄▄░░█░░░\t\t", "░░░░███████░░░░\n")
		escreva("░░█████████░░░░\t\t", "░░░█▄▄▄▄▄▄▄█░░░\t\t", "░░░░░░░░░░░░░░░\n")
		escreva("     ", "Doces", "[1]\t\t ", "Eletrônicos", "[2]\t\t  ", "Vestuário", "[3]\n\n")
		escreva("===============================================================\n")
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
			usuarioLogado = ""
			u.aguarde(500)
			limpa()
			loginUsuario()
		}
		senao se(opcao_logoff == "n")
		{
			limpa()
			menu()
		}
	}
	funcao logo()
     {    limpa()
     	u.aguarde(60)
     	escreva("				░█████╗░███╗░░░███╗░█████╗░███████╗░█████╗░███╗░░██╗░█████╗░░██████╗")
	     u.aguarde(60)
	     escreva("\n				██╔══██╗████╗░████║██╔══██╗╚════██║██╔══██╗████╗░██║██╔══██╗██╔════╝")
	      u.aguarde(60)
	     escreva("\n				███████║██╔████╔██║███████║░░███╔═╝██║░░██║██╔██╗██║███████║╚█████╗░")
	      u.aguarde(60)
	     escreva("\n				██╔══██║██║╚██╔╝██║██╔══██║██╔══╝░░██║░░██║██║╚████║██╔══██║░╚═══██╗")
	      u.aguarde(60)
	     escreva("\n				██║░░██║██║░╚═╝░██║██║░░██║███████╗╚█████╔╝██║░╚███║██║░░██║██████╔╝")
	       u.aguarde(60)   
	     escreva("\n				╚═╝░░╚═╝╚═╝░░░░░╚═╝╚═╝░░╚═╝╚══════╝░╚════╝░╚═╝░░╚══╝╚═╝░░╚═╝╚═════╝░")
     	u.aguarde(500)
     	limpa()
     } 
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 6443; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */