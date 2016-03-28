<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminHome" %>

<!DOCTYPE html>

<style type="text/css">
        html {background: url(https://upload.wikimedia.org/wikipedia/en/c/c9/Jay-z-the-blueprint.jpg);}
        #form1 {
          
           background-color: #000;
           font-family: Courier;
	       color: white;
	       font-size:20px;
            
        }
         </style>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #forecast_embed {
            width: 1505px;
        }
    </style>
</head>
   
<body>

    <form id="form1" runat="server">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Admin Dashboard
    <div>
        <asp:Button ID="ManageUsers" runat="server" Text="Manage Users" style="margin-left: 1px" Width="101px" OnClick="ManageUsers_Click" />
        <asp:Button ID="ManageCourses" runat="server" style="margin-left: 188px" Text="Manage Courses" Width="115px" OnClick="ManageCourses_Click" />
    </div>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="ManageEvents" runat="server" style="margin-left: 1px" Text="Manage Events" Width="112px" OnClick="ManageEvents_Click" />
            <asp:Button ID="ManageBucks" runat="server" style="margin-left: 174px" Text="Manage Bucks" Width="113px" OnClick="ManageBucks_Click" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="ManageCommunity" runat="server" style="margin-left: 0px" Text="Manage Community" Width="131px" OnClick="ManageCommunity_Click" />
            <asp:Button ID="ManageReports" runat="server" style="margin-left: 156px" Text="Manage Reports" Width="114px" OnClick="ManageReports_Click" />
        </p>
        
        
        
        
        
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="ManagePortfolios" runat="server" style="margin-left: 0px" Text="Manage Porfolios" Width="121px" OnClick="ManagePortfolios_Click" />
            <asp:Button ID="ManageEvaluations" runat="server" style="margin-left: 164px" Text="Manage Evaluations" Width="136px" OnClick="ManageEvalutions_Click" />
        </p>
        
        
        
        
        
    </form>
    <asp:Panel ID="Weather" runat="server" BackColor="#ffffff" >
            <iframe id="forecast_embed" height="246" src="http://forecast.io/embed/#lat=38.8899310&lon=-77.009003&name=Madison Dr NW, Washington, DC"></iframe>
        </asp:Panel>
    
     <!-- INTERESTING!!!!!!!!!!!!!!!!!!!!!!!!! TAKE THIS OUT ON THE FINAL ADMIN PAGE -->
    <!-- 1. The <iframe> (and video player) will replace this <div> tag. -->
    <div id="player"></div>

    <script>
        // 2. This code loads the IFrame Player API code asynchronously.
        var tag = document.createElement('script');

        tag.src = "https://www.youtube.com/iframe_api";
        var firstScriptTag = document.getElementsByTagName('script')[0];
        firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

        // 3. This function creates an <iframe> (and YouTube player)
        //    after the API code downloads.
        var player;
        function onYouTubeIframeAPIReady() {
            player = new YT.Player('player', {
                height: '390',
                width: '640',
                videoId: 'M7lc1UVf-VE',
                events: {
                    'onReady': onPlayerReady,
                    'onStateChange': onPlayerStateChange
                }
            });
        }

        // 4. The API will call this function when the video player is ready.
        function onPlayerReady(event) {
            event.target.playVideo();
        }

        // 5. The API calls this function when the player's state changes.
        //    The function indicates that when playing a video (state=1),
        //    the player should play for six seconds and then stop.
        var done = false;
        function onPlayerStateChange(event) {
            if (event.data == YT.PlayerState.PLAYING && !done) {
                setTimeout(stopVideo, 6000);
                done = true;
            }
        }
        function stopVideo() {
            player.stopVideo();
        }
    </script>

    
</body>
</html>
