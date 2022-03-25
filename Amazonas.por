programa{
	inclua biblioteca Util --> u
	inclua biblioteca Matematica--> mat
	inclua biblioteca Sons
	const inteiro numeroMaximoProdutos = 5
	const inteiro numeroMaximoUsuarios = 10
	
	real valorGuloseimas = 4.99
	real valorVestuario = 40.99
	real valorEletronicos = 400.99
	inteiro quantidadeAtualUsuarios = 0, i, opcao
	inteiro estoqueGuloseimas[numeroMaximoProdutos]= {3,3,3,3,3}
	inteiro estoqueCamisa[numeroMaximoProdutos]= {3,3,3,3,3}
	inteiro estoqueEletronicos[numeroMaximoProdutos]= {3,3,3,3,3}
	cadeia descricaoItensGuloseimas = ".\n============================================\nChocolates pra adoçar a vida!\nContém alguma porcentagem de cacau e leite.\nNão contém regime.\n============================================\n \n"
	cadeia semEstoqueGuloseimas[2] = {"Ops, o PAC-MAN comeu todo esse produto e não há mais disponíveis, tente uma outra guloseima!", "Ops, opção inválida, tente novamente!"}
	cadeia vetorLogins[numeroMaximoUsuarios] = {"","","","","","","","","",""}
	cadeia vetorSenhas[numeroMaximoUsuarios] = {"","","","","","","","","",""}
	cadeia usuarioLogado = "", opcao_entrar, resposta
	cadeia eletronicos[numeroMaximoProdutos] = {"SMARTWATCH","UAIPHONE ÉPOU","SMART SPEAKER ALEXIA","SMART SPEAKER ASSISTENTE GÚGOL","SMART TV"}
	cadeia guloseimas[numeroMaximoProdutos] = {"KIT KAT","M&M'S","AMANDITA","TORTUGUITA","KINDER OVO"}
	cadeia vestuario[numeroMaximoProdutos] = {"CAMISETA DO FLAMENGO","CAMISETA DO VASCO","CAMISETA DO BOTAFOGO","CAMISETA DO FLUMINENSE","CAMISETA DO TABAJARA"}
	cadeia descricaoItensVestuario = ".\n============================================\nCamisa do time do seu coração S2\nTecido 100% poliéster com tratamento DRY.\nVersão quase oficial licenciada.\n============================================\n \n"
	cadeia semEstoqueVestuario[2] = {"Ops, tivemos um arrastão da torcida do Flamengo e não há mais camisas disponíveis, tente de outro time!", "Ops, opção inválida, seu time vai pra série B assim!"}
	caracter opcao_menu, opcao_logoff
	logico fim = falso	
	inteiro carrinhoGuloseimas[numeroMaximoProdutos]= {0,0,0,0,0}
	inteiro carrinhoVestuario[numeroMaximoProdutos]= {0,0,0,0,0}
	inteiro carrinhoEletronicos[numeroMaximoProdutos]= {0,0,0,0,0}
	real faturaCarrinho
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
	}
	funcao cargaInicialDeUsuarios(){
		adicionarUsuario("admin","admin")
		adicionarUsuario("chevrand","123")
		adicionarUsuario("sarah","#7440")
		adicionarUsuario("patrick","321")
		adicionarUsuario("materia","2027")
		adicionarUsuario("theogit","0301")
		adicionarUsuario("aline","2005")
		adicionarUsuario("cgp","2022")
		entrar_na_loja()
	}
	funcao entrar_na_loja(){
		logo()
		
		escreva("=== DESEJA ENTRAR NA LOJA? \n")
		escreva("=== Pressione [s] para SIM e [n] para NÃO: ")
			leia(opcao_entrar)
		se (opcao_entrar != "s" e opcao_entrar != "n"){
			limpa()
			escreva("Operação inválida! Tente novamente.")
			u.aguarde (2000)
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
		limpa()
		logo()
		escreva("\t\t\t=== LOGIN ===")
		escreva("\n\n Digite seu usuário:\n(ou pressione [ENTER] para sair)\n")
		leia(usuario)
		se(usuario==""){
			fim = verdadeiro
			retorne falso
		}
		escreva("Digite sua senha:\n")
		leia(senha)
		se(validarLoginUsuario(usuario, senha)){
			limpa()
			logo()
			escreva("Seja bem vindo(a), ",usuario,"!\n")
			u.aguarde(2000)
			limpa()
			usuarioLogado = usuario
			inicio_menu_amazonas()
			fim = falso
			retorne verdadeiro
		}senao{
			escreva("Usuário ou senha inválidos. Tente novamente!\n")
			u.aguarde(2000)
			loginUsuario()
			fim = falso
			retorne falso
		}
	}
	funcao logoutUsuario(){
		escreva("O usuario ",usuarioLogado,"foi deslogado\n")
		
	}
	funcao listarUsuariosSigiloso(){
		para(inteiro j=0;j<numeroMaximoUsuarios;j++){
			escreva((j+1),"-",vetorLogins[j],"\n")
		}
	}
	funcao listarUsuariosCompleto(){
		para(inteiro k=0;k<numeroMaximoUsuarios;k++){
			escreva((k+1),"-",vetorLogins[k],"/",vetorSenhas[k],"\n")
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
			escreva ("ERRO")
		}
		retorne falso
	}
	funcao inteiro pesquisarIndiceUsuario(cadeia nome){
		logico achou = falso
		inteiro indice = -1
		faca{
			indice++
			achou=(vetorLogins[indice]==nome)
		}enquanto((nao achou)e(indice<numeroMaximoUsuarios e indice < 9))
		se(achou){
			retorne indice
		}
		
		retorne numeroMaximoUsuarios
	}
	funcao inicio_menu_amazonas()
	{
		
		se(usuarioLogado == "admin"){
			bicicleta_s_rodinha()
			limpa()	
			menu_adm()
		}senao{
			menu()
		}
	}
	funcao menu_adm()
	{
		//Menu principal do sistema.
		logo()
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
		escreva("Gerenciar Produtos\t[4]", "\tGerenciar Usuários\t[5]\n")
		escreva("Finalizar Compra\t[6]", "\tLogoff\t\t\t[7]\n\n")
		leia(opcao_menu)//Coleta a opção selecionada no menu pelo usuário.

		//Direciona o usuário até a opção selecionada.
		se(opcao_menu != '1' e opcao_menu != '2' e opcao_menu != '3'
		e opcao_menu != '4' e opcao_menu != '5' e opcao_menu != '6' e opcao_menu != '7'){
			limpa()
			escreva("Opção inválida, tente novamente!")
			u.aguarde(2000)
			menu_adm()
		}
		escolha(opcao_menu){
			caso '1':
				limpa()
				produtosAlimentos()
				pare
			caso '2':
				limpa()
				produtosEletronicos()
				pare
			caso '3':
				limpa()
				produtosCamisaFutebol()
				pare
			caso '4':
				limpa()
				escreva("Insira a funcão 'gerenciar_produtos' aqui")
				pare
			caso '5':
				limpa()
				escreva("Insira a funcão 'gerenciar_usuarios' aqui")
				pare
			caso '6':
				finalizarCompra()
				pare
			caso '7':
				limpa()
				escreva("Deseja realmente retornar à tela de Login?\n\n")
				escreva("Digite [1] para SIM ou [2] para NÃO: ")
				leia(opcao_logoff)			
				escolha(opcao_logoff){
					caso '1':
						limpa()
						limpar_carrinho()
						loginUsuario()
						pare
					caso '2':
						limpa()
						menu_adm()
						pare
					caso contrario:
						limpa()
						escreva("Opção inválida, tente novamente!")
						u.aguarde(2000)
						limpa()
						menu_adm()
				}				
				pare
		}
	}
	funcao menu()
	{
		limpa()
		//Menu principal do sistema.
		logo()
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
		se(opcao_menu != '1' e opcao_menu != '2' e opcao_menu != '3'
		e opcao_menu != '4' e opcao_menu != '5'){
			limpa()
			escreva("Opção inválida, tente novamente!")
			u.aguarde(2000)
			menu()
		}
		escolha(opcao_menu){
			caso '1':
				limpa()
				produtosAlimentos()
				pare
			caso '2':
				limpa()
				produtosEletronicos()
				pare
			caso '3':
				limpa()
				produtosCamisaFutebol()
				pare
			caso '4':
				limpa()
				finalizarCompra()
				pare 
			caso '5':
				limpa()
				escreva("Deseja realmente retornar à tela de Login?\n\n")
				escreva("Digite [1] para SIM ou [2] para NÃO: ")
				leia(opcao_logoff)			
				escolha(opcao_logoff){
					caso '1':
						limpa()
						limpar_carrinho()
						loginUsuario()
						pare
					caso '2':
						limpa()
						menu()
						pare
					caso contrario:
						limpa()
						escreva("Opção inválida, tente novamente!")
						u.aguarde(2000)
						limpa()
						menu()
				}				
				pare
		}
	}
		funcao bicicleta_s_rodinha()
	{
		inteiro risadaViolenta = Sons.carregar_som("risadaViolenta.mp3")
		Sons.definir_volume(100)
		Sons.reproduzir_som(risadaViolenta, falso)
     	
		escreva("         ▄█▀▒▒▒▒▒▒▄▒▒▒▒▒▒▐█▌     \n")
		escreva("        ▄█▒▒▒▒▒▒▒▒▀█▒▒▒▒▒▐█▌     \n")
		escreva("       ▄█▒▒▒▒▒▒▒▒▒▒▀█▒▒▒▄██      \n")
		escreva("      ▄█▒▒▒▒▒▒▒▒▒▒▒▒▀█▒▄█▀█▄     \n")
		escreva("     ▄█▒▒▒▒▒▒▒▒▒▒▒▒▒▒██▀▒▒▒█▄    \n")
		escreva("    ▄█▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒█▄   \n")
		escreva("   ▄█▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒█▄  \n")
		escreva("  ▄█▒▒▒▄██████▄▒▒▒▒▄█████▄▒▒▒▒█  \n")
		escreva("  █▒▒▒█▀░░░░░▀█─▒▒▒█▀░░░░▀█▒▒▒█  \n")
		escreva("  █▒▒▒█░░▄░░░░▀████▀░░░▄░░█▒▒▒█  \n")
		escreva("▄███▄▒█▄░▐▀▄░░░░░░░░░▄▀▌░▄█▒▒███▄\t▒█▀▀█ █▀▀█ █▀▀█ ▀▀█▀▀ █▀▀█ █▀▀ █▀▀█ █░░ █▀▀█ 　 ▒█▀▀█ ░▀░ █▀▀ ░▀░ █▀▀ █░░ █▀▀ ▀▀█▀▀ █▀▀█ 　 █▀▀ █▀▀ █▀▄▀█\n")
		escreva("█▀░░█▄▒█░▐▐▀▀▄▄▄─▄▄▄▀▀▌▌░█▒▒█░░▀█\t▒█▄▄█ █▄▄▀ █░░█ ░░█░░ █░░█ █░░ █░░█ █░░ █░░█ 　 ▒█▀▀▄ ▀█▀ █░░ ▀█▀ █░░ █░░ █▀▀ ░░█░░ █▄▄█ 　 ▀▀█ █▀▀ █░▀░█\n")
		escreva("█░░░░█▒█░▐▐──▄▄─█─▄▄──▌▌░█▒█░░░░█\t▒█░░░ ▀░▀▀ ▀▀▀▀ ░░▀░░ ▀▀▀▀ ▀▀▀ ▀▀▀▀ ▀▀▀ ▀▀▀▀ 　 ▒█▄▄█ ▀▀▀ ▀▀▀ ▀▀▀ ▀▀▀ ▀▀▀ ▀▀▀ ░░▀░░ ▀░░▀ 　 ▀▀▀ ▀▀▀ ▀░░░▀\n")
		escreva("█░▄░░█▒█░▐▐▄─▀▀─█─▀▀─▄▌▌░█▒█░░▄░█\n")
		escreva("█░░█░█▒█░░▌▄█▄▄▀─▀▄▄█▄▐░░█▒█░█░░█\t▒█▀▀█ █▀▀█ █▀▀▄ ░▀░ █▀▀▄ █░░█ █▀▀█ 　 ░█▀▀█ ▀▀█▀▀ ░▀░ ▀█░█▀ █▀▀█ █▀▀▄ █▀▀█ █ █ █\n")
		escreva("█▄░█████████▀░░▀▄▀░░▀█████████░▄█\t▒█▄▄▀ █░░█ █░░█ ▀█▀ █░░█ █▀▀█ █▄▄█ 　 ▒█▄▄█ ░░█░░ ▀█▀ ░█▄█░ █▄▄█ █░░█ █░░█ ▀ ▀ ▀\n")
		escreva("─██▀░░▄▀░░▀░░▀▄░░░▄▀░░▀░░▀▄░░▀██ \t▒█░▒█ ▀▀▀▀ ▀▀▀░ ▀▀▀ ▀░░▀ ▀░░▀ ▀░░▀ 　 ▒█░▒█ ░░▀░░ ▀▀▀ ░░▀░░ ▀░░▀ ▀▀▀░ ▀▀▀▀ ▄ ▄ ▄\n")
		escreva("██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██\n")
		escreva("█░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░█\n")
		escreva("█░▄░░░░░░░░░░░░░░░░░░░░░░░░░░░▄░█\n")
		escreva("█░▀█▄░░░░░░░░░░░░░░░░░░░░░░░▄█▀░█\n")
		escreva("█░░█▀███████████████████████▀█░░█\n")
		escreva("█░░▀█───█───█───█───█───█───█▀░░█\n")
		escreva("█░░░▀█▄▄█▄▄▄█▄▄▄█▄▄▄█▄▄▄█▄▄█▀░░░█\n")
		escreva("▀█░░░█──█───█───█───█───█──█░░░█▀\n")
		escreva(" ▀█░░▀█▄█───█───█───█───█▄█▀░░█▀ \n")
		escreva("  ▀█░░░▀▀█▄▄█───█───█▄▄█▀▀░░░█▀  \n")
		escreva("   ▀█░░░░░▀▀█████████▀▀░░░░░█▀   \n")
		escreva("    ▀█░░░░░▄░░░░░░░░░▄░░░░░█▀    \n")
		escreva("     ▀██▄░░░▀▀▀▀▀▀▀▀▀░░░▄██▀     \n")

		Util.aguarde(4000)
	}
	funcao limpar_carrinho(){
		limpar_vetor(carrinhoGuloseimas, numeroMaximoProdutos)
		limpar_vetor(carrinhoVestuario,numeroMaximoProdutos)
		limpar_vetor(carrinhoEletronicos,numeroMaximoProdutos)
		faturaCarrinho = 0.0
	}
	funcao limpar_vetor(inteiro vetor[],inteiro quantidade){
		para(inteiro y=0;y<quantidade;y++){
			vetor[y] = 0
		}
	}
	funcao logoff()
	{
		limpa()
		escreva("Deseja realmente retornar à tela inicial?\n\n")
		escreva("Digite [s] para SIM ou [n] para NÃO: ")
			leia(opcao_logoff)

		se(opcao_logoff == 's')
		{
			usuarioLogado = ""
			u.aguarde(500)
			limpa()
			loginUsuario()
		}
		senao se(opcao_logoff == 'n')
		{
			limpa()
			menu()
		}
	}
	funcao logo()
     {    limpa()
     
     	u.aguarde(60)
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
     	u.aguarde(1000)
     	escreva("\n\n\n")
     } 
     funcao produtosCamisaFutebol(){
		limpa()
				
		escreva("============ CAMISAS DE FUTEBOL ====================\n")
		escreva("============ VISTA A CAMISA DO SEU TIME ============\n\n")		
		para (i=0; i<=4; i++){
			u.aguarde(1000)
			escreva("\n", vestuario[i], " - POR APENAS R$: ", valorVestuario,"\nEstoque: ", estoqueCamisa[i], descricaoItensVestuario)
          }		
		escreva("============ CAMISAS DE FUTEBOL ====================\n")
		escreva("============ VISTA A CAMISA DO SEU TIME ============\n\n")
		u.aguarde(1000)
		escreva("Escolha a camisa do seu time dentre as opções [1], [2], [3], [4] ou [5]:\n[1]FLAMENGO\n[2]VASCO\n[3]BOTAFOGO\n[4]FLUMINENSE\n[5]TABAJARA\n[6]Menu Principal\n[7]Carrinho\n============================================\nOpção: ")	 
		leia(opcao)
		escolha (opcao){
			caso (1): 
				se (estoqueCamisa[0]>0){
					escreva("Você optou pela ", vestuario[0], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
					leia(resposta)
					se (resposta == "S" ou resposta == "s"){
						estoqueCamisa[0] = estoqueCamisa[0] - 1
						carrinhoVestuario[0] = carrinhoVestuario[0] + 1
					  	produtosCamisaFutebol()				 	
					}senao{
				      produtosCamisaFutebol()
				     }	
				}senao{
					escreva(semEstoqueVestuario[0])
					u.aguarde(4000)
					escreva("\n")
					produtosCamisaFutebol()
				}			
				pare
			caso (2):
				se (estoqueCamisa[1]>0){
					escreva("Você optou pela ", vestuario[1], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
					leia(resposta)
					se (resposta == "S" ou resposta == "s"){
						estoqueCamisa[1] = estoqueCamisa[1] - 1
						carrinhoVestuario[1] = carrinhoVestuario[1] + 1
					  	produtosCamisaFutebol()					 	
					}senao{
				      produtosCamisaFutebol()
				     }	
				}senao{
					escreva(semEstoqueVestuario[0])
					u.aguarde(4000)
					escreva("\n")
					produtosCamisaFutebol()
				}
				pare	
			caso (3):
				se (estoqueCamisa[2]>0){
					escreva("Você optou pela ", vestuario[2], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
					leia(resposta)
					se (resposta == "S" ou resposta == "s"){
					 	estoqueCamisa[2] = estoqueCamisa[2] - 1
					 	carrinhoVestuario[2] = carrinhoVestuario[2] + 1
					  	produtosCamisaFutebol()
					 	
					}senao{
				     	produtosCamisaFutebol()
				     }	
				}senao{
					escreva(semEstoqueVestuario[0])
					u.aguarde(4000)
					escreva("\n")
					produtosCamisaFutebol()
				}
				pare
			caso (4):
				se (estoqueCamisa[3]>0){
					escreva("Você optou pela ", vestuario[3], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
					leia(resposta)
					se (resposta == "S" ou resposta == "s"){
						estoqueCamisa[3] = estoqueCamisa[3] - 1
						carrinhoVestuario[3] = carrinhoVestuario[3] + 1
					  	produtosCamisaFutebol()				 	
					}senao{
				      produtosCamisaFutebol()
				     }	
				}senao{
					escreva(semEstoqueVestuario[0])
					u.aguarde(4000)
					escreva("\n")
					produtosCamisaFutebol()
				}
				pare
			caso (5):
				se (estoqueCamisa[4]>0){
					escreva("Você optou pela ", vestuario[4], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
					leia(resposta)
					se (resposta == "S" ou resposta == "s"){ 
					 	estoqueCamisa[4] = estoqueCamisa[4] - 1
					 	carrinhoVestuario[4] = carrinhoVestuario[4] + 1
					  	produtosCamisaFutebol()					 	
					}senao{
				     	produtosCamisaFutebol()
				     }	
				}senao{
					escreva(semEstoqueVestuario[0])
					u.aguarde(4000)
					escreva("\n")
					produtosCamisaFutebol()
				}
				pare
			caso (6):
				inicio_menu_amazonas()
				pare
			caso (7):
				
				finalizarCompra()
				pare			
			caso contrario:
				escreva(semEstoqueVestuario[1])
				u.aguarde(2000)
				escreva("\n")					
				produtosCamisaFutebol()
		}
	}
//---------------------------------------------------------------------------------------------
// INICIO Codigo Patrick - produtoAlimentos
//---------------------------------------------------------------------------------------------
/*
	funcao produtosAlimentos()
	 
	Produtos
	a. Nome do produto; 
	b. Descrição breve do produto;
	c. Quantidade de itens;
	d. Preço do produto (ex: R$ 10,99);
	e. Opção de inserir no carrinho;
	f. Opção de voltar ao menu anterior;
	g. Dois tratamentos de erro nos produtos.
*/
	funcao produtosAlimentos(){
		//cadeia guloseimas[5] = {"KIT KAT","M&M'S","AMANDITA","TORTUGUITA","KINDER OVO"}
		
		
		
		limpa()
		escreva("============ GULOSEIMAS & GORDICES =========================\n")
		escreva("============ VIRE UM AVIÃO E AUMENTE SEUS PNEUS ============\n\n")		
		para (i=0; i<=4; i++){
			u.aguarde(1000)
			escreva("\n", guloseimas[i], " - POR APENAS R$: ", valorGuloseimas,"\nEstoque: ", estoqueGuloseimas[i], descricaoItensGuloseimas)
          }		
		escreva("============ GULOSEIMAS & GORDICES =========================\n")
		escreva("============ VIRE UM AVIÃO E AUMENTE SEUS PNEUS ============\n\n")
		u.aguarde(1000)
		escreva("Escolha a sua guloseima dentre as opções [1], [2], [3], [4] ou [5]:\n[1]KIT KAT\n[2]M&M'S\n[3]AMANDITA\n[4]TORTUGUITA\n[5]KINDER OVO\n[6]Menu principal\n[7]Carrinho\n============================================\n Opção: ")	 
		leia(opcao)
		escolha (opcao){
			caso (1): 
				se (estoqueGuloseimas[0]>0){
					escreva("Você optou pela ", guloseimas[0], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
					leia(resposta)
					se (resposta == "S" ou resposta == "s"){
						estoqueGuloseimas[0] = estoqueGuloseimas[0] - 1
						carrinhoGuloseimas[0] = carrinhoGuloseimas[0] + 1
					  	produtosAlimentos()					 	
					}senao{
				     	produtosAlimentos()
				     }	
				}senao{
					escreva(semEstoqueGuloseimas[0])
					u.aguarde(4000)
					escreva("\n")
					produtosAlimentos()
				}				
				pare	
			caso (2):
				se (estoqueGuloseimas[1]>0){
					escreva("Você optou pela ", guloseimas[1], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
					leia(resposta)
					se (resposta == "S" ou resposta == "s"){
						estoqueGuloseimas[1] = estoqueGuloseimas[1] - 1
						carrinhoGuloseimas[1] = carrinhoGuloseimas[1] + 1
					  	produtosAlimentos()					 	
					}senao{
				      	produtosAlimentos()
				     }	
				}senao{
					escreva(semEstoqueGuloseimas[0])
					u.aguarde(4000)
					escreva("\n")
					produtosAlimentos()
				}
				pare				
			caso (3):
				se (estoqueGuloseimas[2]>0){
					escreva("Você optou pela ", guloseimas[2], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
					leia(resposta)
					se (resposta == "S" ou resposta == "s"){
						estoqueGuloseimas[2] = estoqueGuloseimas[2] - 1
						carrinhoGuloseimas[2] = carrinhoGuloseimas[2] + 1
					  	produtosAlimentos()					 	
					}senao{
				     	produtosAlimentos()
				     }	
				}senao{
					escreva(semEstoqueGuloseimas[0])
					u.aguarde(4000)
					escreva("\n")
					produtosAlimentos()
				}
				pare
			caso (4):
				se (estoqueGuloseimas[3]>0){
					escreva("Você optou pela ", guloseimas[3], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
					leia(resposta)
					se (resposta == "S" ou resposta == "s"){
						estoqueGuloseimas[3] = estoqueGuloseimas[3] - 1
						carrinhoGuloseimas[3] = carrinhoGuloseimas[3] + 1
					  	produtosAlimentos()					 	
					}senao{
				      produtosAlimentos()
				     }	
				}senao{
					escreva(semEstoqueGuloseimas[0])
					u.aguarde(4000)
					escreva("\n")
					produtosAlimentos()
				}
				pare
			caso (5):
				se (estoqueGuloseimas[4]>0){
					escreva("Você optou pela ", guloseimas[4], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
					leia(resposta)
					se (resposta == "S" ou resposta == "s"){
						estoqueGuloseimas[4] = estoqueGuloseimas[4] - 1
						carrinhoGuloseimas[4] = carrinhoGuloseimas[4] + 1
					  	produtosAlimentos()				 	
					}senao{
				      	produtosAlimentos()
				     }	
				}senao{
					escreva(semEstoqueGuloseimas[0])
					u.aguarde(4000)
					escreva("\n")
					produtosAlimentos()
				}
				pare
			caso (6):
				inicio_menu_amazonas()
				pare
			caso (7):
				finalizarCompra()
				pare			
			caso contrario:
				escreva(semEstoqueGuloseimas[1])
				u.aguarde(4000)
				escreva("\n")
				logo()
				produtosAlimentos()
		}
	}
//---------------------------------------------------------------------------------------------
// FIM Codigo Patrick - produtoAlimentos
//---------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------
// INICIO Codigo Patrick - produtoEletronicos
//---------------------------------------------------------------------------------------------
/*
	funcao produtosEletronicos ()
	
	Produtos
	a. Nome do produto; 
	b. Descrição breve do produto;
	c. Quantidade de itens;
	d. Preço do produto (ex: R$ 10,99);
	e. Opção de inserir no carrinho;
	f. Opção de voltar ao menu anterior;
	g. Dois tratamentos de erro nos produtos.
*/
	funcao produtosEletronicos (){
		
		
		cadeia descricaoItensEletronicos = ".\n============================================\nProdutos que facilitarão sua vida em alta tecnologia!\n100% mais SMARTS que você!!.\nVersão brasileira Herbert Richards.\n============================================\n \n"
		cadeia semEstoqueEletronicos[2] = {"A revolução das máquinas começou e o seu produto está indisponível, arrisque outro Smart produto!", "Ops, falha na Matrix, tente novamente!"}
		
		limpa()
		escreva("============ SMART TECHNOLOGIES =============\n")
		escreva("============ SUA VIDA MAIS SMART ============\n\n")		
		para (i=0; i<=4; i++){
			u.aguarde(1000)
			escreva("\n", eletronicos[i], " - POR APENAS R$: ", valorEletronicos,"\nEstoque: ", estoqueEletronicos[i], descricaoItensEletronicos)
          }		
		escreva("============ SMART TECHNOLOGIES =============\n")
		escreva("============ SUA VIDA MAIS SMART ============\n\n")
		u.aguarde(1000)
		escreva("Escolha o seu gadget dentre as opções [1], [2], [3], [4] ou [5]:\n[1]SMARTWATCH\n[2]UAIPHONE ÉPOU\n[3]SMART SPEAKER ALEXIA\n[4]SMART SPEAKER ASSISTENTE GÚGOL\n[5]SMART TV\n[6]Menu principal\n[7]Carrinho\n============================================\nOpção: ")	 
		leia(opcao)
		escolha (opcao){
			caso (1): 
				se (estoqueEletronicos[0]>0){
					escreva("Você optou pela ", eletronicos[0], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
					leia(resposta)
					se (resposta == "S" ou resposta == "s"){
						estoqueEletronicos[0] = estoqueEletronicos[0] - 1
						carrinhoEletronicos[0] = carrinhoEletronicos[0] + 1
					  	produtosEletronicos()					 	
					}senao{
				     	produtosEletronicos()
				     }	
				}senao{
					escreva(semEstoqueEletronicos[0])
					u.aguarde(4000)
					escreva("\n")
					produtosEletronicos()
				}				
				pare	
			caso (2):
				se (estoqueEletronicos[1]>0){
					escreva("Você optou pela ", eletronicos[1], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
					leia(resposta)
					se (resposta == "S" ou resposta == "s"){
						estoqueEletronicos[1] = estoqueEletronicos[1] - 1
						carrinhoEletronicos[1] = carrinhoEletronicos[1] + 1
					  	produtosEletronicos()					 	
					}senao{
				     	produtosEletronicos()
				     }	
				}senao{
					escreva(semEstoqueEletronicos[0])
					u.aguarde(4000)
					escreva("\n")
					produtosEletronicos()
				}
				pare				
			caso (3):
				se (estoqueEletronicos[2]>0){
					escreva("Você optou pela ", eletronicos[2], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
					leia(resposta)
					se (resposta == "S" ou resposta == "s"){
						estoqueEletronicos[2] = estoqueEletronicos[2] - 1
						carrinhoEletronicos[2] = carrinhoEletronicos[2] + 1
					  	produtosEletronicos()					 	
					}senao{
				     	produtosEletronicos()
				     }	
				}senao{
					escreva(semEstoqueEletronicos[0])
					u.aguarde(4000)
					escreva("\n")
					produtosEletronicos()
				}
				pare	
			caso (4):
				se (estoqueEletronicos[3]>0){
				escreva("Você optou pela ", eletronicos[3], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
				leia(resposta)
					se (resposta == "S" ou resposta == "s"){
						estoqueEletronicos[3] = estoqueEletronicos[3] - 1
						carrinhoEletronicos[3] = carrinhoEletronicos[3] + 1
					  	produtosEletronicos()					 	
					}senao{
				      produtosEletronicos()
				     }	
				}senao{
					escreva(semEstoqueEletronicos[0])
					u.aguarde(4000)
					escreva("\n")
					produtosEletronicos()
				}
				pare
			caso (5):
				se (estoqueEletronicos[4]>0){
					escreva("Você optou pela ", eletronicos[4], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
					leia(resposta)
					se (resposta == "S" ou resposta == "s"){
						estoqueEletronicos[4] = estoqueEletronicos[4] - 1
						carrinhoEletronicos[4] = carrinhoEletronicos[4] + 1
					  	produtosEletronicos()					 	
					}senao{
				     	produtosEletronicos()
				     }	
				}senao{
					escreva(semEstoqueEletronicos[0])
					u.aguarde(4000)
					escreva("\n")
					produtosEletronicos()
				}
				pare
			caso (6):
				inicio_menu_amazonas()
				pare
			caso (7):
				finalizarCompra()
				pare
			caso contrario:
				escreva(semEstoqueEletronicos[1])
				u.aguarde(2000)
				escreva("\n")
				produtosEletronicos()
		}
	}
	funcao imprimirCarrinho(){
		limpa()
		logo()
		faturaCarrinho = 0.0
		inteiro x = 0
		real faturaParcialGuloseimas = 0.0
		real faturaParcialVestuario = 0.0
		real faturaParcialEletronicos = 0.0
		escreva("\nGuloseimas:\n")
		para(i = 0;i<5;i++){
			se(carrinhoGuloseimas[i] > 0){
				escreva(guloseimas[i]," : ",carrinhoGuloseimas[i]," = R$",valorGuloseimas," Unidade\n")
				faturaParcialGuloseimas += carrinhoGuloseimas[i] * valorGuloseimas
			}
		}
		se(faturaParcialGuloseimas > 0){
			escreva("Subtotal de guloseimas: ",mat.arredondar(faturaParcialGuloseimas, 2)) 
			faturaCarrinho = faturaCarrinho + faturaParcialGuloseimas 
		}senao{
			escreva("Nenhuma guloseimas\n")
		}
		
		//Quebra de linha
		
		escreva("\nVestuário:\n")
		para(i = 0;i<5;i++){
			se(carrinhoVestuario[i] > 0){
				escreva(vestuario[i]," : ",carrinhoVestuario[i]," = R$",valorVestuario," Unidade\n")
				faturaParcialVestuario += carrinhoVestuario[i] * valorVestuario
			}
		}
		se(faturaParcialVestuario > 0){
			escreva("Subtotal de vestuário: ",mat.arredondar(faturaParcialVestuario, 2)) 
			faturaCarrinho = faturaCarrinho + faturaParcialVestuario 
		}senao{
			escreva("Nenhum Vestuário\n")
		}
		//Quebra de linha
		
		escreva("\nEletrônicos:\n")
		para(i = 0;i<5;i++){
			se(carrinhoEletronicos[i] > 0){
				escreva(eletronicos[i]," : ",carrinhoEletronicos[i]," = R$",valorEletronicos," Unidade\n")
				faturaParcialEletronicos += carrinhoEletronicos[i] * valorEletronicos
			}
		}
		se(faturaParcialEletronicos > 0){
			escreva("Subtotal de eletrônicos: ",mat.arredondar(faturaParcialEletronicos, 2)) 
			faturaCarrinho = faturaCarrinho + faturaParcialEletronicos
		}senao{
			escreva("Nenhum Eletrônico\n")
		}
		se(faturaCarrinho>0){
			escreva("\nValor Total: R$",mat.arredondar(faturaCarrinho, 2))
		}senao{
			escreva("Carrinho vazio")
		}
		
	}	
	funcao finalizarCompra(){
		imprimirCarrinho()
		escreva("\n\n[1]Finalizar a compra\n[2]Continuar comprando\n")
		inteiro escolhaCliente
		leia(escolhaCliente)
		se(escolhaCliente == 1){
			se(faturaCarrinho>0){
				escreva("Compra aprovada com sucesso!")
			}
			inteiro compraRealizada = Sons.carregar_som("compraRealizada.mp3")
			Sons.reproduzir_som(compraRealizada, falso)
			escreva("\n======================\n OBRIGADO POR VISITAR NOSSA LOJA!!")
			
		}senao se(escolhaCliente == 2){
			escreva("Voltando a tela de compras...")
			u.aguarde(3000)
			menu()
			
		}senao{
			escreva("Opção inválida. Voltando a tela de compras...")
			u.aguarde(3000)
			menu()		
		}
	}
	
//---------------------------------------------------------------------------------------------
// FIM Codigo Patrick - produtoEletronicos
//-------------------------------------------
//---------------------------------------------------------------------------------------------
// INICIO Codigo André - admin_guloseimas
//---------------------------------------------------------------------------------------------
/*
	funcao admin_guloseimas(){
*/
	funcao admin_guloseimas(){
		
		cadeia troca, novoproduto
		inteiro contador,parar = 0
		escreva("\nO que você deseja?\n1 - Alterar os produtos\n2 - Adicionar produtos\n3 - Excluir produtos\n4 - Voltar ao menu inicial")
		leia (contador)
		escolha (contador){
			caso 1:
				escreva("Qual dos seguintes produtos: ")
				para(contador = 0;contador<10;contador++){
					se(guloseimas[contador] != " "){
						escreva("\n ",contador," : ",guloseimas[contador])
					}
				}
				escreva("\n")
				leia(contador)
				escreva("E qual será o nome do novo produto? ")
				leia(troca)
				limpa()
				guloseimas[contador] = troca
				escreva("Os produtos atualizados são: ")
				para(contador = 0;contador<10;contador++){
					se(guloseimas[contador] != " "){
						escreva("\n ",contador," : ",guloseimas[contador])
					}
				}
				admin_guloseimas()
			caso 2:
				para(contador = 0;contador<10;contador++){
					se(guloseimas[contador] == " "){
						escreva("Qual será o novo produto? ")
						leia(novoproduto)
						guloseimas[contador] = novoproduto
						escreva("Agora o produto de número ",contador," é o ",guloseimas[contador])
						u.aguarde(4000)
						limpa()
						admin_guloseimas()
					}senao{
						parar++
						se(parar == 10){
							escreva("não há espaço para adicionar seu novo produto, exclua um antes")
							u.aguarde(4000)
							limpa()
							admin_guloseimas()
						}
					}					
				}
				pare
			caso 3:			
				escreva("Deseja excluir qual dos seguintes produtos: ")
				para(contador = 0;contador<10;contador++){
					se(guloseimas[contador] != " "){
						escreva("\n ",contador," : ",guloseimas[contador])
					}
				}
				escreva("\n")
				leia(contador)
				guloseimas[contador] = " "
				escreva("Produto ",contador," excluído com sucesso")
				u.aguarde(3000)
				limpa()
				admin_guloseimas()
				pare
			caso contrario:
				inicio()
		}
	
	}
//---------------------------------------------------------------------------------------------
// FIM Codigo André - admin_guloseimas
//---------------------------------------------------------------------------------------------
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 8320; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */