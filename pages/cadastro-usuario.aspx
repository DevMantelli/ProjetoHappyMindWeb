<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastro-usuario.aspx.cs" Inherits="ProjetoHappyMind.pages.cadastro_usuario" %>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="../images/Logo--img.png" />
    <link rel="stylesheet" href="../assets/css/header.css" />
    <link rel="stylesheet" href="../assets/css/footer.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
    <title>Cadastro de Usuário</title>
    <style>
        body {
            font-size: 1.1rem;
            background-color: #1d1825;
            max-width: 100vw;
            height: 100vh;
            font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
            color: white;
            margin: 0;
            padding: 0;
        }

        main {
            margin-top: 90px;
            width: 100vw;
            height: 50%;
            overflow: hidden;
            display: flex;
            justify-content: center;
            align-items: center;
            padding-bottom: 20px;
        }

        h1 {
            font-weight: bold;
            font-size: 2.3rem;
        }

        label {
            font-size: 1.2rem;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            border: solid 0px;
            border-radius: 80px;
            background-color: #2f2741;
            padding-bottom: 10px;
            margin-bottom: 10px;
            padding-left: 20px;
            padding-right: 20px;
        }

        input {
            border: 0px solid;
            border-radius: 5px;
        }

        footer {
            padding-top: 30px;
        }


        .txtForm,
        .txtPequeno {
            width: 200px;
            font-size: 1.2rem;
        }

        .txtPequeno {
            width: 290px;
        }

        .camposCadUsuario {
            margin-bottom: 10px;
        }

        #txtLogin {
            width: 294px;
        }

        #btnCadastrar {
            width: 100px;
            height: 30px;
            font-size: 1.0rem;
            background-color: #a38fd3;
            font-weight: bold;
        }

            #btnCadastrar:hover {
                color: rgb(15, 6, 99);
                background-color: royalblue;
            }

        @media screen and (min-width: 800px) {
            form {
                margin-left: 150px;
                margin-right: 150px;
                padding-bottom: 25px;
            }

            h1 {
                font-size: 2.5rem;
            }

            label {
                font-size: 1.3rem;
            }

            .txtForm,
            .txtPequeno {
                width: 200px;
                font-size: 1.3rem;
            }

            .txtPequeno {
                width: 296px;
            }

            #txtLogin {
                width: 300px;
            }

            #btnCadastrar {
                width: 125px;
                height: 35px;
                font-size: 1.3rem;
            }
        }

        @media screen and (min-width: 1200px) {
            form {
                margin-left: 200px;
                margin-right: 200px;
                padding-bottom: 40px;
            }

            h1 {
                font-size: 3rem;
            }

            label {
                font-size: 1.5rem;
            }

            .txtForm,
            .txtPequeno {
                width: 400px;
                font-size: 1.5rem;
            }

            .txtPequeno {
                width: 513px;
            }

            #txtLogin {
                width: 518px;
            }

            #btnCadastrar {
                width: 150px;
                height: 40px;
                font-size: 1.5rem;
            }
        }
    </style>
</head>

<body>
    <header>

        <a href="/default.html">
            <img class="logo--header" src="/images/Logo--img.png" alt=""></a>

        <div class="nav--desktop">
            <a href="">
                <p>Psicólogos</p>
            </a>
            <p onclick="logingModal()">Entrar</p>
        </div>

        <div class="container--nav-btn-mobile" onclick="toggleMenu()">
            <span class="bnt--mobile-linha-1"></span>
            <span class="bnt--mobile-linha-2"></span>
            <span class="bnt--mobile-linha-3"></span>
        </div>
        <ul class="nav--area">
            <li><a href="/pages/psicologos.html">Psicólogos</a></li>
            <li onclick="logingModal()">Entrar</li>
        </ul>

        <div class="modal--login">
            <form class="form--login" runat="server">
                <div class="back--btn">
                    <span class="btn--login-close" onclick="bntBack()"><i class="bi bi-arrow-left"></i></span>
                </div>

                <div class="login--card">
                    <asp:Label for="login" runat="server">Usuário</asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </div>
                <div class="senha--card">
                    <asp:Label for="senha" runat="server">Senha</asp:Label>
                    <asp:TextBox ID="txtSenha" runat="server"></asp:TextBox>
                </div>
                <div class="modal--links">
                    <a href="/pages/cadastro-usuario.html">Cadastre-se</a>
                    <a href="/">Esqueci a senha</a>
                </div>

                <asp:Button ID="BtnLogar" CssClass="btn--login" runat="server" Text="Logar" />
            </form>
        </div>

    </header>
    <main>
        <form id="formCadUsuario" runat="server">
            <h1>Cadastre-se</h1>
            <div class="container--campos">
                <div class="camposCadUsuario">
                    <asp:Label runat="server">Nome Completo: </asp:Label>
                    <asp:TextBox CssClass="txtForm" type="text" runat="server"></asp:TextBox>
                </div>
                <div class="camposCadUsuario">
                    <asp:Label for="loginUsuario" runat="server">Login: </asp:Label>
                    <asp:TextBox class="txtPequeno" ID="txtLogin" type="text" runat="server"></asp:TextBox>
                </div>
                <div class="camposCadUsuario">
                    <asp:Label for="senhaUsuario" runat="server">Senha: </asp:Label>
                    <asp:TextBox CssClass="txtPequeno" type="text" name="senhaUsuario" runat="server"></asp:TextBox>
                </div>
            </div>
            <div id="alerta" class="camposCadUsuario">
                <label for="alerta"></label>
            </div>
            <div id="btnEnviarFormulario">
                <asp:Button value="Cadastrar" ID="btnCadastrar" runat="server"></asp:Button>
            </div>
        </form>
    </main>
    <footer>
        <div class="container--happy--mind">
            <div id="footer2">
                <figure>
                    <img src="../images/logo2.png" alt="logo" id="logoFooter">
                </figure>

                <address>
                    <img src="../images/email.png" alt="E-mail" id="imgEmail">
                    <a class="socialFooter" href="">: Contato@HappyMind.com</a>
                </address>

                <address>
                    <img src="../images/whatsapp.png" alt="Whatsapp" id="imgWhatsapp">
                    <a class="socialFooter" href="">: (13) 99639-6895</a>
                </address>

                <p id="referenciaFooter">Desenvolvido por turma TI-42</p>
            </div>
        </div>
        <p id="avisoFooter">
            ATENÇÃO: Este portal não oferece atendimento de urgência para
            casos relacionados a crises suicidas. Nestes casos, entre em
            contato gratuitamente com o CVV (Centro de Valorização da Vida)
            pelo telefone 188 ou acesse www.cvv.org.br. Em caso de
            emergências, busque o hospital mais próximo ou ligue 192
            (SAMU).
        </p>
    </footer>
    <script src="../assets/js/mobile-menu.js"></script>
    <script src="../assets/js/login-modal.js"></script>
</body>

</html>
