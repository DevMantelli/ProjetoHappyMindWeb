<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Happy_Mind._default" %>

<!DOCTYPE html>
<html lang="pt_BR">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Site Para Consultas Psiquiátricas" />
    <meta name="keywords" content="Psicologia, Psiquiatra, Consulta, Happy Mind" />
    <link rel="icon" href="assets/images/Logo--img.png" />
    <link rel="stylesheet" href="assets/css/footer.css" />
    <link rel="stylesheet" href="assets/css/header.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
    <title>Happy Mind</title>

    <!-- STYLE DA PAGINA PRINCIPAL-->
    <style>
        :root {
            --bg-cor: #1d1825;
            --bg-cor-sec: #2f2741;
            --font-color: #F5F5FA;
            --font-color-blue: #27bee7;
            --font-size-small: 1.1rem;
            --font-size-medium: 1.8rem;
            --font-size-big: 2.4rem;
        }

        *,
        *::after,
        *::before {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            max-width: 100vw;
            max-height: 100vh;
            font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
        }

        .main--container-default {
            background-color: var(--bg-cor);
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            padding: 0px 12px 0px 12px;
            overflow-x: hidden;
            overflow-y: hidden;
        }


        /* CONTAINER SLOGAN */
        .img--logo-texto-h1 {
            filter: drop-shadow(15px 15px 4px #1d1825);
            max-width: 70%;
            margin: 7rem 0rem 0rem 1.5rem;
        }

        .slogan--container {
            width: 100vw;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            color: var(--font-color);
            background-color: var(--bg-cor-sec);
            border-bottom-left-radius: 80px;
            border-bottom-right-radius: 80px;
            font-size: 1rem;
        }

        .slogan--container-texto p {
            width: 100%;
            height: 224px;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            text-align: center;
            font-size: 1.5rem;
            padding: 0px 20px 0px 20px;
            font-weight: 700;
        }

        /* .slogan--container a {
            width: 50%;
            text-decoration: none;
            border-radius: 20px;
            background-color: var(--font-color-blue);
            color: var(--bg-cor);
            padding: 5px 15px 5px 15px;
            font-weight: 600;
            font-size: 1rem;
            margin: 1rem 0rem 2rem 0rem;
        } */

        .bg--image-slogan {
            max-width: 55%;
        }

        /* CONTAINER SAIBA MAIS */
        .container--saiba-mais {
            width: 100vw;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            color: var(--font-color);
        }

        .container--saiba-mais-texto {
            margin: 30px 0px 0px 0px;
            padding: 0px 20px 0px 20px;
            text-align: center;
        }

            .container--saiba-mais-texto h2 {
                margin-bottom: 1.2rem;
            }


        .container--saiba-mais-link {
            width: 100%;
            display: flex;
            justify-content: space-around;
            align-items: center;
            padding: 25px 25px 25px 25px;
        }

            .container--saiba-mais-link a {
                text-decoration: none;
                color: var(--bg-cor);
                border-radius: 20px;
                padding: 15px 25px 15px 25px;
                font-weight: 700;
                background-color: var(--font-color-blue);
                width: 45%;
                text-align: center;
            }

        .img--logo-side {
            width: 45%;
        }

        /* CONTAINER SLIDER */
        .slider {
            width: 100vw;
            height: 400px;
            overflow-x: hidden;
            overflow-y: hidden;
            background-color: var(--bg-cor-sec);
            border-top-left-radius: 80px;
            border-top-right-radius: 80px;
        }

        /* TAMANHAO DO SLIDE */
        .slider--width {
            width: 100%;
            height: 100%;
            display: flex;
            transition: all ease 0.3s;
        }

        /* ITEM DENTRO DO SLIDE */
        .slider--item {
            width: 100vw;
            height: inherit;
            background-position: center;
            background-size: cover;
            display: flex;
            justify-content: center;
            flex-direction: column;
            align-items: center;
            color: #FFF;
            text-shadow: 0px 1px 1px #333;
            font-size: 1rem;
            text-align: center;
            padding: 0rem 5rem 0rem 5rem;
        }

            .slider--item h2 {
                margin-bottom: 30px;
            }

        /* CONTROLES DO SLIDE */
        .slider--controls {
            position: absolute;
            z-index: 99;
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 100%;
        }

        .slider--control {
            width: 3rem;
            height: 3rem;
            background-color: var(--bg-cor);
            overflow-x: hidden;
            overflow-y: hidden;
            cursor: pointer;
            clip-path: polygon(0 50%, 100% 0, 75% 50%, 100% 100%);
        }

            .slider--control:nth-child(2) {
                clip-path: polygon(35% 50%, 0 0, 100% 50%, 0 100%);
            }

        .slider--controls {
            max-width: 100%;
        }

        footer {
            background-color: var(--bg-cor);
        }

        #footer2,
        #avisoFooter {
            background-color: #241e31;
        }

        @media screen and (min-width: 500px) {
            .slogan--container {
                font-size: 1.6rem;
            }

                .slogan--container a {
                    font-size: 1.5rem;
                }

            .slider--item {
                font-size: 1.5;
            }

            .slider--controls {
                max-width: 100%;
            }
        }

        @media screen and (min-width: 1300px) {
            .slogan--container {
                display: flex;
                flex-direction: row;
                justify-content: space-around;
                height: 100vh;
                background-image: url(/images/Wavetop.svg);
                background-position: 0px 350px;
                background-size: 100vw;
                background-repeat: no-repeat;
                border-radius: 0px;
            }

            .img--logo-texto-h1 {
                position: absolute;
                width: 30%;
                transform: translateX(70%) translateY(100px);
                top: 5px;
                z-index: 1;
            }

            .bg--image-slogan {
                width: 35%;
                padding: 2px;
                margin: 90px 0px 10px 50px;
            }

            .slogan--container-texto {
                margin-top: 200px;
                max-width: 50%;
                text-align: center;
                z-index: 1;
            }

                .slogan--container-texto p {
                    font-size: 2.4rem;
                }

            .container--saiba-mais {
                padding: 3rem 0rem 3rem 0rem;
            }

            .container--saiba-mais-texto {
                padding: 0rem 6rem 0rem 6rem;
                font-size: 3rem;
            }

                .container--saiba-mais-texto p {
                    padding: 0rem 6rem 0rem 6rem;
                    font-size: 2rem;
                }

            .container--saiba-mais-link a {
                padding: 30px;
                width: 25%;
            }

                .container--saiba-mais-link a:hover {
                    animation: hoverEffect infinite 2s ease-in-out;
                    transition: all .5s ease-in-out;
                }

            .container--saiba-mais-link {
                justify-content: center;
                width: 100%;
            }

                .container--saiba-mais-link img {
                    margin-left: 10rem;
                }

            .senha--card {
                margin-top: 20px;
            }

            .slider {
                background-image: url(/images/Wavebot.svg);
                background-position: 0px -660px;
                background-repeat: no-repeat;
                background-size: 100vw;
                border-radius: 0;
            }

            .img--logo-side {
                width: 20%;
            }

            .slider--item {
                font-size: 2.4rem;
            }

                .slider--item p {
                    font-size: 1.7rem;
                }

            .slider--control:first-child {
                margin-left: 20px;
            }

            .slider--control:nth-child(2) {
                margin-right: 20px;
            }

            .slider--controls {
                max-width: 100%;
            }

            /* ANIMAÇAO DO BOTAO "VENHA CONHECELOS" */
            @keyframes hoverEffect {

                0% {
                    box-shadow: 0px 0px 10px #27bee7;
                }

                50% {
                    box-shadow: 0px 0px 30px #27bee7;
                }

                100% {
                    box-shadow: 0px 0px 10px #27bee7;
                }
            }

            /* Bolha animaçao  !SOMENTE DESKTOP */
            .blob--anime {
                width: 20rem;
                height: 20rem;
                border-radius: 28% 72% 78% 22% / 58% 24% 76% 42%;
                position: absolute;
                transform: translateX(140px) translateY(-170px);
                background: linear-gradient(35deg, #27bee7, #6226a7fb);
                animation: blob 14s infinite ease-in-out;
            }

                .blob--anime::before {
                    content: '';
                    width: 8rem;
                    height: 8rem;
                    border-radius: 28% 72% 78% 22% / 58% 24% 76% 42%;
                    position: absolute;
                    transform: translateX(600px) translateY(300px);
                    background: linear-gradient(305deg, #0d6881, #6226a7fb);
                    animation: blob 10s infinite ease-in-out;
                }


            @keyframes blob {
                0% {
                    border-radius: 28% 72% 78% 22% / 58% 24% 76% 42%;
                }

                25% {
                    border-radius: 27% 73% 37% 63% / 51% 16% 84% 49%;
                }

                75% {
                    border-radius: 13% 87% 65% 35% / 17% 63% 37% 83%;
                }

                100% {
                    border-radius: 28% 72% 78% 22% / 58% 24% 76% 42%;
                }
            }
        }
    </style>

</head>

<body>
    <header>
        <a href="/default.html">
            <img class="logo--header" src="assets/images/Logo--img.png" alt=""></a>

        <div class="nav--desktop">
            <a href="pages/psicologos.aspx">
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
                    <asp:TextBox id="txtEmail" runat="server"></asp:TextBox>
                </div>
                <div class="senha--card">
                    <asp:Label for="senha" runat="server">Senha</asp:Label>
                    <asp:TextBox id="txtSenha" runat="server"></asp:TextBox>
                </div>
                <div class="modal--links">
                    <a href="/pages/cadastro-usuario.html">Cadastre-se</a>
                    <a href="/">Esqueci a senha</a>
                </div>
                <asp:Button ID="BtnLogar" CssClass="btn--login" runat="server" Text="Logar" OnClick="BtnLogar_Click"/>
            </form>
        </div>

    </header>

    <main class="main--container-default">

        <div class="slogan--container">
            <img class="img--logo-texto-h1" src="/images/Logo--Texto.png" alt="">
            <img class="bg--image-slogan" src="/images/Online page-amico.png" alt="">
            <div class="slogan--container-texto">
                <p>
                    A HappyMind é um espaço 100% online onde você poderá receber auxílio de profissionais da area da
                    saúde mental.
                </p>
            </div>
            <span class="blob--anime"></span>
        </div>

        <div class="container--saiba-mais">
            <div class="container--saiba-mais-texto">
                <h2>Conheça nossos profissionais licenciados.</h2>
                <p>
                    Profissionais de psicologia graduados e registrados no Conselho
                    Regional de Psicologia para o exercício da profissão, com cadastro
                    específico para atendimento por chamadas de vídeo. Todos
                    passam por um processo seguro de verificação e credenciamento, além
                    de aderirem a rigorosos códigos de ética e sigilo.
                </p>
            </div>
            <div class="container--saiba-mais-link">
                <a href="/pages/psicologos.html">Venha Conhecê-los</a>
                <img class="img--logo-side" src="/images/Psychologist-rafiki.png" alt="">
            </div>
        </div>

        <div class="slider">
            <div class="slider--controls">
                <div class="slider--control" onclick="goPrev()"></div>
                <div class="slider--control" onclick="goNext()"></div>
            </div>
            <div class="slider--width">
                <div class="slider--item">
                    <h2>Escolha o serviço que preferir</h2>
                    <p>
                        Seja por chat ou por video chamada, Happy Mind
                            proporciona um otimo atendimento
                    </p>
                </div>
                <div class="slider--item">
                    <h2>Encontre o Psicólogo ideal para você</h2>
                    <p>
                        Em Happy Mind, você tem acesso a profissionais
                            qualificados independente da distância. Faça a
                            pesquisa e use filtros para encontrar o Psicólogos
                            mais adequados para sua necessidade.
                    </p>
                </div>
                <div class="slider--item">
                    <h2>Agende sua consulta</h2>
                    <p>
                        Escolha o melhor horário para sua consulta. Após
                            realizar o pagamento, o horário do Psicólogo
                            estará totalmente disponível para você.
                    </p>

                </div>
                <div class="slider--item">
                    <h2>Faça sua consulta</h2>
                    <p>
                        Agora é a hora de aproveitar,
                            faça seu agendamento online e cuide de sua saúde mental.
                    </p>
                </div>
            </div>
        </div>

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
    <script>
        /***** SLIDE SHOW *****/
        let totalSlides = document.querySelectorAll('.slider--item').length;
        let currentSlide = 0;

        let sliderWidth = document.querySelector('.slider').clientWidth;

        document.querySelector('.slider--width').style.width =
            `${sliderWidth * totalSlides}px`;

        document.querySelector('.slider--controls').style.width =
            `${sliderWidth}px`;
        document.querySelector('.slider--controls').style.height =
            `${document.querySelector('.slider').clientHeight}px`;

        function goPrev() {
            currentSlide--;
            if (currentSlide < 0) {
                currentSlide = totalSlides - 1;
            }
            updateMargin();
        }
        function goNext() {
            currentSlide++;
            if (currentSlide > (totalSlides - 1)) {
                currentSlide = 0;
            }
            updateMargin();
        }

        function updateMargin() {
            let sliderItemWidth = document.querySelector('.slider--item').clientWidth;
            let newMargin = (currentSlide * sliderItemWidth);
            document.querySelector('.slider--width').style.marginLeft =
                `-${newMargin}px`;
        }

        setInterval(goNext, 5000);
    </script>
</body>

</html>
