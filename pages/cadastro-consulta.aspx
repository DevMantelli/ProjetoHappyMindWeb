<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="calendario.aspx.cs" Inherits="Happy_Mind.pages.calendario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="UTF-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Calendario</title>
  <link rel="stylesheet" type="text/css" href="../css/header.css" />
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Noto+Sans&display=swap');

    body {
      margin: 0 auto;
      background-color: #201b2c;
      font-family: 'Noto Sans', sans-serif;
    }

    main {
      padding: 100px 0 50px 0;
      background-color: #201b2c;
      display: flex;
      justify-content: center;
      align-items: center;
      flex-wrap: wrap;
    }
    #box-btn{
      width: 100%;
      display: flex;
      justify-content: center;
    }
    .btn-login {
      text-decoration: none;
      padding: 16px;
      margin-top: 20px;
      margin-bottom: 20px;
      border: none;
      border-radius: 8px;
      outline: none;
      text-transform: uppercase;
      font-weight: 800;
      letter-spacing: 3px;
      color: #2b134b;
      background: #21a5e2;
      box-shadow: 0px 10px 40px -12px #2793ec;
      cursor: pointer;
    }

    .btn-login:hover {
      color: white;
      font-size: 1.2rem;
      transition: 0.5s;
    }

    #calendar {
      width: 420px;
    }

    #calendar ul {
      list-style-type: none;
    }

    .month {
      box-sizing: border-box;
      padding: 70px 25px;
      background: hsl(260, 18%, 10%);
      text-align: center;
    }

    .month ul {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    .month ul li {
      box-sizing: border-box;
      color: #9b98e7;
      font-size: 20px;
      text-transform: uppercase;
      letter-spacing: 3px;
    }

    .month #prev {
      box-sizing: border-box;
      float: left;
      padding-top: 10px;
      cursor: pointer;
    }

    .month #next {
      box-sizing: border-box;
      float: right;
      padding-top: 10px;
      cursor: pointer;
    }

    .weekdays {
      box-sizing: border-box;
      display: flex;
      justify-content: center;
      margin: 0;
      padding: 10px 0;
      background-color: #9b98e7;
    }

    .weekdays li {
      box-sizing: border-box;
      display: inline-block;
      width: 12.5%;
      color: white;
      text-align: center;
    }

    .days {
      box-sizing: border-box;
      padding: 15px 5px 10px 30px;
      background: hsl(260, 18%, 10%);
      margin: 0;
    }

    .days li {
      box-sizing: border-box;
      list-style-type: none;
      display: inline-block;
      width: 12.5%;
      text-align: center;
      font-size: 12px;
      color: #9b98e7;
      padding: 5px;
    }

    .days li:hover {
      background: #9b98e7;
      color: white;
      cursor: pointer;
    }

    #calendar li.active {
      background: #9b98e7;
      color: white;
    }

    #frame {
      height: 500px;
      width: 268px;
      margin-left: 50px;
    }

    #voltar {
      position: absolute;
      left: 30px;
      margin-top: 15px;
      color: #1b8eec;
      text-decoration: none;
      font-size: 2em;
    }

    #voltar:hover {
      color: #ba18ec;
      transition: 1s;
    }

    @media screen and (min-width: 1100px) {
      #calendar {
        margin-right: 10%;
        width: 600px;
        height: 500px;
        font-size: 1.3rem;
      }
      .month #prev{
        font-size: 2rem;
      }
      .month #next{
        font-size: 2rem;
      }
      .month{
        padding-top: 90px;
        height: 250px;
      }
      .month li span{
        font-size: 2rem;
      }
      .weekdays{
        height: 50px;
      }
      .days{
        height: 200px;
        padding: 15px 5px 10px 40px;
      }
      .days li{
        font-size: 1.1rem;
      }
    }

    @media screen and (max-width: 740px) {
      main {
        padding: 80px 0 0 0;
      }

      #calendar {
        margin: 0 0 50px 0;
      }
    }

    @media screen and (max-width: 686px) {
      #frame {
        margin: 0 auto;
      }
    }

    @media screen and (max-width: 440px) {
      #calendar {
        width: 100%;
      }
      .days{
        height: 165px;
        padding: 15px 15px 10px 20px;
      }
    }
  </style>
</head>

<body>
  <a href="cadastro-consulta.html" id="voltar">Voltar</a>
  <main>
    <div id="calendar">
      <div class="month">
        <ul>
          <li id="prev" onclick="mesSub()">&#10094;</li>
          <li id="next" onclick="mesUp()">&#10095;</li>
          <li>
            <span id="mes">janeiro</span><br>
            <span style="font-size:18px" id="ano">2022</span>
          </li>
        </ul>
      </div>

      <ul class="weekdays">
        <li>Seg</li>
        <li>Ter</li>
        <li>Qua</li>
        <li>Qui</li>
        <li>Sex</li>
        <li>Sab</li>
        <li>Dom</li>
      </ul>

      <ul class="days">
        <li onclick="active('1')" id="d1">1</li>
        <li onclick="active('2')" id="d2">2</li>
        <li onclick="active('3')" id="d3">3</li>
        <li onclick="active('4')" id="d4">4</li>
        <li onclick="active('5')" id="d5">5</li>
        <li onclick="active('6')" id="d6">6</li>
        <li onclick="active('7')" id="d7">7</li>
        <li onclick="active('8')" id="d8">8</li>
        <li onclick="active('9')" id="d9">9</li>
        <li onclick="active('10')" id="d10">10</li>
        <li onclick="active('11')" id="d11">11</li>
        <li onclick="active('12')" id="d12">12</li>
        <li onclick="active('13')" id="d13">13</li>
        <li onclick="active('14')" id="d14">14</li>
        <li onclick="active('15')" id="d15">15</li>
        <li onclick="active('16')" id="d16">16</li>
        <li onclick="active('17')" id="d17">17</li>
        <li onclick="active('18')" id="d18">18</li>
        <li onclick="active('19')" id="d19">19</li>
        <li onclick="active('20')" id="d20">20</li>
        <li onclick="active('21')" id="d21">21</li>
        <li onclick="active('22')" id="d22">22</li>
        <li onclick="active('23')" id="d23">23</li>
        <li onclick="active('24')" id="d24">24</li>
        <li onclick="active('25')" id="d25">25</li>
        <li onclick="active('26')" id="d26">26</li>
        <li onclick="active('27')" id="d27">27</li>
        <li onclick="active('28')" id="d28">28</li>
        <li onclick="active('29')" id="d29">29</li>
        <li onclick="active('30')" id="d30">30</li>
        <li onclick="active('31')" id="d31">31</li>
      </ul>
    </div>
    <div>
      <iframe id="frame" frameborder="0"></iframe>
    </div>
  </main>
    <form runat="server">
  <div id="box-btn"><asp:LinkButton ID="LinkButton1" CssClass="btn-login" runat="server" OnClick="LinkButton1_Click">Marcar Consulta</asp:LinkButton></div>
    </form>
  <script src="../js/calendar.js"></script>
</body>

</html>