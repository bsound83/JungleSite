/*
Copyright (c) 2007 EPiServer AB.  All rights reserved.

This code is released by EPiServer AB under the Source Code File - Specific License Conditions, published in 20 August 2007. 
See http://www.episerver.com/Specific_License_Conditions for details. 
*/

using System;
using EPiServer.Core;
using System.Web.UI.HtmlControls;

namespace EPiServer.Templates
{
    /// <summary>
    /// The default start page
    /// </summary>
	public partial class Default : TemplatePage
	{

        protected override void OnLoad(System.EventArgs e)
        {
            base.OnLoad(e);
            
            string imageUrl = CurrentPage["Image"] as string;
            if (imageUrl != null)
            {
                FrontImage.Visible = true;
                FrontImage.Src = imageUrl;
            }
        }
	}

}
