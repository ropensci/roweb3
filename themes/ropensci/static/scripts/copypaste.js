  if(ClipboardJS.isSupported()) {
    $(document).ready(function() {
    
      // Initialize tooltips:
      $('.btn-copy-ex').tooltip({container: 'body'});

      // Initialize clipboard:
      var clipboard = new ClipboardJS('[data-clipboard-text]', {
        text: function(trigger) {
          return trigger.parentNode.textContent;
        }
      });

      clipboard.on('success', function(e) {
        changeTooltipMessage(e.trigger, 'Copied!');
        e.clearSelection();
      });

      clipboard.on('error', function() {
        changeTooltipMessage(e.trigger,'Press Ctrl+C or Command+C to copy');
      });

    });
  }
