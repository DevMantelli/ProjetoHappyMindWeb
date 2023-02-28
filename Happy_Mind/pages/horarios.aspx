<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="horarios.aspx.cs" Inherits="Happy_Mind.pages.horarios" %>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>Horarios</title>
    <style>
        body {
            width: 250px;
            margin: 0 auto;
        }

            body::-webkit-scrollbar {
                background-color: hsl(260, 18%, 10%);
            }

            body::-webkit-scrollbar-thumb {
                background-color: rgba(255, 255, 255, 0.050);
            }

        table.horario {
            width: 100%;
            border: 1px solid black;
            border-collapse: collapse;
            width: 250px;
            font-family: sans-serif;
        }

            table.horario tr {
                border: 1px solid black;
            }

            table.horario td,
            table.horario th {
                border: 1px solid black;
                cursor: pointer;
            }

            table.horario th {
                text-align: center;
                padding: 15px;
            }

            table.horario thead th,
            table.horario tbody th {
                background-color: hsl(260, 18%, 10%);
                color: #9b98e7;
                font-weight: normal;
                padding: 5px;
                border: none;
            }

            table.horario tr:nth-child(even) {
                background-color: #9f9de0;
            }

            table.horario tr:nth-child(odd) {
                background-color: #8f8ce9;
            }

            table.horario p {
                display: inline;
                text-align: center;
            }

                table.horario p.disp {
                    color: rgb(0, 235, 0);
                }

                table.horario p.indisp {
                    color: red;
                }

        td:hover {
            background-color: rgba(255, 255, 255, 0.6);
        }

        .active {
            background-color: rgba(255, 255, 255, 0.6);
            border: none;
            width: 100%;
            height: 100%;
            padding: 15px;
            color: hsl(260, 18%, 10%);
            font-weight: bold;
        }

        .horario td {
            display: flex;
        }

        .hora {
            background-color: transparent;
            border: none;
            width: 100%;
            height: 100%;
            padding: 15px;
            color: hsl(260, 18%, 10%);
            font-weight: bold;
        }
    </style>
</head>

<body>
    <form runat="server">
        <table class="horario">
            <thead>
                <tr>
                    <th>Horários</th>
                    <th>Disponibilidade</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th>00:00</th>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Disponivel" CssClass="hora"
                            OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <th>01:00</th>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Disponivel" CssClass="hora"
                            OnClick="Button2_Click" />
                    </td>
                </tr>
                <tr>
                    <th>02:00</th>
                    <td>
                        <asp:Button ID="Button3" runat="server" Text="Disponivel" CssClass="hora"
                            OnClick="Button3_Click" />
                    </td>
                </tr>
                <tr>
                    <th>03:00</th>
                    <td>
                        <asp:Button ID="Button4" runat="server" Text="Disponivel" CssClass="hora"
                            OnClick="Button4_Click" />
                    </td>
                </tr>
                <tr>
                    <th>04:00</th>
                    <td>
                        <asp:Button ID="Button5" runat="server" Text="Disponivel" CssClass="hora"
                            OnClick="Button5_Click" />
                    </td>
                </tr>
                <tr>
                    <th>05:00</th>
                    <td>
                        <asp:Button ID="Button6" runat="server" Text="Disponivel" CssClass="hora"
                            OnClick="Button6_Click" />
                    </td>
                </tr>
                <tr>
                    <th>06:00</th>
                    <td>
                        <asp:Button ID="Button7" runat="server" Text="Disponivel" CssClass="hora"
                            OnClick="Button7_Click" />
                    </td>
                </tr>
                <tr>
                    <th>07:00</th>
                    <td>
                        <asp:Button ID="Button8" runat="server" Text="Disponivel" CssClass="hora"
                            OnClick="Button8_Click" />
                    </td>
                </tr>
                <tr>
                    <th>08:00</th>
                    <td>
                        <asp:Button ID="Button9" runat="server" Text="Disponivel" CssClass="hora"
                            OnClick="Button9_Click" />
                    </td>
                </tr>
                <tr>
                    <th>09:00</th>
                    <td>
                        <asp:Button ID="Button10" runat="server" Text="Disponivel" CssClass="hora"
                            OnClick="Button10_Click" />
                    </td>
                </tr>
                <tr>
                    <th>10:00</th>
                    <td>
                        <asp:Button ID="Button11" runat="server" Text="Disponivel" CssClass="hora"
                            OnClick="Button11_Click" />
                    </td>
                </tr>
                <tr>
                    <th>11:00</th>
                    <td>
                        <asp:Button ID="Button12" runat="server" Text="Disponivel" CssClass="hora"
                            OnClick="Button12_Click" />
                    </td>
                </tr>
                <tr>
                    <th>12:00</th>
                    <td>
                        <asp:Button ID="Button13" runat="server" Text="Disponivel" CssClass="hora"
                            OnClick="Button13_Click" />
                    </td>
                </tr>
                <tr>
                    <th>13:00</th>
                    <td>
                        <asp:Button ID="Button14" runat="server" Text="Disponivel" CssClass="hora"
                            OnClick="Button14_Click" />
                    </td>
                </tr>
                <tr>
                    <th>14:00</th>
                    <td>
                        <asp:Button ID="Button15" runat="server" Text="Disponivel" CssClass="hora"
                            OnClick="Button15_Click" />
                    </td>
                </tr>
                <tr>
                    <th>15:00</th>
                    <td>
                        <asp:Button ID="Button16" runat="server" Text="Disponivel" CssClass="hora"
                            OnClick="Button16_Click" />
                    </td>
                </tr>
                <tr>
                    <th>16:00</th>
                    <td>
                        <asp:Button ID="Button17" runat="server" Text="Disponivel" CssClass="hora"
                            OnClick="Button17_Click" />
                    </td>
                </tr>
                <tr>
                    <th>17:00</th>
                    <td>
                        <asp:Button ID="Button18" runat="server" Text="Disponivel" CssClass="hora"
                            OnClick="Button18_Click" />
                    </td>
                </tr>
                <tr>
                    <th>18:00</th>
                    <td>
                        <asp:Button ID="Button19" runat="server" Text="Disponivel" CssClass="hora"
                            OnClick="Button19_Click" />
                    </td>
                </tr>
                <tr>
                    <th>19:00</th>
                    <td>
                        <asp:Button ID="Button20" runat="server" Text="Disponivel" CssClass="hora"
                            OnClick="Button20_Click" />
                    </td>
                </tr>
                <tr>
                    <th>20:00</th>
                    <td>
                        <asp:Button ID="Button21" runat="server" Text="Disponivel" CssClass="hora"
                            OnClick="Button21_Click" />
                    </td>
                </tr>
                <tr>
                    <th>21:00</th>
                    <td>
                        <asp:Button ID="Button22" runat="server" Text="Disponivel" CssClass="hora"
                            OnClick="Button22_Click" />
                    </td>
                </tr>
                <tr>
                    <th>22:00</th>
                    <td>
                        <asp:Button ID="Button23" runat="server" Text="Disponivel" CssClass="hora"
                            OnClick="Button23_Click" />
                    </td>
                </tr>
                <tr>
                    <th>23:00</th>
                    <td>
                        <asp:Button ID="Button24" runat="server" Text="Disponivel" CssClass="hora"
                            OnClick="Button24_Click" />
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
