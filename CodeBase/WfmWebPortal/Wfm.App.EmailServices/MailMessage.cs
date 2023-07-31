﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Wfm.App.Core.Model;

namespace Wfm.App.EmailServices
{
    public class MailMessage : Message
    {
        public override string CreateMessage(GatePassMetaData gatepass)
        {
            this.recieverAddress = gatepass.WORKFORCE.EMAIL_ID;
            this.senderAddress = "sumitkumarph@gmail.com";
            this.linkToQRCode = string.Format("http://localhost:1212/GatePassHandler/Generate?id={0}", gatepass.ID);

            string link = string.Format("Please click <a href='{0}'>here</a> to download you gate pass.", this.linkToQRCode);
            this.content = string.Format("<html><body>{0}</body></html>", link);

            return this.content;
        }
    }
}
