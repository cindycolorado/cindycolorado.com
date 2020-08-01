## Ordering

Click below to direct funds to Cindy CONTINUE.**

{{ partial "paynow.html" . }}

Or, checks can be made out to **Cindy Colorado LLC** mailed to
the following address.

    846 Greenfield Court
    Fort Collins, CO 80524

{{ if isset .Page.Params "orderform" }}
{{ partial "orderform.html" . }}
{{ end }}
