<%@ Control Language="C#" EnableViewState="false" AutoEventWireup="False" CodeBehind="MainMenu.ascx.cs" Inherits="EPiServer.Templates.Public.Units.Static.MainMenu" %>
<EPiServer:MenuList runat="server" id="Menu">
	<HeaderTemplate>
		<ul id="MainMenu">
	</HeaderTemplate>
	<ItemTemplate>
			<li class="unselected"><EPiServer:Property PropertyName="PageLink" runat="server" /></li>
	</ItemTemplate>
	<SelectedTemplate>
			<li class="selected"><EPiServer:Property runat="server" PropertyName="PageLink" /></li>
	</SelectedTemplate>
	<FooterTemplate>
		</ul>
	</FooterTemplate>
</EPiServer:MenuList>