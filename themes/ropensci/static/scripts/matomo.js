var _paq = window._paq = window._paq || [];
/* tracker methods like "setCustomDimension" should be called before "trackPageView" */
_paq.push(["setDocumentTitle", document.domain + "/" + document.title]);
_paq.push(["setCookieDomain", "*.ropensci.org"]);
_paq.push(["setDomains", ["*.ropensci.org"]]);
_paq.push(['trackPageView']);
_paq.push(['requireCookieConsent']);
_paq.push(['enableLinkTracking']);
(function() {
var u="https://ropensci.matomo.cloud/";
_paq.push(['setTrackerUrl', u+'matomo.php']);
_paq.push(['setSiteId', location.hostname == 'docs.ropensci.org' ? '3' : '1']);
var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
g.type='text/javascript'; g.async=true; g.src='//cdn.matomo.cloud/ropensci.matomo.cloud/matomo.js'; s.parentNode.insertBefore(g,s);
})();
window.addEventListener('load', function () {
    CookieConsent.run({

    categories: {
        analytics: {
            enabled: true
        }
    },

    guiOptions: {
        consentModal: {
            layout: 'cloud inline'
        },
        preferencesModal: {
            layout: 'box'
        }
    },

    onConsent: ({cookie}) => {
        if(cookie.categories.includes('analytics')){
            _paq.push(['rememberCookieConsentGiven']);
        }
    },

    onChange: ({cookie, changedCategories, changedPreferences}) => {
        if(changedCategories.includes('analytics')){
            if(CookieConsent.acceptedCategory('analytics')){
                _paq.push(['rememberCookieConsentGiven']);
            } else{
                _paq.push(['forgetCookieConsentGiven']);
            }
        }
    },

    language: {
        default: 'en',
        translations: {
            en: {
                consentModal: {
                    title: 'Cookies used on the website!',
                    description: 'We use Matomo to analyze traffic. Cookies are stored on your browser for 13 months. This data is only processed by us.',
                    acceptAllBtn: 'Accept all',
                    acceptNecessaryBtn: 'Reject all',
                    showPreferencesBtn: 'Manage preferences'
                },
                preferencesModal: {
                    title: 'Manage cookie preferences',
                    acceptAllBtn: 'Accept all',
                    acceptNecessaryBtn: 'Reject all',
                    savePreferencesBtn: 'Accept current selection',
                    closeIconLabel: 'Close modal',
                    sections: [
                        {
                            title: 'Performance and Analytics',
                            description: 'We use Matomo to analyze traffic. Cookies are stored on your browser for 13 months. This data is only processed by us.',
                            linkedCategory: 'analytics'
                        },
                        {
                            title: 'More information',
                            description: 'For any queries in relation to policy on cookies, please consult our <a href="https://ropensci.org/privacy">privacy policy</a>'
                        }
                    ]
                }
            }
        }
    }});
    $('#cookielink').click(function(e){
        e.preventDefault();
        CookieConsent.show(true);
    })

})