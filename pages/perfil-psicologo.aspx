<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="perfil-psicologo.aspx.cs" Inherits="ProjetoHappyMind.pages.perfil_psicologo" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/footer.css">
    <link rel="stylesheet" href="/css/header.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
    <title>Perfil Psicologos</title>

    <style>
    body {
        margin: auto;
        text-align: justify;
        background-color: #2f2741;
    }

    main {
        max-width: 100vw;
        height: 1000px;
        margin: 90px 0px 90px 0px;
        background-color: hsl(260, 18%, 10%);
        display: flex;
        justify-content: center;
    }

        main #perfil {
            display: flex;
            align-items: center;
            flex-wrap: wrap;
            justify-content: center;
            height: 100%;
            width: 100%;
            background: #2f2841;
            padding: 50px 0 30px 0;
        }

        main img {
            width: 250px;
            border-radius: 1000px;
            margin-bottom: 40px;
        }

        main div {
            text-align: left;
            width: 70%;
            padding: 0px 40px;
        }

            main div p {
                font-size: 2.2rem;
                color: white;
            }

        main input {
            background-color: aliceblue;
            border: none;
            color: black;
            width: 80%;
            height: 30%;
            font-size: 1.2rem;
            margin-bottom: 20px;
        }

        main a {
            text-align: center;
            width: 45%;
            padding: 0.8rem;
            text-decoration: none;
            border-radius: 100px;
            font-size: 1.3rem;
            color: white;
            background-color: hsl(260, 18%, 10%, 0.7);
        }

        main label {
            color: white;
            font-size: 2.0rem;
        }

    #lblnome,
    #lblespecialidade,
    #lblnota {
        padding-top: 20px;
    }

    #mc {
        color: black;
        background-color: #287ce9;
        transition: all .5s ease-in-out;
    }

        #mc:hover {
            color: white;
            background-color: #287ce9;
        }

    main h1 {
        color: white;
        font-size: 2.8rem;
        text-align: center;
    }

    #description {
        overflow-y: scroll;
        border-radius: 2rem;
        pointer-events: none;
    }

    #i {
        display: flex;
        justify-content: center;
        align-items: flex-end;
    }

    @media screen and (Min-width: 700px) {
        main img {
            width: 270px;
        }
    }

    @media screen and (Min-width: 900px) {
        main div {
            width: 50%;
        }
    }

    @media screen and (Max-width: 900px) {
        main {
            height: 1200px;
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
                    <asp:TextBox id="txtLogin" runat="server"></asp:TextBox>
                </div>
                <div class="senha--card">
                    <asp:Label for="senha" runat="server">Senha</asp:Label>
                    <asp:TextBox id="txtSenha" runat="server"></asp:TextBox>
                </div>
                <div class="modal--links">
                    <a href="/pages/cadastro-usuario.html">Cadastre-se</a>
                    <a href="">Esqueci a senha</a>
                </div>
                <asp:Button ID="BtnLogar" CssClass="btn--login" runat="server" Text="Logar" />
            </form>
        </div>

    </header>

    <main>
        <form id="perfil">

            <img src="/images/perfil.jpeg" alt="" />
            <div id="Labels">
                <label for="" id="lblnome" runat="server">Nome: </label>
                <br />
                <label for="" id="lblespecialidade" runat="server">Especialidade: </label>
                <br>
                <label for="" id="lblnota" runat="server">Nota: </label>
            </div>

            <div id="i">
                <h1>Informações:</h1>
            </div>

            <input type="text" id="description" runat="server">
            <a href="" id="mc">Marcar Consulta</a>

        </form>
    </main>

    <footer>
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
