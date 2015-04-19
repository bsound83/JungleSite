<%@ Page Language="C#" AutoEventWireup="False" Codebehind="Default.aspx.cs" MasterPageFile="~/Templates/Public/MasterPages/MasterPage.master" Inherits="EPiServer.Templates.Default"%>
<%@ Register TagPrefix="public" TagName="PageList"	Src="~/Templates/Public/Units/Placeable/PageList.ascx" %>
<%@ Register TagPrefix="public" TagName="DocumentList"	Src="~/Templates/Public/Units/Placeable/DocumentList.ascx" %>

<asp:Content ContentPlaceHolderID="MainRegion" runat="server">

	<div id="StageArea" class="StartPage">
	
		<div id="ImageArea">
			<img id="FrontImage" runat="server" visible="false" src="" alt="<%$ Resources: EPiServer,navigation.startpage %>" />
			<div id="SecondaryBodyArea">
				<EPiServer:Property runat="server" EnableViewState="false" PropertyName="SecondaryBody" />
			</div>
		</div>
		
		<div id="MainContentArea">
		
			<div id="MainBodyArea">
				<EPiServer:Property PropertyName="MainBody" EnableViewState="false" runat="server" />
			</div>
			
			<div id="NewsArea">
				<public:PageList
					PageLinkProperty="NewsRoot" 
					PreviewTextLength="50"
					SeeMoreText="<%$ Resources: EPiServer, news.morenews %>"
					MaxCountProperty="NewsCount"
					runat="server" />
			</div>
			
			<div id="EventsArea">
				<public:PageList runat="server" DateProperty="PageSaved" PageLinkProperty="EventsRoot" />
			</div>

		</div>
	</div>
</asp:Content>