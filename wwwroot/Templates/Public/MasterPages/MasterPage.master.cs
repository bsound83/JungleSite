/*
Copyright (c) 2007 EPiServer AB.  All rights reserved.

This code is released by EPiServer AB under the Source Code File - Specific License Conditions, published in 20 August 2007. 
See http://www.episerver.com/Specific_License_Conditions for details. 
*/

using System;
using EPiServer.Core;
using EPiServer.Globalization;

namespace EPiServer.Templates.Public.MasterPages
{
    /// <summary>
    /// The masterpage defines the common look and feel and a standard behavior of the website. 
    /// </summary>
    public partial class MasterPage : System.Web.UI.MasterPage
    {
		private const string _title = "{0}{1}{2}";
		private string _titleSeparator = " - ";

        /// <summary>
        /// Gets or sets the title separator.
        /// </summary>
		public string TitleSeparator
		{
			get { return _titleSeparator; }
			set { _titleSeparator = value; }
		}

        protected override void OnLoad(System.EventArgs e)
        {
            base.OnLoad(e);

            if (SubMenu != null && MainMenu != null)
            {
                SubMenu.MenuList = MainMenu.MenuList;
            }
			PageBase page = (PageBase) Page;
            Page.Title = string.Format(_title, page.CurrentPage.Property["PageName"].ToWebString(), TitleSeparator, Configuration.Settings.Instance.SiteDisplayName);

            this.HtmlElement.Attributes["lang"] = page.CurrentPage.LanguageBranch;
        }

    }
}