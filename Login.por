programa{

	const inteiro numeroMaximoUsuarios = 10
	inteiro quantidadeAtualUsuarios = 0
	cadeia vetorLogins[numeroMaximoUsuarios] = {"","","","","","","","","",""}
	cadeia vetorSenhas[numeroMaximoUsuarios] = {"","","","","","","","","",""}
	cadeia usuarioLogado = ""
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
		listarUsuariosCompleto()
		enquanto((loginUsuario()e(nao fim))){
			escreva("SISTEMA\n")			
		}
		escreva("FIM\n")
	}
	
	funcao cargaInicialDeUsuarios(){
		adicionarUsuario("chevrand","123")
		adicionarUsuario("sarah","#7440")
		adicionarUsuario("patrick","321")
		adicionarUsuario("materia","2027")
		adicionarUsuario("theogit","2005")
		adicionarUsuario("aline","0301")
		adicionarUsuario("cgp","2022")
	}
	funcao logico loginUsuario(){
		cadeia usuario = ""
		cadeia senha = ""
		escreva("#Tela de login do sistema\n")
		escreva("Qual seu usuario? (insira um usuario vazio p/sair)\n")
		leia(usuario)
		se(usuario==""){
			fim = verdadeiro
			retorne falso
		}
		escreva("Qual sua Senha?\n")
		leia(senha)
		se(validarLoginUsuario(usuario, senha)){
			escreva("SUCESSO: O usuário ",usuario," está logado\n")
			usuarioLogado = usuario
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
		usuarioLogado = ""
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
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 347; 
 * @PONTOS-DE-PARADA = 24, 25;
 * @SIMBOLOS-INSPECIONADOS = {nome, 78, 39, 4}-{indice, 88, 10, 6}-{nome, 117, 46, 4}-{achou, 118, 9, 5}-{indice, 119, 10, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */