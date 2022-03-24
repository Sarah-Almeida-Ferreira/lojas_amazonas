programa{

	inclua biblioteca Util--> u

	const inteiro numeroMaximoUsuarios = 10
	inteiro estoqueGuloseimas[5]= {3,3,3,3,3}
	inteiro estoqueEletronicos[5]= {3,3,3,3,3}
	inteiro estoqueCamisa[5]= {3,3,3,3,3}
	cadeia guloseimas[10] = {"KIT KAT","M&M'S","AMANDITA","TORTUGUITA","KINDER OVO"," "," "," "," "," "}
	inteiro quantidadeAtualUsuarios = 0
	cadeia vetorLogins[numeroMaximoUsuarios] = {"","","","","","","","","",""}
	cadeia vetorSenhas[numeroMaximoUsuarios] = {"","","","","","","","","",""}
	cadeia usuarioLogado = ""
	logico fim = falso

	funcao inicio(){
		/*DESCOMENTAR as linhas abaixo para testar os módulos*/
		//inicio_Login() // Aline, Sarah, CGPereira - inicio_Login
		//inicio_menu_amazonas() // Wanderson - menu_amazonas
		//produtosAlimentos() //Patrick - produtosAlimentos
		//produtosEletronicos() //Patrick - produtosEletronicos
		//produtosCamisaFutebol() //Patrick - produtosCamisaFutebol
		//admin_guloseimas() //André - admin_guloseimas
	}

//---------------------------------------------------------------------------------------------
// INICIO Codigo Aline, Sarah, CGPereira - inicio_Login
//---------------------------------------------------------------------------------------------
/*
	funcao inicio_Login()
	funcao cargaInicialDeUsuarios()
	funcao entrar_na_loja()
	funcao logico loginUsuario()
	funcao logoutUsuario()
	funcao listarUsuariosSigiloso()
	funcao listarUsuariosCompleto()
	funcao logico adicionarUsuario(cadeia nome, cadeia senha)
	funcao logico alterarNomeUsuario(cadeia nomeAntigo, cadeia nomeNovo)
	funcao logico alterarSenhaUsuario(cadeia nome, cadeia senhaNova)
	funcao logico validarLoginUsuario(cadeia nome, cadeia senha)
	funcao logico pesquisarSeEhUsuario(cadeia nome)
	funcao inteiro pesquisarIndiceUsuario(cadeia nome)
	funcao menu()
	funcao logoff()
	funcao logo()
*/
	funcao inicio_Login(){
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
		caracter opcao_entrar = ' '
		leia(opcao_entrar)
		se (opcao_entrar != 's' e opcao_entrar != 'n'){
			escreva("\n\nOperação inválida! Tente novamente.")
			u.aguarde (500)
			entrar_na_loja()
		}senao se (opcao_entrar == 's'){
			loginUsuario()
		}senao{
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
	funcao menu(){
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
		inteiro opcao_menu = 0
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
				logoff()
				pare
			caso contrario:
				limpa()
				escreva("Opção inválida, tente novamente!")
				u.aguarde(2000)
				menu()
		}
	}
	funcao logoff(){
		limpa()
		escreva("Deseja realmente retornar à tela inicial?\n\n")
		escreva("Digite [s] para SIM ou [n] para NÃO: ")
		caracter opcao_logoff = ' '
		leia(opcao_logoff)
		se(opcao_logoff == 's'){
			usuarioLogado = ""
			u.aguarde(500)
			limpa()
			loginUsuario()
		}senao se(opcao_logoff == 'n'){
			limpa()
			menu()
		}
	}
	funcao logo(){
		limpa()
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
//---------------------------------------------------------------------------------------------
// FIM Codigo Aline, Sarah, CGPereira - inicio_Login
//---------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------
// INICIO Codigo Wanderson - menu_amazonas
//---------------------------------------------------------------------------------------------
/*
	funcao inicio_menu_amazonas()
	funcao menu2()
	funcao menu_adm()
*/
	funcao inicio_menu_amazonas(){
		
		se(usuarioLogado == "admin"){		
			menu_adm()
		}senao{
			menu2()
		}
	}
	funcao menu2(){
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
		inteiro opcao_menu = 0
		leia(opcao_menu)//Coleta a opção selecionada no menu pelo usuário.
		//Direciona o usuário até a opção selecionada.
		escolha(opcao_menu){
			caso 1:
				limpa()
				escreva("Insira a funcão 'categoria_doces' aqui")
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
				caracter opcao_logoff = ' '
				leia(opcao_logoff)
				escolha(opcao_logoff){
					caso '1':
						limpa()
						escreva("Insira a funcão 'login' aqui")
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
			caso contrario:
				limpa()
				escreva("Opção inválida, tente novamente!")
				u.aguarde(2000)
				limpa()
				menu()
		}
	}
	funcao menu_adm(){
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
		escreva("Gerenciar Produtos\t[4]", "\tGerenciar Usuários\t[5]\n")
		escreva("Finalizar Compra\t[6]", "\tLogoff\t\t\t[7]\n\n")
		inteiro opcao_menu = 0
		leia(opcao_menu)//Coleta a opção selecionada no menu pelo usuário.
		//Direciona o usuário até a opção selecionada.
		escolha(opcao_menu){
			caso 1:
				limpa()
				escreva("Insira a funcão 'categoria_doces' aqui")
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
				escreva("Insira a funcão 'gerenciar_produtos' aqui")
				pare
			caso 5:
				limpa()
				escreva("Insira a funcão 'gerenciar_usuarios' aqui")
				pare
			caso 6:
				limpa()
				escreva("Insira a funcão 'finalizar_compra' aqui")
				pare
			caso 7:
				limpa()
				escreva("Deseja realmente retornar à tela de Login?\n\n")
				escreva("Digite [1] para SIM ou [2] para NÃO: ")
				caracter opcao_logoff = ' '
				leia(opcao_logoff)				
				escolha(opcao_logoff){
					caso '1':
						limpa()
						escreva("Insira a funcão 'login' aqui")
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
			caso contrario:
					limpa()
					escreva("Opção inválida, tente novamente!")
					u.aguarde(2000)
					limpa()
					menu_adm()
		}
	}
//---------------------------------------------------------------------------------------------
// FIM Codigo Wanderson - menu_amazonas
//---------------------------------------------------------------------------------------------
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
		
		cadeia resposta
		inteiro i
		inteiro opcao
		//cadeia guloseimas[5] = {"KIT KAT","M&M'S","AMANDITA","TORTUGUITA","KINDER OVO"}
		cadeia descricaoItensGuloseimas = ".\n============================================\nChocolates pra adoçar a vida!\nContém alguma porcentagem de cacau e leite.\nNão contém regime.\n============================================\n \n"
		cadeia semEstoqueGuloseimas[2] = {"Ops, o PAC-MAN comeu todo esse produto e não há mais disponíveis, tente uma outra guloseima!", "Ops, opção inválida, tente novamente!"}
		const real valorGuloseimas = 4.99
			
		escreva("============ GULOSEIMAS & GORDICES =========================\n")
		escreva("============ VIRE UM AVIÃO E AUMENTE SEUS PNEUS ============\n\n")		
		para (i=0; i<=4; i++){
			u.aguarde(1000)
			escreva("\n", guloseimas[i], " - POR APENAS R$: ", valorGuloseimas,"\nEstoque: ", estoqueGuloseimas[i], descricaoItensGuloseimas)
          }		
		escreva("============ GULOSEIMAS & GORDICES =========================\n")
		escreva("============ VIRE UM AVIÃO E AUMENTE SEUS PNEUS ============\n\n")
		u.aguarde(1000)
		escreva("Escolha a sua guloseima dentre as opções [1], [2], [3], [4] ou [5]:\n[1]KIT KAT ### [3]AMANDITA   ### [5]KINDER OVO \n[2]M&M'S    ### [4]TORTUGUITA ###\n============================================\n Ou escolha [6] para voltar à Página Principal ou [7] para ir para o Carrinho.\n [6]PÁGINA PRINCIPAL [7]IR PARA O CARRINHO \n============================================\n Opção: ")	 
		leia(opcao)
		escolha (opcao){
			caso (1): 
				se (estoqueGuloseimas[0]>0){
					escreva("Você optou pela ", guloseimas[0], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
					leia(resposta)
					se (resposta == "S" ou resposta == "s"){
						estoqueGuloseimas[0] = estoqueGuloseimas[0] - 1
					  	produtosAlimentos()					 	
					}senao{
				     	produtosAlimentos()
				     }	
				}senao{
					escreva(semEstoqueGuloseimas[0])
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
					  	produtosAlimentos()					 	
					}senao{
				      	produtosAlimentos()
				     }	
				}senao{
					escreva(semEstoqueGuloseimas[0])
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
					  	produtosAlimentos()					 	
					}senao{
				     	produtosAlimentos()
				     }	
				}senao{
					escreva(semEstoqueGuloseimas[0])
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
					  	produtosAlimentos()					 	
					}senao{
				      produtosAlimentos()
				     }	
				}senao{
					escreva(semEstoqueGuloseimas[0])
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
					  	produtosAlimentos()				 	
					}senao{
				      	produtosAlimentos()
				     }	
				}senao{
					escreva(semEstoqueGuloseimas[0])
					escreva("\n")
					produtosAlimentos()
				}
				pare
			caso (6):
				//insira aqui função ir para o menu principal//
				pare
			caso (7):
				//insira aqui função IR PARA O CARRINHO//
				pare			
			caso contrario:
				escreva(semEstoqueGuloseimas[1])
				u.aguarde(1000)
				escreva("\n")
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
		cadeia resposta
		inteiro i
		inteiro opcao
		cadeia smartEletronicos[5] = {"SMARTWATCH","UAIPHONE ÉPOU","SMART SPEAKER ALEXIA","SMART SPEAKER ASSISTENTE GÚGOL","SMART TV"}
		cadeia descricaoItensEletronicos = ".\n============================================\nProdutos que facilitarão sua vida em alta tecnologia!\n100% mais SMARTS que você!!.\nVersão brasileira Herbert Richards.\n============================================\n \n"
		cadeia semEstoqueEletronicos[2] = {"A revolução das máquinas começou e o seu produto está indisponível, arrisque outro Smart produto!", "Ops, falha na Matrix, tente novamente!"}
		const real valorEletronicos = 400.99
		
		escreva("============ SMART TECHNOLOGIES =============\n")
		escreva("============ SUA VIDA MAIS SMART ============\n\n")		
		para (i=0; i<=4; i++){
			u.aguarde(1000)
			escreva("\n", smartEletronicos[i], " - POR APENAS R$: ", valorEletronicos,"\nEstoque: ", estoqueEletronicos[i], descricaoItensEletronicos)
          }		
		escreva("============ SMART TECHNOLOGIES =============\n")
		escreva("============ SUA VIDA MAIS SMART ============\n\n")
		u.aguarde(1000)
		escreva("Escolha o seu gadget dentre as opções [1], [2], [3], [4] ou [5]:\n[1]SMARTWATCH       ### [3]SMART SPEAKER ALEXIA           ### [5]SMART TV \n[2]UAIPHONE ÉPOU    ### [4]SMART SPEAKER ASSISTENTE GÚGOL ###\n============================================\n Ou escolha [6] para voltar à Página Principal ou [7] para ir para o Carrinho.\n [6]PÁGINA PRINCIPAL [7]IR PARA O CARRINHO \n============================================\n Opção: ")	 
		leia(opcao)
		escolha (opcao){
			caso (1): 
				se (estoqueEletronicos[0]>0){
					escreva("Você optou pela ", smartEletronicos[0], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
					leia(resposta)
					se (resposta == "S" ou resposta == "s"){
						estoqueEletronicos[0] = estoqueEletronicos[0] - 1
					  	produtosEletronicos()					 	
					}senao{
				     	produtosEletronicos()
				     }	
				}senao{
					escreva(semEstoqueEletronicos[0])
					escreva("\n")
					produtosEletronicos()
				}				
				pare	
			caso (2):
				se (estoqueEletronicos[1]>0){
					escreva("Você optou pela ", smartEletronicos[1], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
					leia(resposta)
					se (resposta == "S" ou resposta == "s"){
						estoqueEletronicos[1] = estoqueEletronicos[1] - 1
					  	produtosEletronicos()					 	
					}senao{
				     	produtosEletronicos()
				     }	
				}senao{
					escreva(semEstoqueEletronicos[0])
					escreva("\n")
					produtosEletronicos()
				}
				pare				
			caso (3):
				se (estoqueEletronicos[2]>0){
					escreva("Você optou pela ", smartEletronicos[2], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
					leia(resposta)
					se (resposta == "S" ou resposta == "s"){
						estoqueEletronicos[2] = estoqueEletronicos[2] - 1
					  	produtosEletronicos()					 	
					}senao{
				     	produtosEletronicos()
				     }	
				}senao{
					escreva(semEstoqueEletronicos[0])
					escreva("\n")
					produtosEletronicos()
				}
				pare	
			caso (4):
				se (estoqueEletronicos[3]>0){
				escreva("Você optou pela ", smartEletronicos[3], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
				leia(resposta)
					se (resposta == "S" ou resposta == "s"){
						estoqueEletronicos[3] = estoqueEletronicos[3] - 1
					  	produtosEletronicos()					 	
					}senao{
				      produtosEletronicos()
				     }	
				}senao{
					escreva(semEstoqueEletronicos[0])
					escreva("\n")
					produtosEletronicos()
				}
				pare
			caso (5):
				se (estoqueEletronicos[4]>0){
					escreva("Você optou pela ", smartEletronicos[4], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
					leia(resposta)
					se (resposta == "S" ou resposta == "s"){
						estoqueEletronicos[4] = estoqueEletronicos[4] - 1
					  	produtosEletronicos()					 	
					}senao{
				     	produtosEletronicos()
				     }	
				}senao{
					escreva(semEstoqueEletronicos[0])
					escreva("\n")
					produtosEletronicos()
				}
				pare
			caso (6):
				//insira aqui função menu principal//
				pare
			caso (7):
				//insira aqui função IR PARA O CARRINHO//
				pare
			caso contrario:
				escreva(semEstoqueEletronicos[1])
				u.aguarde(1000)
				escreva("\n")
				produtosEletronicos()
		}
	}
//---------------------------------------------------------------------------------------------
// FIM Codigo Patrick - produtoEletronicos
//---------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------
// INICIO Codigo Patrick - produtosCamisaFutebol
//---------------------------------------------------------------------------------------------
/*
	funcao produtosCamisaFutebol ()

	Produtos
	a. Nome do produto; 
	b. Descrição breve do produto;
	c. Quantidade de itens;
	d. Preço do produto (ex: R$ 10,99);
	e. Opção de inserir no carrinho;
	f. Opção de voltar ao menu anterior;
	g. Dois tratamentos de erro nos produtos.
*/
	funcao produtosCamisaFutebol(){
		cadeia resposta
		inteiro i
		inteiro opcao
		cadeia camisaTime[5] = {"CAMISETA DO FLAMENGO","CAMISETA DO VASCO","CAMISETA DO BOTAFOGO","CAMISETA DO FLUMINENSE","CAMISETA DO TABAJARA"}
		cadeia descricaoItensVestuario = ".\n============================================\nCamisa do time do seu coração S2\nTecido 100% poliéster com tratamento DRY.\nVersão quase oficial licenciada.\n============================================\n \n"
		cadeia semEstoqueVestuario[2] = {"Ops, tivemos um arrastão da torcida do Flamengo e não há mais camisas disponíveis, tente de outro time!", "Ops, opção inválida, seu time vai pra série B assim!"}
		const real valorCamisaTime = 40.99
				
		escreva("============ CAMISAS DE FUTEBOL ====================\n")
		escreva("============ VISTA A CAMISA DO SEU TIME ============\n\n")		
		para (i=0; i<=4; i++){
			u.aguarde(1000)
			escreva("\n", camisaTime[i], " - POR APENAS R$: ", valorCamisaTime,"\nEstoque: ", estoqueCamisa[i], descricaoItensVestuario)
          }		
		escreva("============ CAMISAS DE FUTEBOL ====================\n")
		escreva("============ VISTA A CAMISA DO SEU TIME ============\n\n")
		u.aguarde(1000)
		escreva("Escolha a camisa do seu time dentre as opções [1], [2], [3], [4] ou [5]:\n[1]FLAMENGO ### [3]BOTAFOGO   ### [5]TABAJARA \n[2]VASCO    ### [4]FLUMINENSE ###\n============================================\n Ou escolha [6] para voltar à Página Principal ou [7] para ir para o Carrinho.\n [6]PÁGINA PRINCIPAL [7]IR PARA O CARRINHO \n============================================\n Opção: ")	 
		leia(opcao)
		escolha (opcao){
			caso (1): 
				se (estoqueCamisa[0]>0){
					escreva("Você optou pela ", camisaTime[0], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
					leia(resposta)
					se (resposta == "S" ou resposta == "s"){
						estoqueCamisa[0] = estoqueCamisa[0] - 1
					  	produtosCamisaFutebol()				 	
					}senao{
				      produtosCamisaFutebol()
				     }	
				}senao{
					escreva(semEstoqueVestuario[0])
					escreva("\n")
					produtosCamisaFutebol()
				}			
				pare
			caso (2):
				se (estoqueCamisa[1]>0){
					escreva("Você optou pela ", camisaTime[1], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
					leia(resposta)
					se (resposta == "S" ou resposta == "s"){
						estoqueCamisa[1] = estoqueCamisa[1] - 1
					  	produtosCamisaFutebol()					 	
					}senao{
				      produtosCamisaFutebol()
				     }	
				}senao{
					escreva(semEstoqueVestuario[0])
					escreva("\n")
					produtosCamisaFutebol()
				}
				pare	
			caso (3):
				se (estoqueCamisa[2]>0){
					escreva("Você optou pela ", camisaTime[2], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
					leia(resposta)
					se (resposta == "S" ou resposta == "s"){
					 	estoqueCamisa[2] = estoqueCamisa[2] - 1
					  	produtosCamisaFutebol()
					 	
					}senao{
				     	produtosCamisaFutebol()
				     }	
				}senao{
					escreva(semEstoqueVestuario[0])
					escreva("\n")
					produtosCamisaFutebol()
				}
				pare
			caso (4):
				se (estoqueCamisa[3]>0){
					escreva("Você optou pela ", camisaTime[3], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
					leia(resposta)
					se (resposta == "S" ou resposta == "s"){
						estoqueCamisa[3] = estoqueCamisa[3] - 1
					  	produtosCamisaFutebol()				 	
					}senao{
				      produtosCamisaFutebol()
				     }	
				}senao{
					escreva(semEstoqueVestuario[0])
					escreva("\n")
					produtosCamisaFutebol()
				}
				pare
			caso (5):
				se (estoqueCamisa[4]>0){
					escreva("Você optou pela ", camisaTime[4], " gostaria de adicionar ao carrinho?\n Digite [S] para SIM ou [N] para não: ")
					leia(resposta)
					se (resposta == "S" ou resposta == "s"){ 
					 	estoqueCamisa[4] = estoqueCamisa[4] - 1
					  	produtosCamisaFutebol()					 	
					}senao{
				     	produtosCamisaFutebol()
				     }	
				}senao{
					escreva(semEstoqueVestuario[0])
					escreva("\n")
					produtosCamisaFutebol()
				}
				pare
			caso (6):
				//insira aqui função menu principal//
				pare
			caso (7):
				//insira aqui função IR PARA O CARRINHO//
				pare			
			caso contrario:
				escreva(semEstoqueVestuario[1])
				u.aguarde(1000)
				escreva("\n")					
				produtosCamisaFutebol()
		}
	}
//---------------------------------------------------------------------------------------------
// FIM Codigo Patrick - produtosCamisaFutebol
//---------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------
// INICIO Codigo André - admin_guloseimas
//---------------------------------------------------------------------------------------------
/*
	funcao admin_guloseimas(){
*/
	funcao admin_guloseimas(){
		caracter opcao
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
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 29833; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */