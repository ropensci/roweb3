  var _paq = window._paq = window._paq || [];
  /* tracker methods like "setCustomDimension" should be called before "trackPageView" */
  _paq.push(["setDocumentTitle", document.domain + "/" + document.title]);
  _paq.push(["setCookieDomain", "*.ropensci.org"]);
  _paq.push(["setDomains", ["*.ropensci.org"]]);
  _paq.push(['trackPageView']);
  _paq.push(['enableLinkTracking']);
  (function() {
    var u="https://ropensci.matomo.cloud/";
    _paq.push(['setTrackerUrl', u+'matomo.php']);
    _paq.push(['setSiteId', '1']);
    var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
    g.type='text/javascript'; g.async=true; g.src='//cdn.matomo.cloud/ropensci.matomo.cloud/matomo.js'; s.parentNode.insertBefore(g,s);
  })();
  window.addEventListener('load', function () {
    window.cookieconsent.initialise({
        'palette': {
            'popup': {
                'background': '#427fd4'
            },
            'button': {
                'background': '#fff',
                'text': '#071159'
            }
        },
        'content': {
            'header': 'Cookies used on the website!',
            'message': 'We use Matomo to analyze traffic. Cookies are stored on your browser for 13 months. This data is only processed by us.',
            'dismiss': 'Got it!',
            'allow': 'Accept',
            'deny': 'Decline',
            'link': 'Privacy policy',
            'href': 'https://ropensci.org/privacy',
            'close': '&#x274c;',
            'policy': 'Privacy Policy',
            'target': '_blank',
        },
        'type': 'opt-in',
        onInitialise: function (status) {
            var type = this.options.type
            var didConsent = this.hasConsented()
            if (type === 'opt-in' && didConsent) {
                // enable cookies
                _paq.push(['rememberCookieConsentGiven']);
            }
            if (type == 'opt-out' && !didConsent) {
                // disable cookies
                _paq.push(['forgetCookieConsentGiven']);
            }
        },

        onStatusChange: function (status, chosenBefore) {
            var type = this.options.type
            var didConsent = this.hasConsented()
            if (type === 'opt-in' && didConsent) {
                // enable cookies
                _paq.push(['rememberCookieConsentGiven']);
            }
            if (type == 'opt-out' && !didConsent) {
                // disable cookies
                _paq.push(['forgetCookieConsentGiven'], 24);
            }
        },

        onRevokeChoice: function () {
            var type = this.options.type
            if (type === 'opt-in') {
                // disable cookies
                _paq.push(['forgetCookieConsentGiven']);
            }
            if (type == 'opt-out' && !didConsent) {
                // disable cookies
                _paq.push(['forgetCookieConsentGiven'], 24);
            }
        }
    })
})