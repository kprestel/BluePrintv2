<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentEvalPage2.aspx.cs" Inherits="StudentEvalPage2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table>
            <tr><th>Student Evaluation</th></tr>
        <tr><td>What are the students stregth's</td></tr>
        <tr><td>Your Answer</td></tr>
        <tr><td><asp:TextBox ID="txtStrengths" runat="server" name="txtStrengths"></asp:TextBox></td></tr>
        <tr><td>What are the student's areas for growth and improvement?</td></tr>
        <tr><td>Your Answer</td></tr>
        <tr><td><asp:TextBox ID="txtImprovements" runat="server" name="txtImprovements"></asp:TextBox></td></tr>
        <tr><td>Is there anything else you would like to comment on?</td></tr>
        <tr><td>Your Answer</td></tr>
        <tr><td><asp:TextBox ID="txtComments" runat="server" name="txtComments"></asp:TextBox></td></tr>
        <tr><td>Use the graph below to rate your student's ability in the following areas. 
            (If you are having probelms reading the picture, use 'command' and '+' on the keyboard to zoom in & 'command' and '-' to zoom out)</td></tr>
             <tr><td>Recognition Score <asp:DropDownList ID="ddRecognitionScore" runat="server" name="ddRecognitionScore">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList></td></tr>
        <tr><td>I have a comprehesive knowledge of contributing genres to the field & knowledge of various 
            sub-genres such as disco, funk, electro, crunk, etc. (thinks outside of the box) (5 points)</td></tr>
        <tr><td>I'm able to recognize music from established genres such as soul/R&B, jazz, reggae, go-go, 
            rock, etc. Awareness of sub-genres (3-4 points)</td></tr>
        <tr><td>I can recognize the primary poineers: Kool Herc, Arika Babaataa, Grandmaster Flash,
             GrandWizzard Theordore; Knowledge of the DJs' postions as the foundation in hip-hop culture (2 points)</td></tr>
        <tr><td>I demonstrate basic knowledge of who/where/why/when DJing originated (1 point)</td></tr>
        <tr><td>I have no concept of how/why/where DJing originated (0 points)</td></tr>
        <tr><td>Technology Score <asp:DropDownList ID="ddTechScore" runat="server" name="ddTechScore">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
            </asp:DropDownList></td></tr>
        <tr><td>I'm able to plan and assemble elements for creating mixtapes; utilizing software programs such as Protocols or Garage Band to record, arrange, and edit mixtape (9-10 points)</td></tr>
        <tr><td>I can demonstrate basic production or 'beat-making' skills (programming sounds from a drum machine, a beat machine, or a computer program to create an orginial beat (7-8 points)</td></tr>
        <tr><td>I'm able to use software programs to edit music and record mixes (5-6 points)</td></tr>
        <tr><td>I'm able to identify and assemble DJ set-up (turntables, needles, mixer, slipmats, speakers, stands, serato, mics, wires) (3-4 points)</td></tr>
        <tr><td>I have a basic understanding of how records are played (0-2 points)</td></tr>
    <tr><td>Mixing Score <asp:DropDownList ID="ddMixingScore" runat="server" name="ddMixingScore">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
            </asp:DropDownList></td></tr> 
        <tr><td>I can demonstrate mixing and blending music acorss various genres (i.e. house, disco, electro, crunk, funk, hip-hop, pop, etc.) (13- 15 points)</td></tr> 
        <tr><td>I'mable to beat-match & blend music song to song; ability to blend mustic with acappellas to make new mixes, generally called 'blends', sometimes erroneously called 'mash-ups' (9-12 points)</td></tr>
        <tr><td>I'm able to recognize obvious differences between tempos of songs (6-8 points)</td></tr>
        <tr><td>I have an understanding of rhytm, timing, counting, beats, bars, and measures (ex: 4/4 beasts in urban music (3-5 points)</td></tr>
        <tr><td>I have little or no clear definition of rhythm (0-2 points)</td></tr>
        <tr><td>Scratching Score <asp:DropDownList ID="ddScratchingScore" runat="server" name="ddScratchingScore">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
             </asp:DropDownList></td></tr> 
        <tr><td>I demonstrate more advacned styles of mixing and scratching (i.e.: flare, crab, orbit scratches, complex beat-juggling, visual body and turntable tricks) (13-15 points)</td></tr>
        <tr><td>I can demonstrate scratches and mixing with more complexity and basic mixing tricks such as doubling or 'chasing', basic beat-juggling) (9-12 points)</td></tr>
        <tr><td>I can demonstrate basic scratches, beat-matching (6-8 points)</td></tr>
        <tr><td>I have basic recognition of techniques such as backspinning and cue-ing, for foundation of seamless mixing (3-5 points)</td></tr>
        <tr><td>I have little or no clear ending to a set (0-2 points)</td></tr>
        <tr><td>Professional Score <asp:DropDownList ID="ddProfessionalScore" runat="server" name="ddProfessionalScore">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
             </asp:DropDownList></td></tr> 
        <tr><td>I'm able to write, tailor, edit, and issue contracts for business agreements in work-for-hire, intellectual property licensing or intellectual property collaborations (9-10 points)</td></tr>
        <tr><td>I understand of business necessities such as legal contracts for work-for-hire oppurtunities ('gigs') (7-8 points)</td></tr>
        <tr><td>I understand the importance or networking, marketing, and promoting oneself or one's self-produced events (5-6 points)</td></tr>
        <tr><td>I'm able to archive and organize music (records, mp3s) (3-4 points)</td></tr>  
        <tr><td>I have littel or no clear ending to a set (0-2 points)</td></tr>
        <tr><td>Presentation Score <asp:DropDownList ID="ddPresentationScore" runat="server" name="ddPresentationScore">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>17</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
                <asp:ListItem>19</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
                <asp:ListItem>21</asp:ListItem>
                <asp:ListItem>22</asp:ListItem>
                <asp:ListItem>23</asp:ListItem>
                <asp:ListItem>24</asp:ListItem>
                <asp:ListItem>25</asp:ListItem>
                <asp:ListItem>26</asp:ListItem>
                <asp:ListItem>27</asp:ListItem>
                <asp:ListItem>28</asp:ListItem>
                <asp:ListItem>29</asp:ListItem>
                <asp:ListItem>30</asp:ListItem>
                <asp:ListItem>31</asp:ListItem>
                <asp:ListItem>32</asp:ListItem>
                <asp:ListItem>33</asp:ListItem>
                <asp:ListItem>34</asp:ListItem>
                <asp:ListItem>35</asp:ListItem>
             </asp:DropDownList></td></tr> 
        <tr><td>I can demonstrate confident production skills (programming beats, samping, making remixes and working with artists to create music) & demonstrate organizaiton & promotion of my own event featuring myself as DJ/talent; (28-35 points)</td></tr>
        <tr><td>I can execute a full live DJ set (i.e.: for party, special event such as B-Boy function or fashion show, or special mix) (21-27 points)</td></tr>
        <tr><td>I'm able to perfrom live as a DJ in conjunction with other artists (i.e.: for MCs to rap, dancers to perform) (13-20 points)</td></tr>
        <tr><td>I can execute a DJ set( a succession of songs mixed together such as party set or 'mixshow' style) (6-12 points)</td></tr>
        <tr><td>I am able to play records on turntables (0-5 points)</td></tr>  
    </table>
        <asp:Button ID="Button2" runat="server" Text="Back" OnClick="Back_Click"/><asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Submit_Click"/>
    </div>
    </form>
</body>
</html>
